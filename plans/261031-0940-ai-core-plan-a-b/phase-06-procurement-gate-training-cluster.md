# Giai đoạn 6: Cổng mua sắm và cụm huấn luyện

Thời gian: M3–M8 · Phụ thuộc: Giai đoạn 1, 4 · Phụ trách: Ban chỉ đạo (quyết định); kỹ sư hạ tầng GPU (thực hiện) · Kế hoạch tổng: [plan.md](./plan.md)

## Mục tiêu

Chỉ mua cụm huấn luyện khi đã có người, có dữ liệu và mô hình đã chứng minh được giá trị.

## Việc cần làm

1. Họp cổng G2 (M3–M4) với 3 điều kiện: bộ đề ≥ 80% nhóm tra cứu, ≥ 50 nghìn mẫu huấn luyện khả dụng, ≥ 10 người.
2. Đạt: đặt hàng 2 node Blackwell 8 GPU, mạng tốc độ cao, lưu trữ; mở rộng chỗ đặt.
3. Lắp đặt, kiểm thử tải 72 giờ, nghiệm thu.
4. Cài lịch chạy chung cho huấn luyện ngôn ngữ, thị giác, point cloud.
5. Chuyển việc huấn luyện từ GPU thuê sang cụm riêng.

## Sản phẩm bàn giao

- Biên bản cổng G2
- Hợp đồng mua sắm
- Biên bản nghiệm thu cụm

## Nghiệm thu (đo được)

- [ ] Biên bản G2 ghi rõ số đo của 3 điều kiện
- [ ] Cụm chạy 72 giờ không lỗi phần cứng
- [ ] Một lượt SFT tham chiếu chạy lại trên cụm cho kết quả khớp lượt chạy trên GPU thuê

## Ngân sách **[I]**

25–36 tỷ (node 8 GPU khoảng 400.000–550.000 USD, cộng 15–25% mạng và lưu trữ). Phải thay bằng báo giá.

## Rủi ro

| Rủi ro | Cách chặn |
|---|---|
| Mua rồi để không | Cổng G2; lịch chạy chung nhiều nhóm; KPI mức sử dụng ≥ 50% sau M9 |
| Giá GPU biến động | Báo giá có hiệu lực ngắn; chốt giá ngay khi qua cổng |

## Nếu không đạt

Không qua G2: dừng ở A+ (giữ cụm suy luận, thuê GPU), họp lại sau 3 tháng. Vốn chưa giải ngân không mất.
