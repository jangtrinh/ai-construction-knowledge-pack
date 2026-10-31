# Giai đoạn 7: Chương trình huấn luyện mô hình

Thời gian: M2–M12 · Phụ thuộc: Giai đoạn 4, 5, 6 · Phụ trách: Trưởng nhóm nghiên cứu AI · Kế hoạch tổng: [plan.md](./plan.md)

## Mục tiêu

Có mô hình ngành CC1 v1 thắng mô hình nền trên bộ đề, không huấn luyện từ đầu.

## Việc cần làm

1. Thang huấn luyện theo thứ tự: RAG → tinh chỉnh embedding và OCR → SFT LoRA → DPO → RLVR (GRPO) cho bài toán có đáp án kiểm được → chưng cất từ mô hình thầy → CPT khi đủ dữ liệu.
2. SFT v1 trên GPU thuê (M2–M3), khoảng 12 giờ GPU cho 90 triệu token.
3. DPO từ phản hồi thật của kỹ sư (M4–M6).
4. RLVR cho tính khối lượng, đối chiếu đơn vị, tra định mức (M6–M9).
5. Chưng cất từ DeepSeek-V4-Flash; CPT khoảng 1 tỷ token ngành khi có cụm riêng (M8–M10).
6. Mỗi bản mô hình đi qua bộ đề và cổng phát hành trước khi phục vụ người dùng.

## Sản phẩm bàn giao

- Các bản mô hình có phiên bản và thẻ mô hình
- Nhật ký huấn luyện, dữ liệu, cấu hình
- Biên bản cổng G4

## Nghiệm thu (đo được)

- [ ] Mỗi bản phát hành thắng bản đang chạy trên bộ đề; không nhóm nào giảm
- [ ] Tỷ lệ câu có trích dẫn giữ 100%
- [ ] CC1 v1 qua cổng G4 tại M10
- [ ] Chạy lại được mọi lượt huấn luyện từ nhật ký

## Ngân sách **[I]**

Nằm trong cụm của giai đoạn 6; trước cụm dùng GPU thuê của giai đoạn 4.

## Rủi ro

| Rủi ro | Cách chặn |
|---|---|
| Mô hình quên kiến thức chung | Trộn dữ liệu chung; bộ đề có nhóm kiến thức chung |
| Dữ liệu huấn luyện chứa dữ liệu cá nhân | Lọc dữ liệu cá nhân trước huấn luyện; nhật ký nguồn |

## Nếu không đạt

Bản mới không thắng: giữ bản cũ. CC1 v1 không qua G4: phục vụ mô hình nền cộng LoRA.
