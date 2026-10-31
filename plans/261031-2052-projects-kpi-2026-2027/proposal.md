# Đề xuất các project lõi vận hành AI và công trường số CC1: KPI tháng 11/2026, tháng 12/2026 và năm 2027

Ngày lập: 31/10/2026 · Trạng thái: **bản đề xuất, chờ lãnh đạo tập đoàn xem xét**

> Đây là nghiên cứu độc lập của Jang Trinh. CC1 không tài trợ nghiên cứu này. Mọi số tiền là ước lượng **[I]** và phải thay bằng báo giá trước khi trình ngân sách.

Căn cứ: phương án B theo cổng đã chốt ngày 31/10/2026 ([plan.md](../261031-0940-ai-core-plan-a-b/plan.md)). Bản này không đổi số liệu đã chốt. Số nào suy ra thì ghi cách tính ở mục 8.

Nhãn:

- **[I]** ước lượng hoặc giả định của người đề xuất;
- **[S]** giá từ trang tổng hợp hoặc đại lý.

Tiền tính bằng tỷ đồng.

## 1. Tóm tắt

- Đề xuất gồm **10 project**. 8 project lấy từ 11 giai đoạn của phương án B. Project 9 nối dữ liệu các đơn vị đang làm cho CC1 (SUMO, Autodesk qua Arotech, VNX) vào lõi. Project 10 lắp điểm chạm tại công trường.
- **Lịch:** tháng 11/2026 là tháng chuẩn bị hồ sơ trình. Tháng 12/2026 là M0, tháng phê duyệt. Năm 2027 là M1–M12.
- **Năm cổng quyết định** rơi vào năm 2027: G1 tháng 01, G2 tháng 03–04, G3 tháng 08, G4 tháng 10, G5 tháng 12.
- **Ngân sách năm 1** giữ khung đã chốt: 55–90 tỷ. Chi dự kiến theo nhịp tuyển người khoảng 51–87 tỷ. Riêng 25–36 tỷ cụm huấn luyện chỉ chi khi qua G2.
- **Nhân sự:** đội lõi 18–22 người vào tháng 06/2027, cộng 10–15 người gán nhãn và một QS kiêm nhiệm ở mỗi dự án đã nạp.
- **Kết quả cuối 2027:** 6 kết quả của cổng G5, kiểm được bằng biên bản và số đo ([plan.md](../261031-0940-ai-core-plan-a-b/plan.md), mục "Kết quả cần đạt sau 12 tháng").

### Bảng tổng theo chặng

| Chặng | Lịch | Cổng | Chi dự kiến (tỷ) **[I]** | Đội lõi (cuối chặng) | Gán nhãn | Dự án đã nạp (lũy kế) |
|---|---|---|---|---|---|---|
| Tháng 11/2026 | Trước M0 | — | 0 | 0 người mới | — | 0; chốt tên 2 dự án mẫu |
| Tháng 12/2026 | M0 | Phê duyệt | 0,3–0,5 | 0; chốt ứng viên trưởng nhóm | — | 0 |
| Quý 1/2027 | M1–M3 | G1 (01) | 7,1–12,9 (+ thuê GPU < 0,5) | ≥ 10 người trước họp G2 | — | 2 dự án mẫu |
| Quý 2/2027 | M4–M6 | G2 (03–04) | 29,5–45,4 nếu qua G2; 4,5–9,4 nếu không qua | 18–22 | 10–15 | 12–17 |
| Quý 3/2027 | M7–M9 | G3 (08) | 7,0–14,6 | 18–22 | 10–15 | Toàn bộ (dưới 30), xem rủi ro R3 |
| Quý 4/2027 | M10–M12 | G4 (10), G5 (12) | 6,7–13,9 | 18–22 | 10–15 | Toàn bộ, cộng dự án khởi công mới |
| **Cộng năm 1** | M0–M12 | | **khoảng 51–87** (khung đã chốt 55–90) | | | |

![Lộ trình theo giai đoạn của phương án B](../../media/ai-core/plan-b-phases.png)

## 2. Lịch và cổng

M0 = tháng phê duyệt = tháng 12/2026. Quy đổi: M1 = 01/2027, M12 = 12/2027.

| Cổng | M | Tháng | Điều kiện đạt | Không đạt thì |
|---|---|---|---|---|
| G1 · Khởi động | M1 | 01/2027 | Ngân sách duyệt; ban chỉ đạo lập; trưởng nhóm nghiên cứu đã nhận việc hoặc đã chốt ứng viên | Lùi M0, không ký mua sắm |
| G2 · Mua cụm huấn luyện | M3–M4 | 03–04/2027 | Bộ đề ≥ 80% nhóm tra cứu; ≥ 50 nghìn mẫu huấn luyện khả dụng; ≥ 10 người | Dừng ở A+: giữ cụm suy luận, thuê GPU, xét lại sau 3 tháng |
| G3 · Tác tử có quyền ghi | M8 | 08/2027 | 3 tháng chỉ đọc không sự cố; nhật ký kiểm toán đủ; ban chỉ đạo duyệt danh sách lệnh ghi | Giữ chế độ chỉ đọc |
| G4 · Mô hình ngành CC1 v1 | M10 | 10/2027 | Thắng mô hình nền trên bộ đề; không nhóm nào giảm | Phục vụ mô hình nền cộng LoRA |
| G5 · Đánh giá năm 1 | M12 | 12/2027 | 6 kết quả 12 tháng | Ban chỉ đạo điều chỉnh phạm vi năm 2 |

Điều kiện từng cổng lấy nguyên từ [plan.md](../261031-0940-ai-core-plan-a-b/plan.md), mục "Cổng quyết định".

## 3. Danh mục project

| Mã | Project | Giai đoạn nguồn | Mục tiêu | Outcome đo được cuối 2027 | Thời gian | Ngân sách năm 1 (tỷ) **[I]** | Đội lõi phụ trách chính |
|---|---|---|---|---|---|---|---|
| P1 | Quản trị, pháp lý, đo KPI | 0, 10 | Có quyết định, người chịu trách nhiệm, hồ sơ pháp lý; đo giá trị hằng tháng | Biên bản G1–G5; hồ sơ đánh giá tác động dữ liệu cá nhân; 12 báo cáo KPI tháng | 11/2026–12/2027 | 1–2 | 2 |
| P2 | Tuyển đội | 1 | Đủ người trước khi tiêu tiền lớn | 18–22 người từ 06/2027; ≥ 10 người trước G2 | 11/2026–06/2027 | 14–24 (khung lương cả đội) | Ban chỉ đạo, nhân sự CC1 |
| P3 | Hạ tầng GPU và trung tâm dữ liệu | 2, 6 | Cụm suy luận phục vụ trợ lý từ 02/2027; cụm huấn luyện chỉ mua khi qua G2 | Cụm suy luận đạt nghiệm thu; cụm huấn luyện dùng ≥ 50% sau M9; trợ lý chạy ≥ 99% giờ làm việc | 11/2026–12/2027 | 5–8 suy luận; 25–36 huấn luyện; 3–6 chỗ đặt | 2–3 |
| P4 | Nền dữ liệu và ontology | 3 | Một nền dữ liệu chung, phân quyền theo dự án | Ontology v0 có tài liệu; 0 sự cố rò rỉ giữa dự án | 11/2026–12/2027 | 1–3 lưu trữ | 3 |
| P5 | Bộ đề và mô hình ngành CC1 | 4, 7 | Chọn mô hình bằng số đo; mô hình CC1 v1 thắng mô hình nền | Bộ đề ≥ 90% nhóm tra cứu; 100% câu có trích dẫn; 0 câu bịa ở nhóm bẫy; qua G4 | 12/2026–12/2027 | < 0,5 thuê GPU (sau đó dùng cụm của P3) | 4–5 |
| P6 | OCR, ánh xạ BOQ, nạp dự án | 5 | Nạp toàn bộ dự án đang thi công | 100% dự án đã nạp; đối chiếu 6 nguồn chạy cho bê tông, thép, vật tư rời, đào đắp; OCR ≥ 95% chữ in, ≥ 85% viết tay | 11/2026–12/2027 | 3–6 gán nhãn | 5 |
| P7 | Trợ lý và tác tử trong Site OS, ERP | 8 | Trợ lý làm việc trong luồng thật; chỉ ghi khi đã an toàn | ≥ 70% chỉ huy trưởng và QS dùng ≥ 3 ngày/tuần; 100% lệnh ghi có người duyệt | 04/2027–12/2027 | Trong chi phí đội | 1–3 |
| P8 | Số hóa hồ sơ cũ | 9 | Hồ sơ dự án đã xong tra cứu được, dùng để huấn luyện | Nhóm hồ sơ ưu tiên số hóa xong; OCR mẫu ≥ 95% chữ in | 05/2027–03/2028 | 3–6 | 1 |
| P9 | Tích hợp dữ liệu đơn vị đang dùng | Mới; báo cáo đơn vị đang dùng | Dữ liệu SUMO, Autodesk, VNX vào lõi bằng định dạng mở | 3 đơn vị có kết luận về xuất dữ liệu mở; dữ liệu đơn vị đạt tiêu chí chạy trong đối chiếu khối lượng | 11/2026–12/2027 | Không thêm; trong chi phí đội | Do P4 kiêm |
| P10 | Điểm chạm tại công trường | VII.13, VII.14 | Lắp điểm chạm, dữ liệu chảy về lõi | 2 dự án mẫu chạy 1.1–1.4 hoặc L1–L3, L8; danh sách điểm chạm cho mọi dự án đã nạp được duyệt | 11/2026–12/2027 | **Ngoài tổng**, chờ báo giá (mục 5.3) | Đội công trường; P4 nối dữ liệu |

## 4. KPI theo chặng

Quy ước: KPI trước M12 chỉ dùng số mà nguồn đã đặt cho mốc đó. Nguồn chỉ có mục tiêu M12 thì các chặng trước ghi mốc việc (biên bản, hệ thống chạy, số đo đã nộp), không đặt phần trăm trung gian. Tháng 11/2026 diễn ra trước phê duyệt nên chưa có ban chỉ đạo: KPI tháng này là việc người đề xuất làm và việc đề nghị lãnh đạo tập đoàn giao.

### P1 · Quản trị, pháp lý, đo KPI

| Chặng | KPI | Bằng chứng |
|---|---|---|
| 11/2026 | Hồ sơ trình đủ: đề xuất này, yêu cầu báo giá đã gửi (P3, P10), tên 2 dự án mẫu (P6) | Bộ hồ sơ trình lãnh đạo tập đoàn |
| 12/2026 | Quyết định phê duyệt có chữ ký; ban chỉ đạo do Tổng giám đốc làm trưởng ban họp phiên đầu; chỉ định chủ sở hữu sản phẩm và pháp chế | Quyết định; biên bản họp |
| Q1/2027 | G1 đạt (01); hồ sơ đánh giá tác động dữ liệu cá nhân được pháp chế ký; danh mục tính năng AI kèm mức rủi ro; chính sách dữ liệu bản 1; báo cáo KPI tháng 01–03 | Biên bản G1; hồ sơ đã ký |
| Q2/2027 | Biên bản G2 ghi số đo của 3 điều kiện; báo cáo KPI tháng 04–06 | Biên bản G2 |
| Q3/2027 | Biên bản G3 (08); đánh giá tác động xong trước khi bật 1.5 và tác tử ghi; kiểm thử xâm nhập và kiểm thử rò rỉ đợt 6 tháng | Biên bản; báo cáo kiểm thử |
| Q4/2027 | Biên bản G4 (10) và G5 (12); đủ 12 báo cáo KPI tháng; kế hoạch và ngân sách năm 2 trình ban chỉ đạo | Biên bản G5; báo cáo đánh giá năm 1 |

### P2 · Tuyển đội

| Chặng | KPI | Bằng chứng |
|---|---|---|
| 11/2026 | Mô tả công việc trưởng nhóm nghiên cứu AI và sơ đồ tổ chức gửi lãnh đạo tập đoàn | Bản mô tả công việc |
| 12/2026 | Chốt ứng viên trưởng nhóm nghiên cứu (điều kiện G1) | Thư mời nhận việc |
| Q1/2027 | Trưởng nhóm nhận việc trước 02/2027; đợt 1 có 6–8 người; **≥ 10 người trước họp G2** | Danh sách nhân sự |
| Q2/2027 | 18–22 người vào 06/2027; nhóm gán nhãn 10–15 người có hướng dẫn và bài kiểm tra chất lượng | Danh sách nhân sự; kết quả bài kiểm tra |
| Q3/2027 | Giữ 18–22 người; mỗi dự án đã nạp có một QS kiêm nhiệm được chỉ định | Danh sách QS kiêm nhiệm |
| Q4/2027 | Kế hoạch nhân sự năm 2 | Kế hoạch trình G5 |

Đợt 1 chỉ có 6–8 người cộng 1–2 trưởng nhóm, tức 7–10 người. Ở mức thấp, G2 không đạt điều kiện người: xem rủi ro R1.

### P3 · Hạ tầng GPU và trung tâm dữ liệu

| Chặng | KPI | Bằng chứng |
|---|---|---|
| 11/2026 | Gửi yêu cầu báo giá chỗ đặt khoảng 50 kW, làm mát chất lỏng, tới Viettel IDC, FPT, VNPT, CMC; gửi yêu cầu báo giá 2 node suy luận 8× GPU 96 GB | Thư yêu cầu báo giá |
| 12/2026 | Nhận ≥ 2 báo giá chỗ đặt và ≥ 2 báo giá máy | Báo giá |
| Q1/2027 | Ký hợp đồng chỗ đặt; đặt hàng cụm suy luận ngay sau G1; cụm chạy từ 02/2027 với mô hình 27–35B, độ trễ ≤ 5 giây cho 50 người dùng cùng lúc; thử khôi phục sao lưu thành công; kiểm thử xâm nhập lần 1 không còn lỗi mức cao; thuê GPU trong nước cho P5 | Biên bản nghiệm thu cụm suy luận |
| Q2/2027 | Qua G2: đặt hàng 2 node Blackwell 8 GPU, mạng, lưu trữ; chốt giá ngay khi qua cổng. Không qua G2: giữ cấu hình A+, họp lại sau 3 tháng | Hợp đồng mua sắm hoặc biên bản A+ |
| Q3/2027 | Cụm huấn luyện nghiệm thu: chạy 72 giờ không lỗi phần cứng; một lượt SFT tham chiếu khớp lượt chạy trên GPU thuê | Biên bản nghiệm thu cụm |
| Q4/2027 | Mức sử dụng GPU cụm huấn luyện ≥ 50%; trợ lý hoạt động ≥ 99% giờ làm việc | Bảng giám sát GPU |

### P4 · Nền dữ liệu và ontology

| Chặng | KPI | Bằng chứng |
|---|---|---|
| 11/2026 | Kiểm kê dữ liệu số của 2 dự án mẫu: IFC xuất được, LandXML tim tuyến, BOQ Excel | Phiếu kiểm kê |
| 12/2026 | Danh sách nguồn cần nối cho 2 dự án mẫu: ERP, phần mềm dự toán, BIM, thư mục hồ sơ | Danh sách nguồn |
| Q1/2027 | Ontology v0 có tài liệu; kho dữ liệu đã nạp 2 dự án mẫu; báo cáo đo dữ liệu (số tài liệu, số trang, số mẫu khả dụng) nộp trước G2 | Tài liệu ontology; báo cáo đo dữ liệu |
| Q2/2027 | 2 dự án mẫu tra cứu được qua trợ lý, có trích dẫn; kiểm thử rò rỉ 0 lỗi trên bộ thử | Biên bản kiểm thử rò rỉ |
| Q3/2027 | Kiểm thử rò rỉ 0 lỗi ở mỗi đợt nạp | Biên bản từng đợt |
| Q4/2027 | 0 sự cố rò rỉ giữa dự án cả năm | Báo cáo sự cố |

### P5 · Bộ đề và mô hình ngành CC1

| Chặng | KPI | Bằng chứng |
|---|---|---|
| 11/2026 | Chỉ huy trưởng và QS 2 dự án mẫu nhận lời viết bộ đề (tiêu chí chọn dự án mẫu) | Danh sách người viết |
| 12/2026 | Bắt đầu thu câu hỏi thật từ 2 dự án mẫu | Kho câu hỏi |
| Q1/2027 | Bộ đề v1 ≥ 300 câu, mỗi nhóm ≥ 50 câu, khóa không cho mô hình học; thi đấu 4 mô hình mở trên GPU thuê; mô hình chọn ≥ 80% nhóm tra cứu; 0 câu bịa ở nhóm bẫy; giấy phép cho phép dùng thương mại; SFT v1 | Bảng kết quả thi đấu; quyết định mô hình nền |
| Q2/2027 | DPO từ phản hồi thật của kỹ sư; mỗi bản phát hành thắng bản đang chạy, không nhóm nào giảm; trích dẫn giữ 100% | Thẻ mô hình từng bản |
| Q3/2027 | RLVR cho tính khối lượng, đối chiếu đơn vị, tra định mức; bắt đầu chưng cất và CPT trên cụm riêng | Nhật ký huấn luyện |
| Q4/2027 | G4 (10): CC1 v1 thắng mô hình nền; nhóm tra cứu ≥ 90%; 100% câu có trích dẫn; bộ đề làm mới mỗi quý | Biên bản G4 |

### P6 · OCR, ánh xạ BOQ, nạp dự án

| Chặng | KPI | Bằng chứng |
|---|---|---|
| 11/2026 | Chốt tên 2 dự án mẫu theo tiêu chí VII.13: 1 khép kín có BIM, 1 tuyến có LandXML; cả hai còn ≥ 12 tháng thi công | Danh sách gửi lãnh đạo tập đoàn |
| 12/2026 | Ban chỉ đạo duyệt thứ tự ưu tiên nạp các dự án đang thi công | Danh sách ưu tiên |
| Q1/2027 | Luồng OCR có duyệt người; đo tỷ lệ lỗi ký tự trên 200 trang hồ sơ CC1; nạp xong 2 dự án mẫu | Phiếu nghiệm thu nạp dự án |
| Q2/2027 | Nạp thêm 10–15 dự án; 100% dòng BOQ có QS xác nhận trước khi đối chiếu | Phiếu nghiệm thu nạp |
| Q3/2027 | 100% dự án đang thi công đã nạp trước 09/2027 (cần nhịp đủ, xem R3); mọi cảnh báo chênh lệch có bằng chứng trỏ về nguồn | Phiếu nghiệm thu nạp |
| Q4/2027 | OCR theo trường ≥ 95% chữ in, ≥ 85% viết tay; đi thẳng ≥ 60%; đối chiếu 6 nguồn tự động cho bê tông, thép, vật tư rời, đào đắp; dự án khởi công mới nạp theo quy trình khoảng 2 tuần công | Báo cáo KPI tháng 12 |

### P7 · Trợ lý và tác tử trong Site OS, ERP

| Chặng | KPI | Bằng chứng |
|---|---|---|
| 11/2026, 12/2026 | Chưa có việc | — |
| Q1/2027 | Danh sách API cần nối (Site OS, ERP, hồ sơ) và quyền truy cập | Tài liệu API |
| Q2/2027 | Chế độ chỉ đọc từ 04/2027: tra cứu, tóm tắt, cảnh báo chênh lệch, soạn nháp; nhật ký kiểm toán mọi lệnh gọi công cụ; đo mức dùng hằng tháng | Nhật ký kiểm toán |
| Q3/2027 | G3 (08): 3 tháng chỉ đọc không sự cố; ban chỉ đạo duyệt danh sách lệnh ghi; từ đó mỗi lệnh ghi cần người bấm duyệt | Biên bản G3 |
| Q4/2027 | ≥ 70% chỉ huy trưởng và QS dùng ít nhất 3 ngày mỗi tuần vào 12/2027; 100% lệnh ghi có người duyệt và nhật ký | Báo cáo mức dùng |

### P8 · Số hóa hồ sơ cũ

| Chặng | KPI | Bằng chứng |
|---|---|---|
| 11/2026 → Q1/2027 | Chưa bắt đầu (giai đoạn 9 bắt đầu M5) | — |
| Q2/2027 | Kiểm kê hồ sơ lưu trữ xong trước 06/2027: số thùng, số trang, loại tài liệu; xếp ưu tiên | Báo cáo kiểm kê |
| Q3/2027 | Ký hợp đồng quét sau kiểm kê; bắt đầu nhóm ưu tiên: hoàn công, nghiệm thu, thanh quyết toán, sự cố | Hợp đồng quét |
| Q4/2027 | Nhóm ưu tiên xong trước 12/2027; OCR mẫu kiểm tra ≥ 95% chữ in | Kho hồ sơ cũ tra cứu được |
| Q1/2028 | Phần còn lại xong trước 03/2028 (M15) | Báo cáo kết thúc |

### P9 · Tích hợp dữ liệu đơn vị đang dùng

| Chặng | KPI | Bằng chứng |
|---|---|---|
| 11/2026 | Gửi team ứng dụng 4 câu hỏi về VNX (công ty nào, thiết bị gì, dữ liệu ra định dạng nào, máy chủ đặt ở đâu); xin danh sách sản phẩm Autodesk mua qua Arotech; xin SUMO một bộ dữ liệu mẫu file gốc của một đợt bay công trường CC1 | Câu trả lời; bộ dữ liệu mẫu |
| 12/2026 | Chấm 3 đơn vị theo 5 tiêu chí VII.8; có kết luận về tiêu chí 3, xuất dữ liệu mở, là điều kiện loại | Bảng chấm |
| Q1/2027 | Khi nạp 2 dự án mẫu, nối thử dữ liệu SUMO và VNX vào kho trong 1–2 ngày; IFC từ Autodesk giữ GUID ổn định giữa các lần xuất; 5 điều khoản dữ liệu (file gốc, VN-2000, CC1 sở hữu, thời gian bàn giao, mã cấu kiện hoặc lý trình) đưa vào hợp đồng SUMO kỳ tới | Biên bản nối thử; phụ lục hợp đồng |
| Q2–Q3/2027 | Dữ liệu đơn vị đạt tiêu chí chạy trong đối chiếu khối lượng ở mọi dự án có dùng đơn vị đó: BIM là nguồn thiết kế, dữ liệu bay là nguồn đo hiện trường | Cảnh báo chênh lệch có trích nguồn đơn vị |
| Q4/2027 | Báo cáo giữ hoặc thay từng đơn vị theo tiêu chí 3; quyết định tự bay drone RTK hay thuê SUMO dựa trên tần suất bay đã đo | Báo cáo trình G5 |

### P10 · Điểm chạm tại công trường

| Chặng | KPI | Bằng chứng |
|---|---|---|
| 11/2026 | Gửi yêu cầu báo giá cả danh sách VII.8 cùng lúc, gồm các dòng VII.18 còn "chưa xác minh": camera, hộp Jetson công nghiệp, neo và thẻ UWB, cổng xoay, ANPR | Thư yêu cầu báo giá |
| 12/2026 | Nhận báo giá; ban chỉ đạo chốt danh sách điểm chạm cho 2 dự án mẫu | Biên bản chốt |
| Q1/2027 | Chuẩn bị và lắp 1.1–1.4 tại dự án khép kín mẫu; L1–L3 tại dự án tuyến mẫu | Biên bản lắp đặt |
| Q2–Q3/2027 | 1.1–1.5, L1–L3, L8 chạy và nối vào lõi; 1.5 chỉ bật sau đánh giá tác động; danh sách điểm chạm cho từng dự án đã nạp được ban chỉ đạo duyệt | Dữ liệu điểm chạm trong kho |
| Q4/2027 | Bắt đầu 2.1–2.4, L4–L7 theo VII.14; tỷ lệ cờ sai trong định danh công nhân theo dõi và giảm theo quý | Báo cáo KPI |

## 5. Ngân sách theo chặng

### 5.1. Chi dự kiến theo hạng mục (tỷ đồng) **[I]**

| Hạng mục | 11/2026 | 12/2026 | Q1/2027 | Q2/2027 | Q3/2027 | Q4/2027 | Chi dự kiến năm 1 | Khung đã chốt |
|---|---|---|---|---|---|---|---|---|
| Cụm huấn luyện (chỉ khi qua G2) | — | — | — | 25–36 | — | — | 25–36 | 25–36 |
| Cụm suy luận | — | — | 5–8 | — | — | — | 5–8 | 5–8 |
| Chỗ đặt, điện, làm mát | — | — | 0,75–1,5 | 0,75–1,5 | 0,75–1,5 | 0,75–1,5 | 3–6 | 3–6 |
| Đội lõi | — | — | 0,7–1,8 | 2,5–5,1 | 3,2–6,6 | 3,2–6,6 | 9,6–20,1 | 14–24 |
| Gán nhãn | — | — | — | 1–2 | 1–2 | 1–2 | 3–6 | 3–6 |
| Số hóa hồ sơ cũ | — | — | — | — | 1,5–3 | 1,5–3 | 3–6 | 3–6 |
| Lưu trữ | — | — | 0,25–0,75 | 0,25–0,75 | 0,25–0,75 | 0,25–0,75 | 1–3 | 1–3 |
| Pháp lý, bảo mật, tư vấn | — | 0,3–0,5 | 0,4–0,8 | — | 0,3–0,7 | — | 1–2 | 1–2 |
| Thuê GPU trong nước | — | — | < 0,5 | — | — | — | < 0,5 | Trong làm tròn |
| **Cộng, qua G2** | **0** | **0,3–0,5** | **7,1–12,9** | **29,5–45,4** | **7,0–14,6** | **6,7–13,9** | **khoảng 51–87** | **55–90** |
| Cộng, không qua G2 (A+) | 0 | 0,3–0,5 | 7,1–12,9 | 4,5–9,4 | 7,0–14,6 | 6,7–13,9 | khoảng 26–51 | — |

Đối chiếu với khung:

- Cột "Khung đã chốt" lấy từ [options-a-b-analysis.md](../261031-0940-ai-core-plan-a-b/options-a-b-analysis.md) §4. Cộng các dòng ra 55–91, nguồn làm tròn thành 55–90.
- Chi dự kiến thấp hơn khung khoảng 4 tỷ, chỉ ở dòng đội lõi, vì đội chưa đủ người trong Q1–Q2. Phần dôi ra không chuyển sang hạng mục khác.
- Nhánh không qua G2 bỏ 25–36 tỷ cụm huấn luyện. Vốn chưa giải ngân không mất; ban chỉ đạo họp lại sau 3 tháng.

### 5.2. Năm 2 và năm 3

Khung đã chốt: năm 2 khoảng 23–40 tỷ, năm 3 khoảng 27–48 tỷ, gồm dự phòng thay GPU 5–10 tỷ ở năm 3. Tổng 3 năm khoảng 105–180 tỷ. Nguồn: options-a-b-analysis.md §4.

### 5.3. Ngoài tổng: thiết bị tại công trường (P10) và đơn vị đang dùng (P9)

Thiết bị tại công trường và thiết bị đo **không nằm trong 55–90 tỷ**. Phần đã có giá **[I]**:

- khoảng 0,38 tỷ mỗi công trường khép kín;
- khoảng 1,3–2,6 tỷ mỗi đoạn tuyến khoảng 10 km;
- khoảng 4,2–4,3 tỷ cho một bộ dùng chung tại trụ sở;
- khoảng 1,2–2,1 tỷ mỗi máy dẫn hướng 3D (chỉ dự án tuyến mẫu).

Camera, UWB, cổng xoay, ANPR chưa có giá và có thể lớn hơn phần đã có giá. Ngân sách P10 theo chặng chỉ đặt được sau khi nhận báo giá tháng 12/2026. Nguồn: options-a-b-analysis.md, mục "Ngoài tổng".

Hợp đồng hiện có với SUMO, Arotech, VNX do team ứng dụng đang quản lý, không cộng vào lõi. P9 chỉ dùng công của đội lõi.

## 6. Nhân sự theo chặng

### 6.1. Số người

| Chặng | Đội lõi (cuối chặng) | Gán nhãn | QS kiêm nhiệm | Người-tháng đội lõi trong chặng **[I]** |
|---|---|---|---|---|
| 11/2026 | 0 người mới; người đề xuất cùng đại diện 2 dự án mẫu do lãnh đạo tập đoàn giao | — | — | 0 |
| 12/2026 | 0; chốt ứng viên trưởng nhóm | — | — | 0 |
| Q1/2027 | ≥ 10 trước họp G2 (01: 1–2, 02: 4–6, 03: 7–10) | — | 2 | 12–18 |
| Q2/2027 | 18–22 (04: 10–12, 05: 14–17, 06: 18–22) | 10–15 | 12–17 | 42–51 |
| Q3/2027 | 18–22 | 10–15 | 1 mỗi dự án đã nạp | 54–66 |
| Q4/2027 | 18–22 | 10–15 | 1 mỗi dự án đã nạp | 54–66 |

### 6.2. Vai trò theo project (đội lõi, mỗi người một project chính)

| Vai trò | Số người | P1 | P3 | P4 | P5 | P6 | P7 | P8 |
|---|---|---|---|---|---|---|---|---|
| Trưởng nhóm nghiên cứu AI | 1–2 | | | | 1–2 | | | |
| Kỹ sư ML / LLM | 4 | | | | 3 | 1 (OCR) | | |
| Kỹ sư dữ liệu | 4 | | | 2 | | 1 | | 1 |
| Kỹ sư tri thức ngành (kỹ sư xây dựng) | 4 | | | 1 | | 3 | | |
| MLOps, vận hành cụm GPU | 2–3 | | 2–3 | | | | | |
| Quản lý sản phẩm | 1–2 | 1 | | | | | 0–1 | |
| Bảo mật, pháp chế | 1 | 1 | | | | | | |
| Kỹ sư tích hợp, backend **[I]** | 1–2 | | | | | | 1–2 | |
| **Cộng** | **18–22** | **2** | **2–3** | **3** | **4–5** | **5** | **1–3** | **1** |

Ngoài đội lõi:

- P2 do ban chỉ đạo và bộ phận nhân sự CC1 chạy;
- P9 do kỹ sư dữ liệu của P4 kiêm;
- P10 do đội công trường và nhà cung cấp lắp, P4 nối dữ liệu;
- 10–15 người gán nhãn làm cho P6, P5, P8;
- QS kiêm nhiệm thuộc từng dự án;
- chủ sở hữu sản phẩm do CC1 chỉ định.

Bảng vai trò trong options-a-b-analysis.md §4 cộng ra 17–20, thiếu 1–2 so với 18–22. Giai đoạn 1 và giai đoạn 8 có nhắc kỹ sư backend và kỹ sư tích hợp hệ thống, nên dòng "Kỹ sư tích hợp, backend 1–2" được thêm để khớp tổng. Đây là đề xuất, cần chốt (câu hỏi mở 1).

## 7. Rủi ro

| Mã | Rủi ro | Mức | Chủ xử lý | Cách chặn |
|---|---|---|---|---|
| R1 | Đợt 1 chỉ đạt 7–10 người; dưới 10 thì G2 trượt điều kiện người | Cao | Ban chỉ đạo | Tuyển trưởng nhóm từ 12/2026; tuyển đợt 1 song song; tính chuyên gia Việt kiều, hợp đồng tư vấn bán thời gian |
| R2 | Phê duyệt tháng 12/2026 trễ, kéo lùi cả lịch | Cao | Lãnh đạo tập đoàn | M0 tính từ ngày phê duyệt; mọi tháng trong bản này dời theo |
| R3 | Nạp 10 dự án mỗi quý thì đến 09/2027 chỉ có 22 dự án; tổng gần 30 dự án cần khoảng 14 dự án mỗi quý | Trung bình | Chủ sở hữu sản phẩm | Đếm số dự án thật tháng 12/2026; nếu trên 22 thì đặt nhịp 14–15 dự án mỗi quý hoặc dời mốc 100% sang Q4 |
| R4 | Dữ liệu dự án không sẵn sàng, G2 thiếu 50 nghìn mẫu | Cao | Chủ sở hữu sản phẩm | Dự án mẫu có BIM; báo cáo đo dữ liệu trước G2 |
| R5 | Mua GPU rồi để không | Trung bình | Trưởng nhóm AI | Cổng G2; lịch chạy chung thị giác, point cloud; KPI ≥ 50% sau M9 |
| R6 | Đơn vị đang dùng không xuất được dữ liệu mở | Trung bình | P9 | Tiêu chí 3 VII.8 là điều kiện loại; điều khoản dữ liệu trong hợp đồng kỳ tới |
| R7 | Thiết bị công trường vượt dự tính vì nhiều dòng chưa có giá | Trung bình | Ban chỉ đạo | Báo giá cả danh sách trong tháng 11–12/2026; trình ngân sách thiết bị riêng |
| R8 | Vi phạm Luật 91/2025/QH15, Luật Trí tuệ nhân tạo 134/2025/QH15 | Trung bình | Pháp chế | Đánh giá tác động trước khi bật 1.5 và tác tử ghi |

## 8. Cách tính và giả định

1. **Lịch:** M0 = 12/2026 do người đề xuất chốt ngày 31/10/2026; Mk = tháng k năm 2027.
2. **Cụm suy luận** chi trọn ở Q1/2027: đặt hàng ngay sau G1, nghiệm thu M2 (giai đoạn 2). Giả định trả tiền khi đặt hàng **[I]**.
3. **Cụm huấn luyện** chi trọn ở Q2/2027: đặt hàng tại G2 (03–04/2027), giai đoạn 6. Nếu G2 họp tháng 03 thì khoản này dời lên Q1.
4. **Chỗ đặt** 3–6 tỷ chia đều 4 quý từ khi ký hợp đồng ở Q1 **[I]**. Thực tế công suất tăng khi cụm huấn luyện về, nên Q1–Q2 có thể thấp hơn, Q3–Q4 cao hơn.
5. **Đội lõi** = người-tháng × 60–100 triệu đồng/người/tháng (options-a-b-analysis.md §4). Nhịp tuyển theo giai đoạn 1: trưởng nhóm M1, đợt 1 M1–M3, đủ 18–22 người vào M6. Số người từng tháng ở mục 6.1 là nội suy **[I]**.
6. **Gán nhãn** 3–6 tỷ chia đều Q2–Q4, giả định nhóm gán nhãn bắt đầu sau khi luồng OCR dựng xong ở Q1 **[I]**.
7. **Số hóa hồ sơ cũ** 3–6 tỷ chia đều Q3–Q4: kiểm kê xong trước M6, quét sau khi ký hợp đồng (giai đoạn 9).
8. **Lưu trữ** 1–3 tỷ chia đều 4 quý **[I]**.
9. **Pháp lý** 1–2 tỷ chia: 12/2026 đánh giá tác động và tư vấn; Q1 kiểm thử xâm nhập lần 1; Q3 kiểm thử đợt 6 tháng **[I]**.
10. **Thuê GPU** dưới 0,5 tỷ, nằm trong làm tròn của nguồn, không cộng vào tổng chặng.
11. **Nhịp nạp dự án** 10–15 mỗi quý (giai đoạn 5); lũy kế = 2 dự án mẫu + 10–15 mỗi quý.

## 9. Câu hỏi còn mở

1. Thêm vai trò "kỹ sư tích hợp, backend 1–2 người" để bảng vai trò khớp 18–22, hay giữ bảng 17–20 và nâng số người ở vai trò khác?
2. Số dự án đang thi công chính xác là bao nhiêu? Con số này quyết định nhịp nạp và mốc 100% (R3).
3. VII.14 xếp 2.1–2.4 và L4–L7 ở M4–M12, còn chương VI ghi L4–L7 là "Năm 2". Bản này theo VII.14 và đặt các điểm chạm đó ở Q4/2027; cần chốt.
4. Các điểm chạm an ninh tuyến L9–L12 (chương VI.7, L11 ưu tiên an toàn tính mạng) nằm ngoài phạm vi L1–L8 của bản này. Có đưa vào P10 không?
5. Lãnh đạo tập đoàn giao ai cùng người đề xuất làm các việc tháng 11/2026 (hỏi VNX, Arotech, SUMO; lấy báo giá; chốt dự án mẫu)?
6. Chủ sở hữu sản phẩm và pháp chế là ai (việc còn mở của plan.md)?

## 10. Nguồn

- [plan.md](../261031-0940-ai-core-plan-a-b/plan.md): quyết định đã chốt, giai đoạn, cổng, KPI tháng, rủi ro.
- [options-a-b-analysis.md](../261031-0940-ai-core-plan-a-b/options-a-b-analysis.md) §4, §6, "Ngoài tổng": chi phí, đội ngũ, giải ngân theo cổng.
- Giai đoạn 0–10: [phase-00](../261031-0940-ai-core-plan-a-b/phase-00-approval-governance-legal.md) đến [phase-10](../261031-0940-ai-core-plan-a-b/phase-10-operations-kpi-review.md): việc, nghiệm thu, ngân sách từng giai đoạn.
- `CHAPTER_AI_CORE_OPERATING_PLATFORM.md` VII.1, VII.8, VII.11–VII.14, VII.17: kết luận, tiêu chí thiết bị, chi phí, đội, nạp dự án, lộ trình, việc còn mở.
- `CHAPTER_OPEN_LINEAR_SITES_HIGHWAY_BRIDGE.md` VI.3–VI.4, VI.7 và `BRAINSTORMING_AND_FULL_ARCHITECTURE.md` 3.1: điểm chạm 1.1–4.2, L1–L12.
- [research-261031-2044-current-vendors-vnx-arotech-sumo.md](../reports/research-261031-2044-current-vendors-vnx-arotech-sumo.md): SUMO, Arotech, VNX.
