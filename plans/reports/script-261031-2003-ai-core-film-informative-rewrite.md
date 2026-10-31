# Kịch bản phim lõi AI — bản cho người nghe không biết về AI

Người nghe: lãnh đạo và kỹ sư xây dựng CC1, không có nền về AI. Họ biết BIM, BOQ, nghiệm thu, phiếu cân; không biết GPU, mô hình, OCR, tinh chỉnh.

Nguyên tắc:
- Mỗi câu nói cái gì, để làm gì, kèm một con số hoặc ví dụ có trong chương VII.
- Từ AI nào cũng được thay bằng lời thường, hoặc giải nghĩa ngay lần đầu xuất hiện: GPU = chip xử lý AI; mô hình AI = phần mềm AI đọc và trả lời tiếng Việt; OCR = đọc chữ trên giấy scan; ontology = bộ từ điển chung; tác tử = trợ lý tự động; cổng G = mốc kiểm tra bắt buộc qua mới làm bước sau.
- Tên phương pháp (LoRA, RLVR, SFT, token) không đọc; tên sản phẩm (PaddleOCR-VL, VietOCR, Qwen, Gemma 4, Jetson) vẫn đọc thẳng như chủ đã chốt, kèm vai trò.
- Ngôi thứ ba, giọng trang trọng; "CC1" đọc "C C One" như phim công trường.

Nguồn: `CHAPTER_AI_CORE_OPERATING_PLATFORM.md` (VII.1, VII.3, VII.6, VII.7, VII.10, VII.11, VII.14, VII.18), `plans/261031-0940-ai-core-plan-a-b/phase-07-model-training-program.md`.

| Cảnh | Nhãn trên hình | Lời đọc |
|---|---|---|
| 00 mở | Lõi vận hành AI | Lõi vận hành AI là bộ não dùng chung cho mọi công trường của CC1. Hồ sơ, phần mềm AI và máy chủ đều đặt tại Việt Nam. |
| 47 | Sau cổng G2, cụm huấn luyện | AI chạy trên những chip xử lý chuyên dụng, gọi là GPU. Ba tháng đầu, CC1 chỉ thuê GPU trong nước. Muốn mua dàn máy riêng để dạy AI, phải qua mốc kiểm tra thứ hai, gọi là cổng G2: AI trả lời đúng từ 80% bộ câu hỏi kiểm tra, và đã có 50 nghìn mẫu dữ liệu. |
| 43 | Cụm suy luận, 8 GPU/node | Dàn máy trả lời câu hỏi hằng ngày thì mua ngay từ đầu: hai máy chủ, mỗi máy tám GPU, đặt trong trung tâm dữ liệu thuê của Viettel hoặc FPT. |
| 50 | Giám sát 24/7 | Đội vận hành theo dõi máy suốt 24 giờ: mức tải, thời gian trả lời và lỗi. Máy mới chỉ được nghiệm thu khi chạy lại một bài mẫu và cho kết quả khớp với lần chạy trên máy thuê. |
| 78 | 6 bước đọc hồ sơ | Hóa đơn điện tử, file Excel và bản vẽ được đọc thẳng từ file gốc. Chỉ giấy tờ scan mới cần phần mềm đọc chữ, gọi là OCR. Trang scan vào hàng chờ, PaddleOCR-VL đọc chữ, bảng và con dấu; kỹ sư khối lượng duyệt xong mới lưu vào hệ thống. |
| 79 | Chụp phiếu, tự cắt trang | Ngoài công trường, kỹ sư khối lượng chụp phiếu cân hoặc biên bản bằng máy tính bảng. Ứng dụng tự cắt đúng khung trang rồi gửi về máy chủ trong nước. |
| 58 | Độ tin thấp, QS sửa | Chỗ nào máy đọc không chắc, thường là chữ viết tay hay chữ mờ, sẽ chuyển cho kỹ sư sửa. Mỗi lần sửa được giữ lại làm ví dụ, để phần mềm VietOCR học đọc đúng chữ viết của chính CC1. |
| 51 | 4 bước trợ lý | Trợ lý AI trả lời qua bốn bước: kiểm tra người hỏi được xem hồ sơ nào, tìm đúng đoạn tài liệu, rồi phần mềm AI như Qwen soạn câu trả lời, ghi rõ trích từ đâu. Riêng con số khối lượng và chi phí luôn lấy thẳng từ phần mềm quản lý ERP, AI không tự đoán. |
| 52 | Hỏi giọng nói | Chỉ huy trưởng hỏi bằng giọng nói tiếng Việt ngay trên sàn, ví dụ: tầng 9 còn cấu kiện nào đã đổ bê tông mà chưa nghiệm thu? Không cần gõ phím. |
| 53 | Đoạn trích | Câu trả lời hiện cạnh tài liệu gốc, tô sáng đúng đoạn được trích, để người hỏi tự kiểm lại trước khi dùng. |
| 60 | Bộ đề ≥300 câu, câu bẫy | Trước khi chọn AI, CC1 soạn một bộ đề thi: 300 đến 500 câu hỏi thật do chỉ huy trưởng, kỹ sư khối lượng và giám sát viết, kèm đáp án và tài liệu gốc. Có câu về tiêu chuẩn, khối lượng, nghiệm thu, an toàn, và cả câu bẫy. |
| 46 | 4 mô hình mở, cổng G2 ≥80% | Bốn phần mềm AI mở, được phép dùng cho doanh nghiệp, như Qwen và Gemma 4, cùng làm bộ đề và được máy chấm điểm. Đúng từ 80% mới qua cổng G2. |
| 63 | Bịa số = loại | Vòng thi chạy trên máy thuê nên chưa phải mua máy. Phần mềm AI nào bịa ra con số thay vì trả lời theo hồ sơ thì bị loại ngay. |
| 64 | 6 nguồn, gắn cờ lệch | Để so khối lượng, CC1 dựng một bộ từ điển chung, gọi là ontology, nối từng cấu kiện với dòng BOQ. Hệ thống so sáu nguồn: thiết kế, dự toán, nhập về, thi công, nghiệm thu và thanh toán. Chỗ nào lệch thì gắn cờ, kèm bằng chứng, để kỹ sư khối lượng xác nhận. |
| 65 | Cân xe, quét thùng | Ví dụ với cát đá: trạm cân cho số tấn, cổng quét đo thể tích thùng xe. Chia hai số ra tỷ trọng; lệch khỏi dải chuẩn là dấu hiệu cát ướt, chở thiếu hoặc độn tạp chất. |
| 81 | Quét laser, so lệch BIM | Trong nhà, máy quét laser lấy hàng triệu điểm đo của phần đã thi công, rồi so với mô hình BIM để biết từng cấu kiện xong bao nhiêu phần trăm, lệch ở đâu. |
| 69 | Ẩn danh, SFT LoRA, RLVR | Để AI giỏi việc của CC1, đội dự án dạy thêm cho nó theo từng bậc. Trước hết xóa thông tin cá nhân như số căn cước, mã số thuế, biển số. Sau đó dạy bằng ví dụ do kỹ sư soạn, rồi cho AI tự luyện trên những bài có đáp án kiểm được, như tính khối lượng. |
| 70 | Gán nhãn 10–15 người | Mười đến mười lăm người soạn ví dụ, gọi là gán nhãn; kỹ sư khối lượng kiểm lại trước khi dùng. Lần dạy thứ nhất chỉ mất khoảng 12 giờ máy. |
| 72 | Cổng G4, không nhóm tụt | Cổng G4, khoảng tháng thứ mười: AI riêng của CC1 chỉ được đưa vào dùng khi làm bộ đề tốt hơn bản gốc ở mọi nhóm câu, không nhóm nào kém đi. |
| 73 | Chỉ đọc trước, cổng G3 | Trong phần mềm điều hành công trường, trợ lý tự động, gọi là tác tử AI, đi hai bước. Giai đoạn đầu chỉ được đọc và soạn nháp nhật ký. Qua cổng G3, tức ba tháng chạy không sự cố, mới được đề xuất lệnh ghi vào ERP. |
| 75 | Người duyệt, tạo phiếu | Tác tử soạn lệnh; chỉ huy trưởng bấm duyệt thì phiếu mới được tạo. Hệ thống ghi lại ai duyệt, lúc nào, dựa trên bằng chứng nào. |
| 77 | Thiết bị tại công trường | Tại công trường: máy quét hồ sơ, camera AI, cổng nhận diện khuôn mặt, chip định vị gắn trên mũ, và một máy tính đặt ngay tại lán. Mỗi công trường chỉ gửi kết quả đã xử lý về máy chủ trong nước, đường truyền dưới 2 megabit mỗi giây. |
| 80 | 4 luồng camera, tại lán | Máy tính Jetson AGX Orin đặt tại lán xem cùng lúc khoảng bốn camera: phát hiện người thiếu đồ bảo hộ, người lạ, biển số xe, kể cả khi mất mạng. |
| 99 kết | Dữ liệu của CC1 | Hồ sơ và dữ liệu là tài sản của CC1. Phần mềm AI là linh kiện, thay được sau 6 đến 12 tháng. Tất cả chạy trên hạ tầng trong nước. |

Ước lượng: khoảng 9–10 giây mỗi câu, phim khoảng 3 phút 45 giây (chủ đã chọn). Clip Veo dài 6 giây; phần lời dài hơn giữ khung cuối có nhãn.
