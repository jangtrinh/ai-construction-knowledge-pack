# Đi sâu: OCR, đọc và phân tích khối lượng vật tư, thuật toán trong proposal

Ngày: 31/10/2026 · Bổ sung cho `advisory-261031-0821-cc1-ai-core-platform.md` · Trạng thái: brainstorm, chưa xuất bản.

Bối cảnh đã chốt: lõi phục vụ toàn tập đoàn ngay; hạ tầng kết hợp; đội lõi 8–9 người.

## 1. OCR và đọc hồ sơ

### 1.1. Không phải tài liệu nào cũng cần OCR

| Loại tài liệu | Cách đọc đúng | Ghi chú |
|---|---|---|
| Hóa đơn điện tử | Đọc file XML gốc | Đã có cấu trúc; OCR bản in là phí công và sinh lỗi |
| BOQ, dự toán Excel | Đọc ô trực tiếp (openpyxl) | Khó ở mẫu biểu, không ở chữ |
| Bản vẽ DWG/DXF | Đọc thực thể vector: text, block, layer, kích thước (ezdxf; DWG qua bộ chuyển ODA) | Không chụp ảnh rồi OCR |
| Mô hình BIM (IFC) | Đọc thuộc tính và bộ khối lượng `Qto_*` | Khối lượng thiết kế lấy ở đây |
| PDF có lớp chữ | Trích chữ + cấu trúc trang (Docling, Marker) | Kiểm tra lớp chữ trước khi OCR |
| Scan: biên bản, nhật ký, phiếu cân giấy | OCR + hiểu bố cục + trích trường | Phần khó nhất |
| Bản vẽ scan | Nhận diện ký hiệu + OCR số kích thước | Chỉ làm khi không còn bản vector |

Quy tắc: **đi từ nguồn có cấu trúc nhất**. OCR là đường cuối.

### 1.2. Quy trình cho tài liệu scan

1. **Tiền xử lý:** chỉnh nghiêng, khử nhiễu, tách dấu đỏ bằng lọc kênh màu (HSV) trước khi OCR để con dấu không đè chữ.
2. **Phân vùng bố cục:** tiêu đề, bảng, đoạn, chữ ký, con dấu (PP-Structure, DocLayout-YOLO hoặc Docling).
3. **Nhận dạng chữ tiếng Việt:**
   - chữ in: PaddleOCR (hỗ trợ tiếng Việt) hoặc Surya;
   - dòng chữ viết tay, chữ mờ: VietOCR (transformer, huấn luyện riêng cho tiếng Việt).
4. **Cấu trúc bảng:** Table Transformer hoặc PP-Structure → ra hàng, cột, ô gộp.
5. **Trích trường theo lược đồ:** mô hình thị giác–ngôn ngữ mở (họ Qwen-VL, Vintern cho tiếng Việt) đọc ảnh + chữ OCR, trả JSON theo lược đồ cố định. Ví dụ biên bản nghiệm thu gồm: hạng mục, vị trí/lý trình, khối lượng, đơn vị, ngày, các bên ký.
6. **Kiểm tra chéo:** hai đường (OCR cổ điển và mô hình thị giác) cho cùng trường. Khớp thì qua, lệch thì đưa người duyệt.
7. **Hàng chờ duyệt theo độ tin cậy:** trường nào dưới ngưỡng thì người xác nhận. Mỗi lần xác nhận thành mẫu huấn luyện LoRA.

Con dấu và chữ ký chỉ kiểm tra **có hay không, đúng vị trí**. Không xác thực chữ ký bằng AI.

### 1.3. Bẫy riêng của hồ sơ Việt Nam

| Bẫy | Hậu quả | Cách xử lý |
|---|---|---|
| File Word/Excel cũ dùng bảng mã TCVN3 (.VnTime) hoặc VNI | Chữ ra ký tự rác, tìm kiếm không thấy | Nhận diện bảng mã và chuyển sang Unicode trước khi nạp |
| Unicode dựng sẵn (NFC) và tổ hợp (NFD) lẫn lộn | "nghiệm thu" ở hai dạng không khớp nhau | Chuẩn hóa NFC toàn bộ |
| Đơn vị viết nhiều kiểu: m3, m³, M3, khối | Cộng sai khối lượng | Bộ chuẩn hóa đơn vị dùng chung |
| Số thập phân dấu phẩy và dấu chấm | 1.250 là một nghìn hai trăm năm mươi hay một phẩy hai lăm | Suy theo ngữ cảnh cột + kiểm tra phạm vi hợp lý |
| Lý trình viết Km12+400, K12+400, Km 12 + 400 | Không nối được với đoạn tuyến | Bộ phân tích lý trình chuẩn hóa về mét |

### 1.4. Đo chất lượng

- Tỷ lệ lỗi ký tự (CER) cho tiếng Việt có dấu, đo riêng chữ in và viết tay.
- Độ chính xác theo trường (field accuracy) cho từng loại biểu mẫu.
- Tỷ lệ đi thẳng (không cần người duyệt): mục tiêu tăng dần, không ép.
- Bộ mẫu thử: 200 trang thật mỗi loại biểu mẫu, giữ cố định.

## 2. Đọc và phân tích khối lượng vật tư

### 2.1. Sáu nguồn khối lượng phải khớp nhau

Sơ đồ: `plans/reports/advisory-261031-quantity-reconciliation.png`

| # | Nguồn | Lấy từ | Touchpoint |
|---|---|---|---|
| 1 | Thiết kế | BIM (`Qto_*`), bản vẽ, mặt cắt ngang tuyến | 2.2, 2.4 |
| 2 | Dự toán / BOQ | Excel, phần mềm dự toán, mã định mức | — |
| 3 | Nhập về | Trạm cân, quét LiDAR thùng xe, phiếu điện tử, hóa đơn điện tử | 1.4, 2.1, L3 |
| 4 | Thi công thực tế | Drone/LiDAR so với BIM, máy xúc dẫn đường, lu thông minh, số xe bồn | 1.3, 2.3, 3.1, L6 |
| 5 | Nghiệm thu | Biên bản (OCR ở mục 1) | 2.4, L8 |
| 6 | Thanh toán | ERP, hợp đồng | 4.2 |

Thêm một nguồn lý thuyết: **vật tư theo định mức = khối lượng công việc × định mức hao phí**. Đây là mức "đáng lẽ phải dùng".

Câu hỏi lõi phải trả lời được cho mọi hạng mục: "Thiết kế bao nhiêu, nhập bao nhiêu, đổ/lắp bao nhiêu, nghiệm thu bao nhiêu, đã trả bao nhiêu, và chênh lệch nằm ở đâu?"

### 2.2. Ánh xạ dòng BOQ về cấu kiện

Đây là điểm nghẽn thật: mỗi dự án một mẫu BOQ, tên công việc viết tự do.

1. Chuẩn hóa chữ: NFC, bỏ ký tự thừa, tách đơn vị, tách kích thước ("bê tông cột M300 đá 1x2").
2. Gợi ý mã định mức và nhóm cấu kiện bằng:
   - luật (từ khóa, đơn vị phải khớp);
   - độ tương đồng embedding;
   - LLM xác minh.
3. Kỹ sư QS xác nhận. Xác nhận được lưu lại để lần sau tự động.
4. Liên kết dòng BOQ ↔ nhóm cấu kiện BIM (theo loại, tầng, trục) hoặc ↔ đoạn lý trình (công trường tuyến).

Không để LLM tự quyết mã định mức. LLM chỉ gợi ý và xếp hạng.

### 2.3. Thuật toán đo khối lượng thực tế

| Bài toán | Thuật toán | Đầu ra |
|---|---|---|
| Khối lượng đào đắp nền đường | Hiệu hai mô hình địa hình (DTM trước và sau, TIN–TIN); đối chiếu phương pháp mặt cắt trung bình theo lý trình | m³ đào/đắp theo đoạn Km |
| Tiến độ kết cấu từ drone/LiDAR | Định vị theo RTK, ghép đám mây điểm (ICP), lọc mặt đất (CSF), đo khoảng cách đám mây–mô hình BIM (C2M) | % hoàn thành từng cấu kiện, bản đồ lệch |
| Thể tích vật tư trên thùng xe | Quét thùng rỗng và đầy, lấy hiệu bản đồ độ cao rồi tích phân | m³ thực chở |
| Kiểm tra gian lận vật tư rời | Tỷ trọng = khối lượng cân / thể tích quét; so với dải chuẩn của vật liệu | Cờ: cát ướt, chở thiếu, độn tạp chất |
| Bãi tập kết (cát, đá) | Đo thể tích đống từ drone, so với sổ kho | Tồn kho thực |
| Bê tông | Số xe bồn × m³/xe (phiếu điện tử) so với thể tích cấu kiện BIM | Hao hụt bê tông |
| Thép | Khối lượng cân nhập so với bảng thống kê thép thiết kế + định mức hao hụt | Hao hụt thép |

### 2.4. Phát hiện bất thường

- **Luật cứng:** chênh lệch vượt định mức hao hụt → cảnh báo ngay.
- **Thống kê:** z-score bền (median, MAD) theo từng vật tư, từng dự án, từng nhà cung cấp → phát hiện lô lệch.
- **Theo thời gian:** đường cong tiêu thụ vật tư so với đường cong tiến độ (S-curve). Vật tư tăng mà tiến độ đứng là dấu hiệu thất thoát.
- **Giá trị thu được (EVM):** khối lượng thực tế × đơn giá → PV, EV, AC, SPI, CPI cho từng gói thầu.

Mỗi cảnh báo kèm bằng chứng: phiếu cân, ảnh, đoạn point cloud, dòng BOQ. Không có bằng chứng thì không cảnh báo.

## 3. Thuật toán trong proposal: kiểm kê và độ chín

Mức độ chín:

- **Phổ biến:** đã triển khai đại trà, mua được.
- **Thí điểm:** đã có dự án thật trên thế giới, chưa đại trà.
- **Nghiên cứu:** chạy được trong phòng thí nghiệm, rủi ro cao ở công trường Việt Nam.

### 3.1. Công trường khép kín

| TP | Thuật toán chính | Độ chín | Ghi chú thẳng |
|---|---|---|---|
| 1.1 | Nhận diện khuôn mặt (ArcFace) + chống giả mạo; phát hiện PPE (YOLO) | Phổ biến | Cần đồng ý theo Luật 91/2025 |
| 1.2 | Phát hiện đối tượng + tư thế + bám vết (ByteTrack); lọc báo giả theo thời gian | Phổ biến | Báo giả là vấn đề chính, cần tinh chỉnh theo từng công trường |
| 1.3 | Dựng ảnh 3D (SfM–MVS: COLMAP, OpenDroneMap), RTK, so với BIM | Phổ biến | Cần BIM sạch, đúng tọa độ |
| 1.4 | Nhận dạng biển số Việt Nam (1 dòng và 2 dòng) | Phổ biến | Biển bẩn, bùn: cần camera đặt đúng góc |
| 1.5 | ReID ngoại hình (OSNet/TransReID), dáng đi, khung xương 3D, định vị UWB, hợp nhất bằng lọc Kalman + ghép Hungarian | Nghiên cứu → thí điểm | Công nhân mặc đồng phục và mũ giống nhau làm ReID ngoại hình yếu đi; chip UWB mới là nguồn định danh tin cậy, thị giác chỉ bổ trợ |
| 2.1 | Thể tích LiDAR + cân + tỷ trọng | Thí điểm | Hiệu chuẩn thùng xe theo loại xe |
| 2.2 | Robot in sàn định vị bằng máy toàn đạc | Thí điểm (có sản phẩm thương mại) | Mua, không tự làm |
| 2.3 | Dẫn hướng máy xúc GNSS RTK + IMU so với mặt thiết kế | Phổ biến | Mua bộ thiết bị hãng |
| 2.4 | AR: SLAM (LiDAR trên máy tính bảng), đăng ký mô hình BIM | Thí điểm | Sai số đăng ký là rủi ro chính |
| 3.1 | Robot bốn chân: SLAM LiDAR (FAST-LIO, LIO-SAM), ảnh nhiệt | Thí điểm | Thuê/mua nền tảng robot, CC1 làm phần phân tích |
| 3.2 | Khung xương trợ lực (thiết bị) | Thí điểm | Không phải bài toán AI |
| 3.3 | Máy tự hành: lập đường phủ kín, tránh va chạm nhiều xe | Nghiên cứu ở Việt Nam | Hoãn đến khi có đối tác hãng máy |
| 3.4 | Chống lắc tải (input shaping, MPC), phát hiện người dưới tải | Thí điểm | Phần phát hiện người làm được sớm; điều khiển cẩu phải qua hãng cẩu |
| 3.5 | Tác tử LLM + đường găng (CPM) + bộ giải lập lịch (OR-Tools CP-SAT/MILP) | Thí điểm | Bộ giải quyết định, LLM chỉ diễn giải và đề xuất |
| 4.1–4.2 | Nhà máy vi mô, hợp đồng thông minh | Tầm nhìn | Không đưa vào lõi năm 1–2 |

### 3.2. Công trường tuyến

| TP | Thuật toán chính | Độ chín | Ghi chú thẳng |
|---|---|---|---|
| L1 | Phát hiện biển báo, rào chắn; đối chiếu danh mục QCVN 41:2024 theo phương án | Thí điểm | Danh mục số hóa là phần chính, AI chỉ kiểm |
| L2 | Hàng rào định vị theo đoạn Km; điểm danh QR/NFC | Phổ biến | Không cần AI |
| L3 | Kiểm tra điểm trong đa giác (geofence), phiếu điện tử | Phổ biến | Không cần AI |
| L4 | Bám vết radar + tính thời gian tới va chạm (TTC) | Thí điểm | Báo giả do xe máy lách là rủi ro lớn ở Việt Nam |
| L5 | Tham chiếu tuyến tính: chiếu GPS lên tim tuyến → lý trình + độ lệch; biểu đồ thời gian–lý trình | Phổ biến | Là xương sống dữ liệu tuyến |
| L6 | Lu thông minh (chỉ số CMV từ gia tốc kế trống lu), dải nhiệt thảm nhựa | Phổ biến ở nước ngoài | Dữ liệu từ thiết bị hãng, CC1 tổng hợp |
| L7 | Phát hiện bất động/ngã từ gia tốc kế, truyền LoRa/4G | Phổ biến | Không cần AI nặng |
| L8 | Phương pháp độ chín bê tông (Nurse-Saul, ASTM C1074) → cường độ ước tính; kiểm soát hình học đốt dầm | Phổ biến | Phải hiệu chuẩn theo cấp phối thật |

### 3.3. Điều rút ra cho lõi

- Phần lớn touchpoint dùng **thuật toán đã phổ biến hoặc mua được**. Giá trị riêng của CC1 nằm ở **nối dữ liệu các touchpoint vào chuỗi khối lượng và ontology**, không ở từng mô hình.
- Ba chỗ cần thận trọng khi trình bày: 1.5 (ReID trên đồng phục), 3.3 (máy tự hành), L4 (báo giả do xe máy).
- Mua thiết bị hãng cho 2.2, 2.3, 3.1, 3.4, L6. CC1 tự làm phần tổng hợp, đối chiếu và cảnh báo.

## 4. Hệ quả cho đội 8–9 người khi phủ toàn tập đoàn

| Việc | Làm một lần | Tốn công theo từng dự án |
|---|---|---|
| Nền dữ liệu, chỉ mục, phân quyền | Có | — |
| Đường ống OCR theo loại biểu mẫu | Có (mỗi loại biểu mẫu một lần) | Ít |
| Ánh xạ BOQ → định mức → cấu kiện | — | Nhiều: mỗi dự án một BOQ |
| Hiệu chuẩn camera, LiDAR, thùng xe | — | Nhiều |
| Bộ đề kiểm thử | Lõi chung | Bổ sung theo dự án |

Kết luận: nền tảng phủ toàn tập đoàn từ ngày đầu được. Nạp dữ liệu và ánh xạ BOQ cần thêm người tại từng đơn vị hoặc phải nạp theo đợt.

## 5. Quyết định của chủ đầu tư (31/10/2026)

| Câu hỏi | Chốt |
|---|---|
| Quy mô ↔ đội | Nền tảng chung cho cả tập đoàn, nạp dữ liệu theo đợt; giữ đội 8–9 người |
| Nguồn "sự thật" khi lệch | "Xài đồ tốt nhất từ thị trường": mỗi phép đo dùng thiết bị/phần mềm hàng đầu đã kiểm định; CC1 tự làm phần đối chiếu |
| Đi sâu tiếp | Cả 4 nhánh: lộ trình OCR + ánh xạ BOQ, chi phí 3 năm, ReID, ontology chi tiết → `advisory-261031-0821-roadmap-cost-reid-ontology.md` |
