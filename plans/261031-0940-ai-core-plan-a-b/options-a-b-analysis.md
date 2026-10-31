# Kế hoạch lõi AI CC1: Phương án A và B

Ngày: 31/10/2026 · Trạng thái: **đã chọn phương án B theo cổng** (31/10/2026)

Liên quan:

- `CHAPTER_AI_CORE_OPERATING_PLATFORM.md`
- `plans/reports/research-261031-0917-open-llm-selection-training.md`

Nhãn:

- **[S]** giá hoặc thông số từ trang tổng hợp hoặc đại lý;
- **[I]** ước lượng của nhóm tư vấn.

Tỷ giá tạm: 1 USD ≈ 26.000 đồng. **Mọi số tiền phải có báo giá trước khi trình duyệt ngân sách.**

## 1. Bối cảnh

- CC1 có ngân sách và sẵn sàng chi.
- Phạm vi: toàn tập đoàn, cả công trường khép kín và công trường tuyến.
- Khi tiền không còn là ràng buộc, các ràng buộc thật là:
  1. **dữ liệu sẵn sàng;**
  2. **tuyển được người giỏi;**
  3. **thời gian.**

Hai phương án khác nhau ở tốc độ, quyền kiểm soát và mức cam kết. Phần chung giống nhau.

## 2. Phần chung của cả hai phương án

| Hạng mục | Nội dung |
|---|---|
| Bộ đề kiểm thử | 300–500 câu, là thước đo mọi quyết định |
| Ontology + đồ thị tri thức | Chuỗi khối lượng: thiết kế → dự toán → nhập về → thi công → nghiệm thu → thanh toán |
| Nền dữ liệu | Kho đối tượng, PostgreSQL, Kafka, phân quyền theo dự án |
| OCR và ánh xạ BOQ | Theo đợt biểu mẫu, QS dự án xác nhận |
| Mô hình | Nền mở đa ngôn ngữ, chọn bằng thi đấu; không huấn luyện từ đầu |
| Pháp lý | Luật 91/2025, NĐ 356/2025, Luật Trí tuệ nhân tạo 134/2025 |
| Người phê duyệt | Mọi lệnh ghi của tác tử, mọi cảnh báo xử phạt |

## 3. Phương án A: Tinh gọn, thuê GPU, mở rộng theo đợt

### Cách làm

| Hạng mục | Nội dung |
|---|---|
| Hạ tầng suy luận | 1 cụm nội bộ 4 GPU 48 GB |
| Hạ tầng huấn luyện | Thuê node 8× H100/H200 tại FPT AI Factory hoặc Viettel Cloud AI-Native theo từng đợt |
| Mô hình thầy | Thuê GPU khi cần sinh dữ liệu |
| Đội ngũ | 8–9 người; QS dự án kiêm nhiệm |
| Nạp dự án | 3–5 dự án mỗi quý |
| Mô hình | Nền mở + LoRA theo tác vụ; CPT chỉ khi bộ đề cho thấy hổng |
| Hồ sơ cũ | Số hóa khi có yêu cầu cụ thể |

### Chi phí **[I]**

| | Năm 1 | Năm 2 | Năm 3 | 3 năm |
|---|---|---|---|---|
| Tổng | 7–13 tỷ | 5–12 tỷ | 5–10 tỷ | **17–35 tỷ** |

Chi tiết theo hạng mục: PHẦN VII, mục VII.12.

### Ưu điểm

- Vốn ban đầu thấp. Dễ đổi hướng nếu thị trường mô hình thay đổi.
- Không gánh rủi ro GPU lỗi thời: mỗi thế hệ GPU thường bị thế hệ mới thay sau khoảng 1–2 năm.
- Bắt đầu ngay, không chờ mua sắm, lắp đặt.
- Học trên dữ liệu thật trước khi cam kết lớn.

### Nhược điểm

- **Phủ toàn tập đoàn chậm:** 3–5 dự án mỗi quý, phải 2–3 năm mới phủ hết, tùy số dự án đang chạy.
- Phụ thuộc lịch và giá thuê GPU của nhà cung cấp; không chạy mô hình thầy liên tục được.
- Ít vòng lặp huấn luyện, ít chưng cất quy mô lớn.
- Dữ liệu huấn luyện rời hạ tầng CC1, dù vẫn ở trong nước.
- Năng lực AI nội bộ mỏng; khó thành tài sản riêng của tập đoàn.

## 4. Phương án B: Đầu tư mạnh, hạ tầng riêng, mô hình ngành CC1

### Cách làm

| Hạng mục | Nội dung |
|---|---|
| Hạ tầng huấn luyện + thầy | 2 node 8 GPU thế hệ Blackwell (HGX B200/B300), mạng InfiniBand, lưu trữ nhanh |
| Hạ tầng suy luận | 2 node 8× GPU 96 GB (RTX PRO 6000 Blackwell) phục vụ toàn tập đoàn |
| Nơi đặt | Thuê chỗ tại trung tâm dữ liệu trong nước có làm mát chất lỏng (Viettel công bố rack tới 60 kW **[S]**) |
| Mô hình thầy | Chạy nội bộ liên tục; dữ liệu không rời hạ tầng CC1 |
| Đội ngũ | 18–22 người + chương trình gán nhãn 10–15 kỹ sư kiêm nhiệm hoặc thuê ngoài |
| Nạp dự án | 10–15 dự án mỗi quý; dưới 30 dự án nên phủ toàn tập đoàn trong khoảng 6–9 tháng |
| Mô hình | "Mô hình ngành CC1": CPT trên nền 27–31B từ tháng 4–6, chưng cất quy mô lớn, cập nhật hằng tháng |
| Hồ sơ cũ | Số hóa toàn bộ hồ sơ các dự án đã làm, làm kho tri thức và kho huấn luyện |
| GPU dùng thêm cho | Huấn luyện lại mô hình thị giác (camera, drone), xử lý point cloud, dựng Digital Twin |

### Đội ngũ phương án B

| Vai trò | Số người |
|---|---|
| Trưởng nhóm nghiên cứu AI (senior, có thể là chuyên gia Việt kiều) | 1–2 |
| Kỹ sư ML / LLM | 4 |
| Kỹ sư dữ liệu | 4 |
| Kỹ sư tri thức ngành (kỹ sư xây dựng) | 4 |
| MLOps / vận hành cụm GPU | 2–3 |
| Quản lý sản phẩm | 1–2 |
| Bảo mật, pháp chế | 1 |
| Gán nhãn (kỹ sư kiêm nhiệm hoặc thuê ngoài) | 10–15 |

### Chi phí **[I]**

| Hạng mục | Năm 1 | Năm 2 | Năm 3 | Cơ sở |
|---|---|---|---|---|
| Cụm huấn luyện (2 node Blackwell + mạng + lưu trữ) | 25–36 tỷ | — | — | Node 8 GPU khoảng 400.000–550.000 USD **[S]**, cộng 15–25% mạng và lưu trữ |
| Cụm suy luận (2 node 8× GPU 96 GB) | 5–8 tỷ | — | — | Node 8× RTX PRO 6000 khoảng 100.000–150.000 USD **[S]** |
| Chỗ đặt, điện, làm mát (khoảng 40 kW) | 3–6 tỷ | 4–6 tỷ | 4–6 tỷ | Tham chiếu quốc tế khoảng 400 USD/kW/tháng **[S]**; cần báo giá Viettel IDC, FPT |
| Đội 18–22 người | 14–24 tỷ | 14–24 tỷ | 14–24 tỷ | 60–100 triệu đồng / người / tháng |
| Chương trình gán nhãn | 3–6 tỷ | 2–4 tỷ | 2–4 tỷ | Kỹ sư kiêm nhiệm hoặc thuê ngoài |
| Số hóa hồ sơ cũ (quét, OCR, duyệt) | 3–6 tỷ | 1–3 tỷ | — | Tùy khối lượng hồ sơ lưu trữ |
| Lưu trữ quy mô PB | 1–3 tỷ | 1–2 tỷ | 1–2 tỷ | Point cloud, video, hồ sơ số hóa |
| Pháp lý, bảo mật, tư vấn | 1–2 tỷ | 0,5–1 tỷ | 0,5–1 tỷ | Đánh giá độc lập |
| Dự phòng thay GPU | — | — | 5–10 tỷ | Thế hệ GPU mới sau 2–3 năm |
| **Cộng (làm tròn)** | **55–90 tỷ** | **23–40 tỷ** | **27–48 tỷ** | **3 năm: khoảng 105–180 tỷ** |

### Ưu điểm

- **Nhanh:** phủ toàn tập đoàn trong khoảng 6–9 tháng (dưới 30 dự án), thay vì 2–3 năm.
- **Tự kiểm soát dữ liệu:** dữ liệu và mô hình thầy không rời hạ tầng CC1, chủ quyền dữ liệu cao hơn phương án A.
- **Lặp nhanh:** CPT, chưng cất, RLVR chạy hằng tuần, không chờ lịch thuê.
- **Tài sản lâu dài:** mô hình ngành CC1, kho dữ liệu đã gán nhãn, đội AI nội bộ.
- **Dùng chung GPU:** thị giác máy, đám mây điểm (point cloud), bản sao số của các điểm chạm cũng chạy trên cụm này.
- **Số hóa toàn bộ hồ sơ cũ:** tri thức nhiều năm của tập đoàn tra cứu được.

### Nhược điểm

- **Vốn lớn:** tổng 3 năm khoảng gấp 5 lần phương án A (so mức giữa hai khoảng).
- **GPU lỗi thời nhanh:** cần dự phòng thay thế sau 2–3 năm.
- **Tuyển 20 người giỏi về AI tại Việt Nam là rủi ro chính:** thiếu người thì cụm GPU nằm không.
- **Thời gian mua sắm, lắp đặt:** vài tháng; cần chỗ đặt có điện và làm mát đủ.
- **Áp lực "phải dùng GPU":** dễ huấn luyện trước khi dữ liệu sẵn sàng.
- **Quản lý phức tạp hơn:** vận hành cụm, bảo trì, an ninh vật lý.

Ngay cả phương án B vẫn **không** huấn luyện mô hình từ đầu. Tiền không giải được bài toán thiếu dữ liệu tiếng Việt ngành xây dựng ở quy mô hàng nghìn tỷ token.

## 5. So sánh

| Tiêu chí | A | B |
|---|---|---|
| Phủ toàn tập đoàn | 2–3 năm | khoảng 6–9 tháng (dưới 30 dự án) |
| Chi phí 3 năm | 17–35 tỷ | 105–180 tỷ |
| Vốn ban đầu | Thấp (khoảng 2 tỷ phần cứng) | Cao (khoảng 30–44 tỷ phần cứng) |
| Kiểm soát dữ liệu | Tốt (trong nước) | Tối đa (trong hạ tầng CC1) |
| Tốc độ lặp huấn luyện | Theo đợt thuê | Hằng tuần |
| Mô hình ngành riêng | Có thể, chậm | Có, từ tháng 6 |
| Rủi ro tuyển người | Thấp | Cao |
| Rủi ro lãng phí phần cứng | Thấp | Trung bình đến cao |
| Khả năng đổi hướng | Cao | Trung bình |

## 6. Khuyến nghị: Phương án B, giải ngân theo cổng

Có tiền và phạm vi toàn tập đoàn thì nên chọn B vì tốc độ. Nhưng không mua cụm huấn luyện trước khi có số đo.

| Mốc | Việc | Cổng để đi tiếp |
|---|---|---|
| Tháng 0 | Phê duyệt B; tuyển trưởng nhóm nghiên cứu và 6–8 người đầu; mua cụm suy luận (nhu cầu chắc chắn) | — |
| Tháng 0–3 | Thuê GPU trong nước: thi đấu mô hình, SFT v1, đo khối lượng dữ liệu thật; khảo sát chỗ đặt, lấy báo giá cụm huấn luyện | Bộ đề đạt mốc; đo được lượng dữ liệu; đã tuyển ≥ 10 người |
| Tháng 3–4 | **Cổng mua sắm:** đặt hàng cụm huấn luyện | Cả 3 điều kiện trên đạt |
| Tháng 6–8 | Cụm huấn luyện vận hành; bắt đầu CPT mô hình ngành CC1 và chưng cất quy mô lớn | Nghiệm thu cụm |
| Tháng 6–12 | Nạp 10–15 dự án mỗi quý; số hóa hồ sơ cũ | Không rò rỉ giữa dự án; kỹ sư dùng hằng ngày |
| Cuối năm 1 | Đánh giá: phủ toàn tập đoàn, chất lượng mô hình ngành | Quyết định mở rộng hoặc giữ nguyên |

Nếu cổng tháng 3–4 không đạt (thiếu người hoặc thiếu dữ liệu), dừng ở mức A+: giữ cụm suy luận, tiếp tục thuê GPU, chưa mua cụm huấn luyện. Phần vốn chưa giải ngân không bị mất.

## 7. Quyết định của CC1 (31/10/2026)

| Câu hỏi | Chốt |
|---|---|
| Phương án | B theo cổng |
| Số dự án đang thi công | Dưới 30 → với 10–15 dự án mỗi quý, phủ toàn tập đoàn trong khoảng 6–9 tháng |
| Chỗ đặt máy chủ | Thuê trung tâm dữ liệu (Viettel IDC hoặc FPT), cần báo giá theo kW và làm mát chất lỏng |

Việc kế tiếp: lấy báo giá cụm suy luận, cụm huấn luyện và chỗ đặt; mô tả công việc cho trưởng nhóm nghiên cứu AI; danh sách dự án cho đợt nạp đầu.

## 8. Nguồn giá

- Máy chủ Blackwell 8 GPU: [intuitionlabs.ai](https://intuitionlabs.ai/pdfs/data-center-gpu-prices.pdf), [gpusmith.com](https://gpusmith.com/articles/en/nvidia-dgx-b300-price), [amcompute.com](https://www.amcompute.com/gpu-server-values/b200)
- HGX H200 và RTX PRO 6000: [intuitionlabs.ai](https://intuitionlabs.ai/articles/data-center-gpu-prices), [amcompute.com](https://www.amcompute.com/gpu-server-values/h200), [tech-insider.org](https://tech-insider.org/nvidia-rtx-pro-6000-blackwell-price-2026/)
- Trung tâm dữ liệu Việt Nam: [businesswire.com](https://www.businesswire.com/news/home/20251203389344/en/Vietnam-Colocation-Data-Center-Portfolio-Analysis-Report-2025-Detailed-Analysis-of-29-Existing-Data-Centers-20-Upcoming-Data-Centers-and-20-Major-Operatorsinvestors---ResearchAndMarkets.com), [whtop.com (Viettel IDC)](https://www.whtop.com/plans/viettelidc.com.vn/147298)
- Giá thuê GPU: [factory.fpt.ai](https://factory.fpt.ai/ai-insights/h100-cost)
