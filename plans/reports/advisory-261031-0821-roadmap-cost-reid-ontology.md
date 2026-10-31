# Đi sâu 2: Lộ trình OCR + BOQ, chi phí 3 năm, định danh công nhân, ontology

Ngày: 31/10/2026 · Bổ sung cho `advisory-261031-0821-cc1-ai-core-platform.md` và `advisory-261031-0821-ocr-quantity-algorithms-deep-dive.md` · Trạng thái: brainstorm, chưa xuất bản.

Đã chốt:

- nền tảng chung cho toàn tập đoàn, nạp dữ liệu theo đợt;
- hạ tầng kết hợp;
- đội lõi 8–9 người;
- đo đạc dùng thiết bị và phần mềm tốt nhất thị trường.

## 1. "Đồ tốt nhất thị trường" cho từng phép đo

Cách hiểu: CC1 không tự chế thiết bị đo. Mỗi phép đo dùng sản phẩm thương mại phổ biến, đã kiểm định. CC1 tự làm phần nối dữ liệu, đối chiếu và cảnh báo.

Danh sách để khảo sát, **chưa so giá, chưa đánh giá tại Việt Nam**:

| Phép đo | Nhóm sản phẩm phổ biến cần khảo sát | Là "sự thật" cho |
|---|---|---|
| Cân xe | Đầu cân và cầu cân đã kiểm định đo lường (Mettler Toledo và hãng tương đương) | Khối lượng vật tư nhập |
| Thể tích thùng xe | Máy quét thể tích tải (ví dụ Loadscan) | Thể tích vật tư rời |
| Drone đo vẽ | DJI Matrice + cảm biến LiDAR Zenmuse; xử lý bằng DJI Terra hoặc Pix4D | Địa hình, đào đắp, tồn kho bãi |
| Quét và so BIM | Leica, Trimble, Faro (máy quét + phần mềm) | Hoàn thành cấu kiện |
| Bóc khối lượng từ bản vẽ | Autodesk Takeoff, CostX, Bluebeam | Khối lượng thiết kế khi không có BIM |
| Dẫn hướng máy | Trimble Earthworks, Leica iCON, Topcon | Cao độ đào đắp |
| Lu thông minh | Hệ thống lu thông minh của hãng lu (Bomag, Hamm, Caterpillar) | Độ chặt, số lượt lu |
| Độ chín bê tông | Cảm biến không dây (Giatec SmartRock, Converge) | Cường độ ước tính |
| Định vị trong nhà | UWB thương mại (Pozyx, Sewio và hãng tương đương) | Vị trí người, thiết bị |
| Robot in sàn | Dusty Robotics, HP SitePrint | Định vị thi công |
| Robot tuần tra | Boston Dynamics Spot hoặc nền tảng bốn chân tương đương | Dữ liệu quét đêm |

Thứ tự tin cậy khi các nguồn lệch:

1. Thiết bị đã kiểm định cho đúng đại lượng của nó (cân cho tấn, LiDAR cho m³).
2. Đo đạc độc lập (drone, máy quét).
3. Chứng từ (phiếu, hóa đơn).
4. Biên bản nghiệm thu.

Lưu ý pháp lý: thanh toán vẫn đi theo biên bản nghiệm thu đúng quy trình hợp đồng. Lõi AI gắn cờ chênh lệch kèm bằng chứng để người có thẩm quyền xử lý; không tự sửa số trên biên bản.

## 2. Lộ trình OCR + ánh xạ BOQ theo đợt

### 2.1. Thứ tự loại biểu mẫu

| Đợt | Loại | Vì sao trước | Mục tiêu đầu vào |
|---|---|---|---|
| 1 | Phiếu cân, phiếu giao hàng | Số lượng lớn, mẫu đơn giản, nối thẳng vào nguồn khối lượng số 3 | 200 trang thật / mẫu |
| 1 | Hóa đơn điện tử | Đọc XML, gần như không lỗi | Toàn bộ |
| 2 | Biên bản nghiệm thu công việc | Giá trị cao nhất: nguồn khối lượng số 5 | 200 trang / mẫu |
| 2 | BOQ Excel | Điểm nghẽn ánh xạ | 3 BOQ thật / loại dự án |
| 3 | Nhật ký thi công | Nhiều chữ viết tay, giá trị cho tra cứu | 200 trang |
| 4 | Hồ sơ cũ scan, bản vẽ scan | Khó nhất, giá trị thấp hơn | Chỉ khi có yêu cầu cụ thể |

### 2.2. Ngưỡng chất lượng để mở rộng

| Chỉ số | Ngưỡng mở đợt kế | Ghi chú |
|---|---|---|
| Độ chính xác theo trường (sau duyệt) | 100% | Người duyệt chịu trách nhiệm số cuối |
| Độ chính xác theo trường (tự động, trước duyệt) | ≥ 95% với chữ in, ≥ 85% với viết tay | Mục tiêu khởi đầu, chỉnh sau đợt 1 |
| Tỷ lệ đi thẳng không cần người duyệt | ≥ 60% | Tăng dần khi có mẫu huấn luyện |
| Thời gian duyệt trung bình | < 30 giây / trang | Đo trên giao diện duyệt thật |

Các ngưỡng là đề xuất khởi đầu. Đặt lại sau khi đo trên 200 trang đầu.

### 2.3. Nạp một dự án vào lõi (mỗi đợt 3–5 dự án)

| Bước | Ai làm | Công (ước tính) |
|---|---|---|
| 1. Thu hồ sơ, BIM, BOQ; kiểm bảng mã TCVN3/VNI | Kỹ sư dữ liệu | 2–3 ngày |
| 2. Gắn dự án vào ontology: phân khu hoặc đoạn Km, WBS | Kỹ sư tri thức + chỉ huy trưởng | 2–3 ngày |
| 3. Ánh xạ BOQ: máy gợi ý 3 mã định mức và nhóm cấu kiện cho mỗi dòng, kỹ sư QS xác nhận | QS dự án + kỹ sư tri thức | 2–4 ngày cho BOQ cỡ 2.000 dòng |
| 4. Nối touchpoint đang chạy: cổng, cân, camera, drone | Kỹ sư dữ liệu | 1–2 ngày |
| 5. Bổ sung 30–50 câu bộ đề riêng của dự án | Chỉ huy trưởng, QS | 1 ngày |
| 6. Chạy bộ đề, sửa lỗi, bàn giao | Đội lõi | 1–2 ngày |

Một dự án mất khoảng 2 tuần công của đội lõi, chưa tính hồ sơ scan cũ. Với 8–9 người, mỗi quý nạp được 3–5 dự án mà vẫn giữ việc nền tảng.

## 3. Chi phí đầu tư 3 năm (ước lượng thô)

**Toàn bộ số dưới đây là ước lượng cấp độ, sai số có thể ±50%. Phải có báo giá OEM, bảng lương và báo giá phần mềm trước khi trình.** Tỷ giá dùng tạm: 1 USD ≈ 26.000 đồng.

Chưa gồm: thiết bị touchpoint tại từng công trường (đã có bảng riêng trong hồ sơ kỹ thuật) và giấy phép phần mềm đo đạc mục 1.

| Hạng mục | Năm 1 | Năm 2 | Năm 3 | Cơ sở ước tính |
|---|---|---|---|---|
| Đội lõi 8–9 người | 4,5–7,5 tỷ | 4,5–7,5 tỷ | 4,5–7,5 tỷ | 40–70 triệu đồng / người / tháng, đã gồm chi phí đi kèm |
| Cụm suy luận nội bộ (4 GPU loại 48GB, 1 cụm) | 1,5–2,5 tỷ | 0–2,5 tỷ (nhân đôi khi tải tăng) | Bảo trì | Cần báo giá máy chủ OEM |
| Lưu trữ (vài trăm TB) | 0,5–1,5 tỷ | 0,3–1 tỷ | 0,3–1 tỷ | Tăng theo số dự án đã nạp |
| Thuê GPU huấn luyện | < 0,3 tỷ | < 0,5 tỷ | < 0,5 tỷ | H100 tại FPT khoảng 2,5–3 USD/giờ; một lần tinh chỉnh LoRA trên 8 GPU trong 3 ngày khoảng 1.500 USD |
| API thương mại cho dữ liệu không nhạy cảm | 0,1–0,3 tỷ | 0,2–0,5 tỷ | 0,2–0,5 tỷ | Theo lượng dùng |
| Đánh giá pháp lý dữ liệu và AI, kiểm thử bảo mật | 0,3–0,6 tỷ | 0,2–0,4 tỷ | 0,2–0,4 tỷ | Thuê tư vấn độc lập |
| **Cộng (làm tròn)** | **7–13 tỷ** | **5–12 tỷ** | **5–10 tỷ** | |

Rút ra:

- **Con người chiếm khoảng 60–80%.** GPU không phải khoản lớn.
- **Huấn luyện mô hình gần như không đáng kể:** vài nghìn USD mỗi lần. Đây thêm một lý do không cần tự làm mô hình từ đầu; tiền nên dồn vào dữ liệu và đội.

## 4. Định danh công nhân: UWB làm nguồn chính

### 4.1. Vấn đề của ReID thị giác trên công trường

- Công nhân mặc cùng đồng phục, cùng màu mũ, cùng áo phản quang. Đặc trưng ngoại hình, vốn là đầu vào chính của mô hình ReID, gần như giống nhau.
- Dáng đi thay đổi khi mang vác, leo giàn giáo, đi trên sàn không phẳng.
- Kết luận: thị giác **không** nên là nguồn định danh chính.

### 4.2. Thiết kế đề xuất

| Lớp | Công nghệ | Vai trò |
|---|---|---|
| Định danh tại cổng | Khuôn mặt + chống giả mạo, hoặc thẻ cho người không đồng ý sinh trắc | Xác nhận đúng người đầu ca, ghép với chip UWB trên mũ |
| Vị trí trong ca (khép kín) | UWB: chip trên mũ, trạm neo; sai số hãng công bố cỡ vài chục cm | Nguồn định danh và vị trí chính |
| Vị trí trong ca (tuyến) | Thẻ GNSS + LoRa/4G (L7) | UWB không phủ được hàng chục km |
| Thị giác | Bám vết trong từng camera + số lớn in trên mũ/áo đọc bằng OCR | Bổ trợ: phát hiện người không mang chip, đối chiếu khi nghi tráo mũ |
| Phát hiện tráo mũ | Vị trí chip UWB lệch vị trí vệt người trên camera; khuôn mặt cổng ≠ chủ chip | Gắn cờ cho người kiểm tra |

### 4.3. Nghĩa vụ dữ liệu sinh trắc

Theo Luật 91/2025/QH15 và NĐ 356/2025/NĐ-CP (đã dẫn trong hồ sơ tuyến), khuôn mặt và dáng đi là dữ liệu cá nhân nhạy cảm:

- Đồng ý rõ ràng, có đường thay thế không sinh trắc (thẻ).
- Đánh giá tác động xử lý dữ liệu cá nhân trước khi triển khai.
- Mẫu sinh trắc nằm tại Edge AI Box, không đưa lên tập đoàn; xóa khi hết hợp đồng lao động.
- Chỉ dùng cho an toàn và chấm công. Không dùng để chấm điểm hành vi cá nhân.
- **Không tự động xử phạt.** Mọi cờ vi phạm phải có người xem bằng chứng trước khi xử lý.

Luật Trí tuệ nhân tạo 134/2025/QH15 (hiệu lực 1/3/2026): rà nghĩa vụ phân loại rủi ro cho hệ thống nhận diện sinh trắc trước khi triển khai.

### 4.4. Chỉ số đo

- Tỷ lệ giờ công gán đúng người (so với chấm công thủ công trên mẫu kiểm tra).
- Sai số vị trí UWB đo tại công trường thật, không lấy số hãng.
- Tỷ lệ cờ sai (gắn cờ người không vi phạm): chỉ số quan trọng nhất, quyết định công nhân có tin hệ thống hay không.

## 5. Ontology chi tiết

Sơ đồ: `plans/reports/advisory-261031-cc1-ontology-core.png`

### 5.1. Cách hiện thực

- Định nghĩa lược đồ bằng một ngôn ngữ mô hình hóa (LinkML hoặc SHACL), sinh ra bảng PostgreSQL, ràng buộc đồ thị và JSON Schema cho đường ống OCR từ cùng một nguồn.
- Lưu bằng đồ thị thuộc tính (Neo4j hoặc Apache AGE trên PostgreSQL), không dùng RDF/OWL đầy đủ: đội nhỏ, cần truy vấn nhanh.
- Neo vào IFC 4.3 cho cấu kiện. Đặt tên tài liệu theo ISO 19650. Thuộc tính lấy từ bSDD khi có.

### 5.2. Lớp chính

| Nhóm | Lớp | Khóa định danh |
|---|---|---|
| Tổ chức | Dự án, Tổ chức (chủ đầu tư, tổng thầu, thầu phụ, nhà cung cấp), Người (vai trò) | Mã dự án; mã số thuế; mã công nhân ẩn danh |
| Không gian | Công trường khép kín: Tầng, Phân khu, Ô lưới · Công trường tuyến: Tuyến, Đoạn (Km đầu, Km cuối), Nút (NODE) | Lý trình quy về mét; mã tầng–trục |
| Công việc | Hạng mục WBS, Cấu kiện BIM, Dòng BOQ, Mã định mức | IFC GUID; mã định mức |
| Vật tư, thiết bị | Vật tư, Lô giao hàng, Thiết bị, Xe | Mã vật tư; biển số |
| Tài liệu | Bản vẽ, Chỉ dẫn kỹ thuật, Hợp đồng, Điều khoản, Biên bản nghiệm thu, Nhật ký, Hóa đơn, Giấy phép mặt trận (L2) | Số hiệu tài liệu theo ISO 19650 |
| Tiêu chuẩn | Tiêu chuẩn, Điều khoản tiêu chuẩn (TCVN, QCVN) | Số hiệu + điều |
| Sự kiện | Qua cổng, Cân, Quét, Đổ bê tông, Lượt lu, Cảnh báo an toàn, Man-down | Mã thiết bị + thời điểm |
| Đo đạc | Phép đo (giá trị, đơn vị, phương pháp, thiết bị, độ bất định) | Gắn với sự kiện sinh ra nó |
| Kiểm soát | Chênh lệch, Cảnh báo, Phê duyệt, Thanh toán | Mã cảnh báo |

### 5.3. Quan hệ chính

| Quan hệ | Từ → Tới | Ví dụ |
|---|---|---|
| thuộc | Cấu kiện → Phân khu / Đoạn Km | Cột C-12 thuộc tầng 9 trục D |
| hiện thực | Dòng BOQ → Cấu kiện | Dòng "bê tông cột M300" → nhóm cột tầng 9 |
| định giá theo | Dòng BOQ → Mã định mức | Định mức hao phí xi măng, cát, đá |
| tiêu hao | Hạng mục → Vật tư (lượng lý thuyết) | Tính từ định mức |
| giao tới | Lô giao hàng → Dự án / Đoạn | Phiếu cân 18,4 tấn → Km 12+400 |
| đo bởi | Phép đo → Thiết bị | m³ đào đắp → drone LiDAR |
| làm chứng cho | Sự kiện / Phép đo → Biên bản nghiệm thu | Ảnh quét + phiếu xe bồn → biên bản đổ bê tông |
| nghiệm thu | Biên bản → Hạng mục (khối lượng) | Biên bản số … nghiệm thu 120 m³ |
| điều chỉnh bởi | Dòng BOQ → Điều khoản hợp đồng | Điều khoản đơn giá, phạt giao thiếu |
| yêu cầu | Điều khoản tiêu chuẩn → Hạng mục | TCVN về độ chặt nền K98 |
| lệch với | Phép đo ↔ Phép đo | Cân nhập ≠ thể tích quét × tỷ trọng |
| phê duyệt bởi | Cảnh báo / Lệnh tác tử → Người | Giám đốc dự án phê duyệt |

### 5.4. Câu hỏi kiểm tra ontology

Ontology đạt khi trả lời được bằng truy vấn đồ thị, không cần LLM đoán:

1. Đoạn Km 12+400 đến 13+000: thiết kế, nhập, thi công, nghiệm thu, đã trả bao nhiêu m³ cấp phối? Chênh ở khâu nào?
2. Tầng 9: cấu kiện nào đã đổ bê tông mà chưa có biên bản nghiệm thu?
3. Nhà cung cấp nào có tỷ trọng cát lệch dải chuẩn quá 3 lần trong tháng?
4. Hạng mục nào đang thi công nhưng thiếu điều khoản tiêu chuẩn áp dụng?
5. Ai đã phê duyệt lệnh lùi lịch xe bồn hôm qua, dựa trên bằng chứng nào?

## 6. Câu hỏi mở

1. Danh sách sản phẩm đo đạc ở mục 1: khảo sát và lấy báo giá cho nhóm nào trước?
2. Nhân sự kỹ sư QS tham gia ánh xạ BOQ là người của dự án (kiêm nhiệm) hay của đội lõi?
3. Đã có dự án nào có BIM đầy đủ để làm dự án mẫu cho đợt 1 chưa?
