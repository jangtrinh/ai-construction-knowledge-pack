# Giai đoạn 2: Cụm suy luận và trung tâm dữ liệu

Thời gian: M0–M2 · Phụ thuộc: Giai đoạn 0 · Phụ trách: Kỹ sư hạ tầng GPU · Kế hoạch tổng: [plan.md](./plan.md)

## Mục tiêu

Có hạ tầng phục vụ trợ lý cho kỹ sư ngay từ tháng 2, đặt trong trung tâm dữ liệu thuê trong nước.

![Kỹ sư CC1 kiểm tra cụm suy luận và cụm huấn luyện GPU đặt tại trung tâm dữ liệu thuê trong nước](../../43b_AI_Core_Cum_GPU_Trung_Tam_Du_Lieu_HUD.jpg)

### Hình chi tiết: Cụm GPU tại trung tâm dữ liệu thuê

![Bản vẽ tách lớp: thuê GPU 3 tháng, cổng G2, cụm suy luận và cụm huấn luyện, dữ liệu nằm tại Việt Nam](../../47b_AI_Core_Blueprint_Cum_GPU_TTDL_HUD.jpg)

**Bước 1.** Nhận máy, lắp vào tủ, kiểm đúng cấu hình đặt hàng.

![Nhận máy, lắp vào tủ, kiểm đúng cấu hình đặt hàng.](../../48b_AI_Core_GPU_B1_Nhan_May_Lap_Tu_HUD.jpg)

**Bước 2.** Chạy lại một lượt huấn luyện tham chiếu; kết quả phải khớp lượt chạy trên GPU thuê thì mới nghiệm thu cụm.

![Chạy lại một lượt huấn luyện tham chiếu; kết quả phải khớp lượt chạy trên GPU thuê thì mới nghiệm thu cụm.](../../49b_AI_Core_GPU_B2_Chay_Kiem_Thu_HUD.jpg)

**Bước 3.** Giám sát 24/7 tải GPU, độ trễ và lỗi; cảnh báo khi có sự cố.

![Giám sát 24/7 tải GPU, độ trễ và lỗi; cảnh báo khi có sự cố.](../../50b_AI_Core_GPU_B3_Giam_Sat_Van_Hanh_HUD.jpg)

## Việc cần làm

1. Gửi yêu cầu báo giá chỗ đặt (khoảng 40 kW, có dự phòng) tới Viettel IDC và FPT cùng lúc.
2. Gửi yêu cầu báo giá 2 node suy luận 8× GPU 96 GB và cả danh sách thiết bị đo đạc.
3. Ký hợp đồng chỗ đặt; đặt hàng cụm suy luận.
4. Lắp đặt, mạng riêng tới văn phòng và công trường, VPN, sao lưu.
5. Cài nền phục vụ mô hình (vLLM hoặc tương đương), giám sát, nhật ký truy cập.
6. Thuê GPU trong nước cho giai đoạn 4 trong lúc chờ máy về.

## Sản phẩm bàn giao

- Hợp đồng chỗ đặt
- Cụm suy luận chạy thật
- Sơ đồ mạng và chính sách truy cập
- Bảng giám sát GPU, độ trễ, lỗi

## Nghiệm thu (đo được)

- [ ] Có ≥ 2 báo giá chỗ đặt và ≥ 2 báo giá máy
- [ ] Cụm suy luận phục vụ mô hình 27–35B với độ trễ trả lời ≤ 5 giây cho 50 người dùng cùng lúc
- [ ] Thử khôi phục từ bản sao lưu thành công
- [ ] Kiểm thử xâm nhập lần 1 không còn lỗi mức cao

## Ngân sách **[I]**

5–8 tỷ máy; chỗ đặt, điện, làm mát 3–6 tỷ năm 1.

## Rủi ro

| Rủi ro | Cách chặn |
|---|---|
| Giao máy chậm | Thuê GPU trong nước làm cầu nối; đặt hàng ngay sau G1 |
| Chỗ đặt không đủ điện cho cụm huấn luyện sau này | Báo giá luôn phần mở rộng 40 kW ngay từ đầu |

## Nếu không đạt

Máy chưa về: phục vụ trợ lý trên GPU thuê trong nước, dữ liệu không ra khỏi Việt Nam.
