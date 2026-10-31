# Giai đoạn 5: OCR, ánh xạ BOQ và nạp dự án

Thời gian: M1–M9 · Phụ thuộc: Giai đoạn 3, 4 · Phụ trách: Nhóm OCR; QS kiêm nhiệm từng dự án · Kế hoạch tổng: [plan.md](./plan.md)

## Mục tiêu

Nạp toàn bộ dưới 30 dự án đang thi công, 10–15 dự án mỗi quý, mỗi dự án có BOQ đã ánh xạ và đối chiếu khối lượng chạy.

![QS quét hồ sơ giấy có dấu đỏ; màn hình đặt bản scan cạnh bảng đã trích để khớp BOQ](../../44b_AI_Core_OCR_Doc_Ho_So_So_Hoa_HUD.jpg)

### Hình chi tiết: Đọc hồ sơ OCR và số hóa hồ sơ cũ

![Bản vẽ tách lớp: quét, phân loại mẫu, trích trường và bảng, QS duyệt; khớp BOQ và kho hồ sơ cũ](../../55b_AI_Core_Blueprint_OCR_So_Hoa_HUD.jpg)

**Bước 1.** Phân loại trang scan theo mẫu: biên bản, phiếu nhập kho, nhật ký.

![Phân loại trang scan theo mẫu: biên bản, phiếu nhập kho, nhật ký.](../../56b_AI_Core_OCR_B1_Phan_Loai_Mau_HUD.jpg)

**Bước 2.** Trích từng trường, dấu đỏ, chữ viết tay và bảng khối lượng.

![Trích từng trường, dấu đỏ, chữ viết tay và bảng khối lượng.](../../57b_AI_Core_OCR_B2_Trich_Truong_Bang_HUD.jpg)

**Bước 3.** Ô có độ tin thấp chuyển cho QS sửa; bản sửa được lưu để mô hình học.

![Ô có độ tin thấp chuyển cho QS sửa; bản sửa được lưu để mô hình học.](../../58b_AI_Core_OCR_B3_QS_Duyet_Do_Tin_Thap_HUD.jpg)

**Bước 4.** Số hóa hồ sơ cũ: gắn mã thùng, quét sách, ưu tiên hồ sơ hoàn công.

![Số hóa hồ sơ cũ: gắn mã thùng, quét sách, ưu tiên hồ sơ hoàn công.](../../59b_AI_Core_OCR_B4_So_Hoa_Ho_So_Cu_HUD.jpg)

### Hình chi tiết: Ontology và sáu nguồn khối lượng

![Bản vẽ tách lớp: chuỗi cấu kiện, dòng BOQ, vật tư; sáu nguồn khối lượng hội về một điểm đối chiếu, cảnh báo kèm bằng chứng](../../64b_AI_Core_Blueprint_Ontology_6_Nguon_HUD.jpg)

**Bước 1.** Xe vật tư rời qua cân và cổng quét thùng; tỷ trọng lệch dải chuẩn thì gắn cờ.

![Xe vật tư rời qua cân và cổng quét thùng; tỷ trọng lệch dải chuẩn thì gắn cờ.](../../65b_AI_Core_KL_B1_Can_Quet_Thung_Xe_HUD.jpg)

**Bước 2.** Drone RTK đo thể tích đống vật liệu, so với sổ kho.

![Drone RTK đo thể tích đống vật liệu, so với sổ kho.](../../66b_AI_Core_KL_B2_Drone_Do_Bai_Tap_Ket_HUD.jpg)

**Bước 3.** Phiếu xe bồn so với thể tích cấu kiện trong BIM để tính hao hụt bê tông.

![Phiếu xe bồn so với thể tích cấu kiện trong BIM để tính hao hụt bê tông.](../../67b_AI_Core_KL_B3_Xe_Bon_So_BIM_HUD.jpg)

**Bước 4.** Cảnh báo chênh lệch kèm phiếu cân, ảnh hiện trạng và dòng BOQ liên quan.

![Cảnh báo chênh lệch kèm phiếu cân, ảnh hiện trạng và dòng BOQ liên quan.](../../68b_AI_Core_KL_B4_Canh_Bao_Kem_Bang_Chung_HUD.jpg)

## Việc cần làm

1. Dựng luồng OCR: PaddleOCR-VL cho bố cục và bảng, VietOCR cho chữ viết tay; duyệt người khi độ tin thấp.
2. Gán nhãn và tinh chỉnh OCR trên phiếu nhập kho, nhật ký, biên bản nghiệm thu của CC1.
3. Ánh xạ BOQ sang ontology; QS dự án xác nhận từng dòng.
4. Đối chiếu 6 nguồn khối lượng: BOQ, BIM, phiếu nhập, nhật ký, đo hiện trường, thanh toán.
5. Nạp 2 dự án mẫu (M1–M3), rồi theo đợt 10–15 dự án mỗi quý theo danh sách ưu tiên của ban chỉ đạo.
6. Mua thiết bị đo đạc thương mại theo báo giá; nối dữ liệu đo vào lớp đối chiếu.

## Sản phẩm bàn giao

- Luồng OCR có duyệt người
- Bộ dữ liệu gán nhãn OCR
- Mỗi dự án: BOQ đã ánh xạ, đối chiếu chạy, phiếu nghiệm thu nạp dự án

## Nghiệm thu (đo được)

- [ ] OCR theo trường ≥ 95% chữ in, ≥ 85% viết tay; tỷ lệ đi thẳng ≥ 60%
- [ ] 100% dòng BOQ có QS xác nhận trước khi dùng cho đối chiếu
- [ ] Mọi cảnh báo chênh lệch có bằng chứng trỏ về nguồn
- [ ] 100% dự án đang thi công đã nạp trước M9

## Ngân sách **[I]**

Gán nhãn 3–6 tỷ năm 1, 2–4 tỷ/năm sau đó. Thiết bị đo theo báo giá, chưa tính trong bảng này.

## Rủi ro

| Rủi ro | Cách chặn |
|---|---|
| QS kiêm nhiệm quá tải | Gom việc xác nhận theo lô; mô hình đề xuất, QS chỉ duyệt |
| Mẫu biểu khác nhau giữa dự án | Thư viện mẫu biểu chung; mẫu mới đi qua duyệt người |

## Nếu không đạt

Dự án chưa đạt nghiệm thu nạp: chỉ bật tra cứu, chưa bật đối chiếu khối lượng.
