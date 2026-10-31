# Giai đoạn 2: Cụm suy luận và trung tâm dữ liệu

Thời gian: M0–M2 · Phụ thuộc: Giai đoạn 0 · Phụ trách: Kỹ sư hạ tầng GPU · Kế hoạch tổng: [plan.md](./plan.md)

## Mục tiêu

Có hạ tầng phục vụ trợ lý cho kỹ sư ngay từ tháng 2, đặt trong trung tâm dữ liệu thuê trong nước.

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
