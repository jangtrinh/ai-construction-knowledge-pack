# Giai đoạn 9: Số hóa hồ sơ cũ

Thời gian: M5–M15 · Phụ thuộc: Giai đoạn 2, 5 · Phụ trách: Nhóm OCR; văn thư lưu trữ · Kế hoạch tổng: [plan.md](./plan.md)

## Mục tiêu

Đưa hồ sơ các dự án đã xong vào lõi để trợ lý tra cứu và học từ hồ sơ các dự án đã xong.

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

## Việc cần làm

1. Kiểm kê hồ sơ lưu trữ: số thùng, số trang, loại tài liệu.
2. Xếp ưu tiên: hồ sơ hoàn công, nghiệm thu, thanh quyết toán, sự cố.
3. Quét, chạy OCR qua luồng của giai đoạn 5, duyệt người theo mẫu.
4. Gắn vào ontology theo dự án cũ; phân quyền như dự án đang chạy.
5. Dùng làm dữ liệu cho RAG và cho CPT ở giai đoạn 7.

## Sản phẩm bàn giao

- Báo cáo kiểm kê
- Kho hồ sơ cũ tra cứu được
- Bộ dữ liệu ngành cho huấn luyện

## Nghiệm thu (đo được)

- [ ] Kiểm kê xong trước M6
- [ ] Nhóm ưu tiên số hóa xong trước M12
- [ ] Độ chính xác OCR mẫu kiểm tra ≥ 95% chữ in

## Ngân sách **[I]**

3–6 tỷ năm 1; 1–3 tỷ năm 2.

## Rủi ro

| Rủi ro | Cách chặn |
|---|---|
| Khối lượng hồ sơ lớn hơn dự tính | Kiểm kê trước khi ký hợp đồng quét |
| Hồ sơ chứa dữ liệu cá nhân | Lọc và che theo chính sách dữ liệu của giai đoạn 0 |

## Nếu không đạt

Thiếu ngân sách: chỉ số hóa nhóm ưu tiên.
