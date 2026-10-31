# Giai đoạn 4: Bộ đề và thi đấu mô hình

Thời gian: M0–M3 · Phụ thuộc: Giai đoạn 3 (một phần) · Phụ trách: Trưởng nhóm nghiên cứu AI; chỉ huy trưởng và QS 2 dự án mẫu · Kế hoạch tổng: [plan.md](./plan.md)

## Mục tiêu

Chọn mô hình nền bằng số đo trên câu hỏi thật của CC1, không bằng bảng xếp hạng chung.

![Chỉ huy trưởng và QS cùng nhóm nghiên cứu AI xem kết quả thi đấu 4 mô hình mở trên bộ đề của CC1](../../46b_AI_Core_Bo_De_Thi_Dau_Mo_Hinh_HUD.jpg)

### Hình chi tiết: Bộ đề và thi đấu mô hình

![Bản vẽ tách lớp: bộ đề từ 300 câu, 4 nhóm câu có câu bẫy, chấm tự động, cổng G2, bộ đề bị khóa](../../60b_AI_Core_Blueprint_Bo_De_Thi_Dau_HUD.jpg)

**Bước 1.** Chỉ huy trưởng viết câu hỏi thật từ công trường.

![Chỉ huy trưởng viết câu hỏi thật từ công trường.](../../61b_AI_Core_Bo_De_B1_Thu_Cau_Hoi_That_HUD.jpg)

**Bước 2.** QS viết đáp án chuẩn, có trích dẫn tài liệu.

![QS viết đáp án chuẩn, có trích dẫn tài liệu.](../../62b_AI_Core_Bo_De_B2_QS_Viet_Dap_An_HUD.jpg)

**Bước 3.** Chạy 4 mô hình mở trên GPU thuê; mô hình bịa số ở câu bẫy bị loại.

![Chạy 4 mô hình mở trên GPU thuê; mô hình bịa số ở câu bẫy bị loại.](../../63b_AI_Core_Bo_De_B3_Chay_Tren_GPU_Thue_HUD.jpg)

## Việc cần làm

1. Thu 300–500 câu hỏi thật từ chỉ huy trưởng, QS, kỹ sư; chia nhóm: tra cứu, tính khối lượng, đối chiếu, câu bẫy.
2. Viết đáp án chuẩn có trích dẫn; QS xác nhận phần khối lượng.
3. Thuê GPU trong nước; chạy các ứng viên: Qwen3.6-27B, Qwen3.6-35B-A3B, Gemma 4 31B, Gemma 4 26B MoE.
4. Kiểm tra giấy phép từng mô hình; lưu bản sao LICENSE gốc.
5. Chấm điểm tự động cộng chấm tay mẫu; công bố bảng kết quả.
6. Thử SFT LoRA v1 trên mô hình thắng để đo mức cải thiện.

## Sản phẩm bàn giao

- Bộ đề v1 có phiên bản, khóa không cho mô hình học
- Bảng kết quả thi đấu
- Quyết định mô hình nền có lý do

## Nghiệm thu (đo được)

- [ ] Bộ đề ≥ 300 câu, mỗi nhóm ≥ 50 câu
- [ ] Mô hình chọn đạt ≥ 80% nhóm tra cứu (điều kiện G2)
- [ ] 0 câu bịa số liệu ở nhóm bẫy khi có công cụ truy vấn
- [ ] Giấy phép mô hình chọn cho phép dùng thương mại

## Ngân sách **[I]**

Thuê GPU < 0,5 tỷ (khoảng 400–1.000 giờ GPU, 1.000–3.000 USD).

## Rủi ro

| Rủi ro | Cách chặn |
|---|---|
| Bộ đề lọt vào dữ liệu huấn luyện | Tách kho; kiểm tra trùng trước mỗi lần huấn luyện |
| Ứng viên mới ra giữa chừng | Bộ đề cố định nên thêm ứng viên chỉ tốn một lượt chạy |

## Nếu không đạt

Không ứng viên nào đạt 80%: giữ cụm suy luận, tập trung RAG và dữ liệu, xét lại sau 3 tháng (cấu hình A+).
