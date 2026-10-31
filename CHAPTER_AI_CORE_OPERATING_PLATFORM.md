# PHẦN VII — LÕI VẬN HÀNH AI CHO TOÀN BỘ DỰ ÁN CÔNG TRƯỜNG SỐ

> Chương bổ sung cho bộ hồ sơ Công trường số CC1. Áp dụng cho mọi dự án của tập đoàn: công trường khép kín (điểm chạm 1.1–4.2) và công trường tuyến (L1–L8).
> Gộp từ 3 bản brainstorm ngày 31/10/2026 trong `plans/reports/advisory-261031-0821-*.md`.
> Nhãn: **[F]** nguồn đã kiểm · **[V]** số do nhà cung cấp tự công bố · **[I]** đề xuất/ước lượng của nhóm tư vấn.
> Trạng thái: trang web đăng bản tóm tắt; bản đầy đủ ở file này.

---

## VII.1. Kết luận

- **Không tự huấn luyện LLM từ đầu.** Tài sản lõi của CC1 là ontology, đồ thị tri thức, nền dữ liệu và bộ đề kiểm thử. Mô hình ngôn ngữ là linh kiện thay được mỗi 6–12 tháng. **[I]**
- **Không tự chế thiết bị đo.** Mỗi phép đo dùng sản phẩm thương mại đã kiểm định. CC1 tự làm phần nối dữ liệu, đối chiếu và cảnh báo.
- **Giá trị riêng của CC1 nằm ở chuỗi khối lượng:** thiết kế → dự toán → nhập về → thi công → nghiệm thu → thanh toán, nối bằng một ontology chung cho cả tập đoàn.

Quyết định của CC1 (31/10/2026):

| Vấn đề | Chốt |
|---|---|
| Phương án | **B theo cổng** (chốt 31/10/2026): xem `plans/261031-0940-ai-core-plan-a-b/plan.md` |
| Quy mô | Toàn tập đoàn, dưới 30 dự án đang thi công; nạp 10–15 dự án mỗi quý, phủ hết trong khoảng 6–9 tháng |
| Hạ tầng | Mua cụm suy luận ngay; thuê GPU trong nước 3 tháng đầu; đặt mua cụm huấn luyện tại cổng tháng 3–4; đặt máy tại trung tâm dữ liệu thuê (Viettel IDC hoặc FPT) |
| Đội ngũ | 18–22 người + 10–15 người gán nhãn; kỹ sư QS của từng dự án kiêm nhiệm xác nhận ánh xạ BOQ |
| Đo đạc | Dùng thiết bị và phần mềm thương mại đã kiểm định thay vì tự chế; khảo sát và lấy báo giá cả danh sách cùng lúc |
| Dự án mẫu đợt 1 | 1 dự án khép kín có BIM + 1 dự án tuyến (chưa gắn tên) |

## VII.2. Vì sao không tự huấn luyện mô hình từ đầu

| Lựa chọn | Cần gì | Có đáng không |
|---|---|---|
| Huấn luyện từ đầu | Hàng nghìn tỷ token, hàng chục đến hàng trăm nghìn giờ GPU, đội nghiên cứu riêng | Không. Rào cản chính là dữ liệu: tiếng Việt ngành xây dựng chỉ cỡ vài trăm triệu token, mô hình mở miễn phí học trên hàng chục nghìn tỷ token **[I]** |
| Huấn luyện tiếp trên kho ngành | 0,5–2 tỷ token sạch, vài trăm giờ GPU H100 cho mô hình 30B **[I]** | Chỉ khi bộ đề kiểm thử cho thấy hổng thuật ngữ rõ rệt |
| Tinh chỉnh hẹp (LoRA) | Vài nghìn mẫu do kỹ sư gán nhãn | Có, cho tác vụ hẹp: trích biên bản, BOQ, nhật ký; gọi công cụ đúng định dạng |
| RAG + công cụ + ontology | Nền dữ liệu, chỉ mục, phân quyền | Bắt buộc, làm trước tiên |

Ngành xây dựng đòi số liệu chính xác và truy được nguồn: khối lượng, dòng BOQ, điều khoản TCVN, lý trình. Vì vậy:

- **Sự thật** lấy từ hệ thống gốc: ERP, BIM, BOQ, hồ sơ có trích dẫn, thiết bị đo, bộ giải tối ưu.
- **Mô hình** chỉ lo ngôn ngữ, trích xuất, định dạng và gọi công cụ.

Thang quyết định (mỗi bậc chỉ mở khi bộ đề chứng minh bậc trước chưa đủ):

1. Prompt + RAG + công cụ.
2. Tinh chỉnh LoRA cho tác vụ hẹp.
3. Huấn luyện tiếp trên kho ngành.

## VII.3. Kiến trúc 5 tầng

![Lõi vận hành AI CC1: 5 tầng](./media/ai-core/ai-core-five-layers.png)

| Tầng | Vai trò | Công nghệ đề xuất | Liên hệ hồ sơ hiện có |
|---|---|---|---|
| 1. Biên | Thiết bị thu tại công trường (camera, drone, trạm cân, cổng LiDAR, chip UWB, GNSS); thị giác máy; chạy khi mất mạng | DeepStream, YOLO, ReID, MQTT, Milvus/FAISS trong RAM | Edge AI Box Jetson AGX Orin 64GB / L4 |
| 2. Nền dữ liệu | Lưu mọi sự kiện, hồ sơ, mô hình 3D | Kho đối tượng S3 nội bộ; PostgreSQL + PostGIS + TimescaleDB; Kafka nhận từ MQTT | Mới |
| 3. Tri thức | Ontology, đồ thị, chỉ mục hồ sơ | Neo4j hoặc Apache AGE; pgvector hoặc Qdrant; tìm kiếm lai BM25 + vector + rerank | Mới |
| 4. Suy luận | LLM, tác tử, bộ giải | vLLM/SGLang, định tuyến mô hình nhỏ/lớn, LangGraph, OR-Tools | Site OS 3.5, Command Node 2× L40S |
| 5. Ứng dụng | Người dùng cuối và thiết bị tại công trường | Phần mềm: Site OS, trợ lý kỹ sư, soạn nháp nhật ký/biên bản, cảnh báo Zalo. Thiết bị: máy tính bảng, màn hình tại cổng, cổng xoay/barie, loa và đèn cảnh báo, vòng tay rung | Điểm chạm 1.1–4.2, L1–L8 |

Xuyên suốt:

- phân quyền theo dự án và nhà thầu, lọc trước khi truy xuất;
- nhật ký kiểm toán;
- phê duyệt của người trước mọi lệnh ghi.

Hai kho vector tách biệt:

- **Milvus/FAISS ở biên:** vector khuôn mặt, dáng đi, trang phục trong ca; sống ngắn, nằm tại công trường.
- **pgvector/Qdrant ở tập đoàn:** vector hồ sơ, tiêu chuẩn, nhật ký.

### Mô hình

| Vai trò | Loại | Ghi chú |
|---|---|---|
| Trả lời, tác tử | LLM mở 8–30B, ưu tiên dạng MoE, xử lý tốt tiếng Việt | Chọn bằng bộ đề của CC1, không bằng bảng xếp hạng quảng cáo |
| Tác vụ khó, ít gặp | LLM mở lớn hơn, hoặc API thương mại cho dữ liệu không nhạy cảm | Định tuyến theo độ khó và độ nhạy dữ liệu |
| Embedding | Đa ngôn ngữ (họ bge-m3), tinh chỉnh trên cặp hỏi–đáp ngành | Cải thiện truy xuất nhiều hơn đổi LLM |
| Đọc scan, bản vẽ | Mô hình thị giác–ngôn ngữ mở (họ Qwen-VL, Vintern) | Trích biên bản, bảng |

Tên mô hình cụ thể chỉ chốt lúc triển khai, sau khi chạy bộ đề.

#### Hình chi tiết: Huấn luyện mô hình ngành CC1

![Bản vẽ tách lớp: dữ liệu CC1 ẩn danh hóa, thang huấn luyện SFT LoRA tới RLVR, cổng G4 trước khi phục vụ CC1 v1](./69b_AI_Core_Blueprint_Huan_Luyen_Mo_Hinh_HUD.jpg)

**Bước 1.** Đội 10–15 người gán nhãn; QS kiểm mẫu.

![Đội 10–15 người gán nhãn; QS kiểm mẫu.](./70b_AI_Core_Huan_Luyen_B1_Gan_Nhan_HUD.jpg)

**Bước 2.** Huấn luyện trên cụm CC1; theo dõi sai số giảm qua từng lượt.

![Huấn luyện trên cụm CC1; theo dõi sai số giảm qua từng lượt.](./71b_AI_Core_Huan_Luyen_B2_Chay_Huan_Luyen_HUD.jpg)

**Bước 3.** Cổng G4: CC1 v1 phải hơn mô hình nền ở mọi nhóm câu, không nhóm nào tụt.

![Cổng G4: CC1 v1 phải hơn mô hình nền ở mọi nhóm câu, không nhóm nào tụt.](./72b_AI_Core_Huan_Luyen_B3_Cong_Phat_Hanh_HUD.jpg)

### Bộ đề kiểm thử: làm đầu tiên

![Chỉ huy trưởng và QS cùng nhóm nghiên cứu AI xem kết quả thi đấu 4 mô hình mở trên bộ đề của CC1](./46b_AI_Core_Bo_De_Thi_Dau_Mo_Hinh_HUD.jpg)

#### Hình chi tiết: Bộ đề và thi đấu mô hình

![Bản vẽ tách lớp: bộ đề từ 300 câu, 4 nhóm câu có câu bẫy, chấm tự động, cổng G2, bộ đề bị khóa](./60b_AI_Core_Blueprint_Bo_De_Thi_Dau_HUD.jpg)

**Bước 1.** Chỉ huy trưởng viết câu hỏi thật từ công trường.

![Chỉ huy trưởng viết câu hỏi thật từ công trường.](./61b_AI_Core_Bo_De_B1_Thu_Cau_Hoi_That_HUD.jpg)

**Bước 2.** QS viết đáp án chuẩn, có trích dẫn tài liệu.

![QS viết đáp án chuẩn, có trích dẫn tài liệu.](./62b_AI_Core_Bo_De_B2_QS_Viet_Dap_An_HUD.jpg)

**Bước 3.** Chạy 4 mô hình mở trên GPU thuê; mô hình bịa số ở câu bẫy bị loại.

![Chạy 4 mô hình mở trên GPU thuê; mô hình bịa số ở câu bẫy bị loại.](./63b_AI_Core_Bo_De_B3_Chay_Tren_GPU_Thue_HUD.jpg)

- 300–500 câu hỏi thật do chỉ huy trưởng, QS, giám sát viết, kèm đáp án và tài liệu nguồn.
- Nhóm câu: tra tiêu chuẩn, tra khối lượng, đối chiếu nghiệm thu, an toàn, hợp đồng, công trường tuyến, câu bẫy.
- Mỗi dự án nạp vào bổ sung 30–50 câu riêng.
- Mọi thay đổi (mô hình, embedding, tinh chỉnh) chạy lại bộ đề và so điểm.

## VII.4. Ontology

![Ontology lõi: chuỗi liên kết khối lượng](./media/ai-core/ontology-quantity-chain.png)

### Cách hiện thực

- Định nghĩa lược đồ một lần (LinkML hoặc SHACL). Từ đó sinh bảng PostgreSQL, ràng buộc đồ thị và JSON Schema cho đường ống OCR.
- Lưu bằng đồ thị thuộc tính (Neo4j hoặc Apache AGE), không dùng RDF/OWL đầy đủ.
- Neo theo chuẩn:
  - IFC 4.3 (ISO 16739) cho cấu kiện, gồm cả đường, cầu;
  - ISO 19650 cho đặt tên tài liệu;
  - bSDD cho thuộc tính;
  - lý trình Km+m và LandXML cho công trường tuyến.

### Lớp chính

| Nhóm | Lớp | Khóa định danh |
|---|---|---|
| Tổ chức | Dự án; Tổ chức (chủ đầu tư, tổng thầu, thầu phụ, nhà cung cấp); Người (vai trò) | Mã dự án; mã số thuế; mã công nhân ẩn danh |
| Không gian | Khép kín: Tầng, Phân khu, Ô lưới · Tuyến: Tuyến, Đoạn (Km đầu, Km cuối), NODE | Lý trình quy về mét; mã tầng–trục |
| Công việc | Hạng mục WBS, Cấu kiện BIM, Dòng BOQ, Mã định mức | IFC GUID; mã định mức |
| Vật tư, thiết bị | Vật tư, Lô giao hàng, Thiết bị, Xe | Mã vật tư; biển số |
| Tài liệu | Bản vẽ, Chỉ dẫn kỹ thuật, Hợp đồng, Điều khoản, Biên bản nghiệm thu, Nhật ký, Hóa đơn, Giấy phép mặt trận | Số hiệu tài liệu |
| Tiêu chuẩn | TCVN, QCVN theo điều khoản | Số hiệu + điều |
| Sự kiện | Qua cổng, Cân, Quét, Đổ bê tông, Lượt lu, Cảnh báo an toàn, Man-down | Mã thiết bị + thời điểm |
| Đo đạc | Phép đo: giá trị, đơn vị, phương pháp, thiết bị, độ bất định | Gắn với sự kiện sinh ra nó |
| Kiểm soát | Chênh lệch, Cảnh báo, Phê duyệt, Thanh toán | Mã cảnh báo |

### Quan hệ chính

| Quan hệ | Từ → Tới | Ví dụ |
|---|---|---|
| thuộc | Cấu kiện → Phân khu / Đoạn Km | Cột C-12 thuộc tầng 9 trục D |
| hiện thực | Dòng BOQ → Cấu kiện | "Bê tông cột M300" → nhóm cột tầng 9 |
| định giá theo | Dòng BOQ → Mã định mức | Hao phí xi măng, cát, đá |
| tiêu hao | Hạng mục → Vật tư (lý thuyết) | Tính từ định mức |
| giao tới | Lô giao hàng → Dự án / Đoạn | Phiếu cân → Km 12+400 |
| đo bởi | Phép đo → Thiết bị | m³ đào đắp → drone LiDAR |
| làm chứng cho | Sự kiện / Phép đo → Biên bản | Ảnh quét + phiếu xe bồn → biên bản đổ bê tông |
| nghiệm thu | Biên bản → Hạng mục (khối lượng) | Biên bản nghiệm thu 120 m³ |
| điều chỉnh bởi | Dòng BOQ → Điều khoản hợp đồng | Đơn giá, phạt giao thiếu |
| yêu cầu | Điều khoản tiêu chuẩn → Hạng mục | Độ chặt nền K98 |
| lệch với | Phép đo ↔ Phép đo | Cân nhập ≠ thể tích quét × tỷ trọng |
| phê duyệt bởi | Cảnh báo / Lệnh tác tử → Người | Giám đốc dự án |

### Câu hỏi kiểm tra ontology

Ontology đạt khi các câu sau trả lời được bằng truy vấn đồ thị, không cần LLM đoán:

1. Đoạn Km 12+400 đến 13+000: thiết kế, nhập, thi công, nghiệm thu, đã trả bao nhiêu m³ cấp phối? Chênh ở khâu nào?
2. Tầng 9: cấu kiện nào đã đổ bê tông mà chưa có biên bản nghiệm thu?
3. Nhà cung cấp nào có tỷ trọng cát lệch dải chuẩn quá 3 lần trong tháng?
4. Hạng mục nào đang thi công nhưng thiếu điều khoản tiêu chuẩn áp dụng?
5. Ai đã phê duyệt lệnh lùi lịch xe bồn hôm qua, dựa trên bằng chứng nào?

## VII.5. Knowledge RAG

![Chỉ huy trưởng hỏi trợ lý AI trên máy tính bảng ngay tại sàn thi công; câu trả lời kèm trích dẫn tài liệu gốc](./45b_AI_Core_Tro_Ly_Trich_Dan_Chi_Huy_Truong_HUD.jpg)

#### Hình chi tiết: Trợ lý AI có trích dẫn

![Bản vẽ tách lớp: câu hỏi, kiểm quyền, truy xuất lai, câu trả lời kèm trích dẫn; số liệu lấy qua truy vấn ERP](./51b_AI_Core_Blueprint_Tro_Ly_Trich_Dan_HUD.jpg)

**Bước 1.** Chỉ huy trưởng hỏi bằng giọng nói, tiếng Việt, không cần gõ.

![Chỉ huy trưởng hỏi bằng giọng nói, tiếng Việt, không cần gõ.](./52b_AI_Core_Tro_Ly_B1_Hoi_Giong_Noi_HUD.jpg)

**Bước 2.** Câu trả lời đặt cạnh tài liệu gốc, tô sáng đúng đoạn trích.

![Câu trả lời đặt cạnh tài liệu gốc, tô sáng đúng đoạn trích.](./53b_AI_Core_Tro_Ly_B2_Doc_Nguon_Trich_Dan_HUD.jpg)

**Bước 3.** Số liệu lấy thẳng từ ERP qua truy vấn; mô hình không tự đoán số.

![Số liệu lấy thẳng từ ERP qua truy vấn; mô hình không tự đoán số.](./54b_AI_Core_Tro_Ly_B3_So_Lieu_Tu_ERP_HUD.jpg)

### Quy trình

1. **Bóc tách:** OCR và trích bảng (mục VII.6).
2. **Chia đoạn theo cấu trúc:** điều, khoản, mục, dòng BOQ; không chia theo số ký tự.
3. **Gắn nhãn ontology** cho từng đoạn: dự án, hạng mục, Km, mã cấu kiện.
4. **Tìm kiếm lai:**
   - BM25 có tách từ tiếng Việt (underthesea, pyvi) để bắt đúng mã hiệu và số hiệu TCVN;
   - vector đa ngôn ngữ;
   - xếp hạng lại.
5. **GraphRAG:** câu hỏi đi qua nhiều tài liệu thì đi theo chuỗi quan hệ ở VII.4.
6. **Trích dẫn bắt buộc:** không có nguồn thì trả "không tìm thấy". Số liệu lấy qua truy vấn SQL hoặc đồ thị, không để mô hình tự viết.

### Phân quyền tại bước truy xuất

Lọc theo dự án, nhà thầu, vai trò **trước khi** tìm kiếm. Tài liệu dự án A không bao giờ lọt vào câu trả lời cho người dự án B. Mỗi đợt nạp dự án có kiểm thử rò rỉ riêng.

## VII.6. OCR và đọc hồ sơ

![QS quét hồ sơ giấy có dấu đỏ; màn hình đặt bản scan cạnh bảng đã trích để khớp BOQ](./44b_AI_Core_OCR_Doc_Ho_So_So_Hoa_HUD.jpg)

#### Hình chi tiết: Đọc hồ sơ OCR và số hóa hồ sơ cũ

![Bản vẽ tách lớp: quét, phân loại mẫu, trích trường và bảng, QS duyệt; khớp BOQ và kho hồ sơ cũ](./55b_AI_Core_Blueprint_OCR_So_Hoa_HUD.jpg)

**Bước 1.** Phân loại trang scan theo mẫu: biên bản, phiếu nhập kho, nhật ký.

![Phân loại trang scan theo mẫu: biên bản, phiếu nhập kho, nhật ký.](./56b_AI_Core_OCR_B1_Phan_Loai_Mau_HUD.jpg)

**Bước 2.** Trích từng trường, dấu đỏ, chữ viết tay và bảng khối lượng.

![Trích từng trường, dấu đỏ, chữ viết tay và bảng khối lượng.](./57b_AI_Core_OCR_B2_Trich_Truong_Bang_HUD.jpg)

**Bước 3.** Ô có độ tin thấp chuyển cho QS sửa; bản sửa được lưu để mô hình học.

![Ô có độ tin thấp chuyển cho QS sửa; bản sửa được lưu để mô hình học.](./58b_AI_Core_OCR_B3_QS_Duyet_Do_Tin_Thap_HUD.jpg)

**Bước 4.** Số hóa hồ sơ cũ: gắn mã thùng, quét sách, ưu tiên hồ sơ hoàn công.

![Số hóa hồ sơ cũ: gắn mã thùng, quét sách, ưu tiên hồ sơ hoàn công.](./59b_AI_Core_OCR_B4_So_Hoa_Ho_So_Cu_HUD.jpg)

### Nguồn có cấu trúc trước, OCR sau cùng

| Loại tài liệu | Cách đọc |
|---|---|
| Hóa đơn điện tử | Đọc XML gốc, không OCR bản in |
| BOQ, dự toán Excel | Đọc ô trực tiếp |
| Bản vẽ DWG/DXF | Đọc thực thể vector: text, block, layer, kích thước (ezdxf; DWG qua bộ chuyển ODA) |
| Mô hình IFC | Đọc thuộc tính và bộ khối lượng `Qto_*` |
| PDF có lớp chữ | Trích chữ + cấu trúc trang (Docling, Marker) |
| Scan: biên bản, nhật ký, phiếu cân giấy | Quy trình dưới đây |
| Bản vẽ scan | Nhận diện ký hiệu + OCR số kích thước; chỉ khi không còn bản vector |

### Quy trình cho tài liệu scan

1. **Tiền xử lý:** chỉnh nghiêng, khử nhiễu, tách dấu đỏ bằng lọc kênh màu để con dấu không đè chữ.
2. **Phân vùng bố cục:** tiêu đề, bảng, đoạn, chữ ký, con dấu (PP-Structure, DocLayout-YOLO, Docling).
3. **Nhận dạng chữ:**
   - chữ in: PaddleOCR hoặc Surya;
   - viết tay, chữ mờ: VietOCR.
4. **Cấu trúc bảng:** Table Transformer hoặc PP-Structure.
5. **Trích trường theo lược đồ:** mô hình thị giác–ngôn ngữ đọc ảnh + chữ OCR, trả JSON theo lược đồ sinh từ ontology.
6. **Kiểm tra chéo hai đường:** OCR cổ điển và mô hình thị giác. Khớp thì qua; lệch thì đưa người duyệt.
7. **Hàng chờ duyệt theo độ tin cậy.** Mỗi lần người xác nhận thành mẫu huấn luyện LoRA.

Con dấu và chữ ký chỉ kiểm tra có hay không, đúng vị trí. Không xác thực chữ ký bằng AI.

### Bẫy riêng của hồ sơ Việt Nam

| Bẫy | Cách xử lý |
|---|---|
| File cũ dùng bảng mã TCVN3 (.VnTime) hoặc VNI → chữ rác | Nhận diện bảng mã, chuyển Unicode trước khi nạp |
| Unicode NFC và NFD lẫn lộn → tìm không thấy | Chuẩn hóa NFC toàn bộ |
| Đơn vị viết nhiều kiểu (m³, "khối", chữ hoa, chữ thường) | Bộ chuẩn hóa đơn vị dùng chung |
| Số thập phân dấu phẩy và dấu chấm lẫn nhau | Suy theo ngữ cảnh cột + kiểm tra phạm vi hợp lý |
| Lý trình viết Km12+400, K12+400, Km 12 + 400 | Bộ phân tích lý trình quy về mét |

### Lộ trình theo loại biểu mẫu

| Đợt | Loại | Vì sao |
|---|---|---|
| 1 | Phiếu cân, phiếu giao hàng; hóa đơn điện tử | Số lượng lớn, mẫu đơn giản, nối thẳng vào nguồn khối lượng "nhập về" |
| 2 | Biên bản nghiệm thu công việc; BOQ Excel | Giá trị cao; điểm nghẽn ánh xạ |
| 3 | Nhật ký thi công | Nhiều chữ viết tay, phục vụ tra cứu |
| 4 | Hồ sơ cũ scan, bản vẽ scan | Chỉ khi có yêu cầu cụ thể |

Ngưỡng mở đợt kế (đề xuất khởi đầu, đặt lại sau 200 trang đầu mỗi loại) **[I]**:

| Chỉ số | Ngưỡng |
|---|---|
| Độ chính xác theo trường sau duyệt | 100% (người duyệt chịu trách nhiệm số cuối) |
| Độ chính xác tự động, chữ in | ≥ 95% |
| Độ chính xác tự động, viết tay | ≥ 85% |
| Tỷ lệ đi thẳng không cần duyệt | ≥ 60% |
| Thời gian duyệt trung bình | < 30 giây / trang |

## VII.7. Đọc và phân tích khối lượng vật tư

![Sáu nguồn khối lượng phải khớp nhau](./media/ai-core/quantity-six-sources.png)

#### Hình chi tiết: Ontology và sáu nguồn khối lượng

![Bản vẽ tách lớp: chuỗi cấu kiện, dòng BOQ, vật tư; sáu nguồn khối lượng hội về một điểm đối chiếu, cảnh báo kèm bằng chứng](./64b_AI_Core_Blueprint_Ontology_6_Nguon_HUD.jpg)

**Bước 1.** Xe vật tư rời qua cân và cổng quét thùng; tỷ trọng lệch dải chuẩn thì gắn cờ.

![Xe vật tư rời qua cân và cổng quét thùng; tỷ trọng lệch dải chuẩn thì gắn cờ.](./65b_AI_Core_KL_B1_Can_Quet_Thung_Xe_HUD.jpg)

**Bước 2.** Drone RTK đo thể tích đống vật liệu, so với sổ kho.

![Drone RTK đo thể tích đống vật liệu, so với sổ kho.](./66b_AI_Core_KL_B2_Drone_Do_Bai_Tap_Ket_HUD.jpg)

**Bước 3.** Phiếu xe bồn so với thể tích cấu kiện trong BIM để tính hao hụt bê tông.

![Phiếu xe bồn so với thể tích cấu kiện trong BIM để tính hao hụt bê tông.](./67b_AI_Core_KL_B3_Xe_Bon_So_BIM_HUD.jpg)

**Bước 4.** Cảnh báo chênh lệch kèm phiếu cân, ảnh hiện trạng và dòng BOQ liên quan.

![Cảnh báo chênh lệch kèm phiếu cân, ảnh hiện trạng và dòng BOQ liên quan.](./68b_AI_Core_KL_B4_Canh_Bao_Kem_Bang_Chung_HUD.jpg)

### Sáu nguồn khối lượng

| # | Nguồn | Lấy từ | Điểm chạm |
|---|---|---|---|
| 1 | Thiết kế | BIM (`Qto_*`), bản vẽ, mặt cắt ngang tuyến | 2.2, 2.4 |
| 2 | Dự toán / BOQ | Excel, phần mềm dự toán, mã định mức | — |
| 3 | Nhập về | Trạm cân, quét LiDAR thùng xe, phiếu điện tử, hóa đơn điện tử | 1.4, 2.1, L3 |
| 4 | Thi công thực tế | Drone/LiDAR so BIM, máy xúc dẫn đường, lu thông minh, số xe bồn | 1.3, 2.3, 3.1, L6 |
| 5 | Nghiệm thu | Biên bản (OCR) | 2.4, L8 |
| 6 | Thanh toán | ERP, hợp đồng | 4.2 |

Mức lý thuyết: khối lượng công việc × định mức hao phí = vật tư "đáng lẽ phải dùng".

### Thứ tự tin cậy khi các nguồn lệch

1. Thiết bị đã kiểm định, cho đúng đại lượng của nó (cân cho tấn, LiDAR cho m³).
2. Đo đạc độc lập (drone, máy quét).
3. Chứng từ (phiếu, hóa đơn).
4. Biên bản nghiệm thu.

Thanh toán vẫn theo biên bản nghiệm thu đúng quy trình hợp đồng. Lõi AI gắn cờ chênh lệch kèm bằng chứng, không tự sửa số trên biên bản.

### Ánh xạ dòng BOQ về cấu kiện

1. Chuẩn hóa chữ: NFC, tách đơn vị, tách quy cách ("bê tông cột M300 đá 1x2").
2. Máy gợi ý 3 mã định mức và nhóm cấu kiện cho mỗi dòng, bằng:
   - luật (từ khóa, đơn vị phải khớp);
   - độ tương đồng embedding;
   - LLM xác minh.
3. **Kỹ sư QS của dự án** (kiêm nhiệm) xác nhận. Xác nhận được lưu để lần sau tự động.
4. Liên kết dòng BOQ với nhóm cấu kiện BIM (theo loại, tầng, trục) hoặc với đoạn lý trình.

LLM chỉ gợi ý và xếp hạng, không tự quyết mã định mức.

### Thuật toán đo khối lượng thực tế

| Bài toán | Thuật toán | Đầu ra |
|---|---|---|
| Đào đắp nền đường | Hiệu hai mô hình địa hình (TIN–TIN); đối chiếu phương pháp mặt cắt trung bình theo lý trình | m³ đào/đắp theo đoạn Km |
| Tiến độ kết cấu | Định vị RTK, ghép đám mây điểm (ICP), lọc mặt đất (CSF), khoảng cách đám mây–mô hình BIM (C2M) | % hoàn thành từng cấu kiện, bản đồ lệch |
| Thể tích thùng xe | Quét thùng rỗng và đầy, lấy hiệu bản đồ độ cao rồi tích phân | m³ thực chở |
| Gian lận vật tư rời | Tỷ trọng = khối lượng cân / thể tích quét, so dải chuẩn | Cờ: cát ướt, chở thiếu, độn tạp chất |
| Bãi tập kết | Thể tích đống từ drone so sổ kho | Tồn kho thực |
| Bê tông | Phiếu xe bồn so thể tích cấu kiện BIM | Hao hụt bê tông |
| Thép | Cân nhập so bảng thống kê thép + định mức hao hụt | Hao hụt thép |

### Phát hiện bất thường

- **Luật cứng:** chênh vượt định mức hao hụt → cảnh báo ngay.
- **Thống kê:** z-score bền (median, MAD) theo vật tư, dự án, nhà cung cấp.
- **Theo thời gian:** vật tư tăng mà đường cong tiến độ (S-curve) đứng → nghi thất thoát.
- **Giá trị thu được (EVM):** khối lượng thực tế × đơn giá → SPI, CPI theo gói thầu.

Mỗi cảnh báo kèm bằng chứng: phiếu cân, ảnh, đoạn point cloud, dòng BOQ. Không có bằng chứng thì không cảnh báo.

## VII.8. Thiết bị đo: dùng sản phẩm thị trường

Khảo sát và lấy báo giá **cả danh sách cùng lúc**. Đây là danh sách để khảo sát, chưa so giá, chưa đánh giá tại Việt Nam:

| Phép đo | Nhóm sản phẩm cần khảo sát |
|---|---|
| Cân xe | Đầu cân, cầu cân đã kiểm định đo lường (Mettler Toledo và hãng tương đương) |
| Thể tích thùng xe | Máy quét thể tích tải (ví dụ Loadscan) |
| Drone đo vẽ | DJI Matrice + LiDAR Zenmuse; xử lý bằng DJI Terra hoặc Pix4D |
| Quét và so BIM | Leica, Trimble, Faro |
| Bóc khối lượng bản vẽ | Autodesk Takeoff, CostX, Bluebeam |
| Dẫn hướng máy | Trimble Earthworks, Leica iCON, Topcon |
| Lu thông minh | Hệ thống của hãng lu (Bomag, Hamm, Caterpillar) |
| Độ chín bê tông | Giatec SmartRock, Converge |
| Định vị trong nhà (UWB) | Pozyx, Sewio và hãng tương đương |
| Robot in sàn | Dusty Robotics, HP SitePrint |
| Robot tuần tra | Boston Dynamics Spot hoặc nền tảng bốn chân tương đương |

Tiêu chí chấm khi khảo sát:

1. Có kiểm định, chứng nhận dùng được tại Việt Nam.
2. Có đại lý, bảo hành, kỹ thuật tại Việt Nam.
3. **Xuất dữ liệu mở** (API, định dạng chuẩn như IFC, LAS/E57, LandXML, CSV), không khóa dữ liệu trong phần mềm hãng.
4. Giá mua, giá thuê bao hằng năm.
5. Có dự án tham chiếu cùng loại (khép kín hoặc tuyến).

Tiêu chí 3 là điều kiện loại: không xuất dữ liệu mở thì không nối được vào lõi.

## VII.9. Thuật toán trong proposal và độ chín

Độ chín: **Phổ biến** (đã đại trà, mua được) · **Thí điểm** (có dự án thật, chưa đại trà) · **Nghiên cứu** (rủi ro cao tại công trường Việt Nam). **[I]**

### Công trường khép kín

| ĐC | Thuật toán chính | Độ chín | Ghi chú |
|---|---|---|---|
| 1.1 | Nhận diện khuôn mặt (ArcFace) + chống giả mạo; phát hiện PPE (YOLO) | Phổ biến | Cần đồng ý theo Luật 91/2025 |
| 1.2 | Phát hiện đối tượng + tư thế + bám vết (ByteTrack); lọc báo giả theo thời gian | Phổ biến | Báo giả là vấn đề chính; tinh chỉnh theo từng công trường |
| 1.3 | Dựng 3D từ ảnh (COLMAP, OpenDroneMap), RTK, so BIM | Phổ biến | Cần BIM sạch, đúng tọa độ |
| 1.4 | Nhận dạng biển số Việt Nam 1 dòng và 2 dòng | Phổ biến | Biển bẩn, bùn: đặt camera đúng góc |
| 1.5 | ReID ngoại hình, dáng đi, khung xương 3D, UWB, hợp nhất bằng lọc Kalman + ghép Hungarian | Nghiên cứu → thí điểm | Xem VII.10: UWB là nguồn chính |
| 2.1 | Thể tích LiDAR + cân + tỷ trọng | Thí điểm | Hiệu chuẩn theo loại thùng xe |
| 2.2 | Robot in sàn định vị bằng máy toàn đạc | Thí điểm, có sản phẩm thương mại | Mua |
| 2.3 | Dẫn hướng máy xúc GNSS RTK + IMU | Phổ biến | Mua bộ của hãng |
| 2.4 | AR: SLAM LiDAR, đăng ký mô hình BIM | Thí điểm | Sai số đăng ký là rủi ro chính |
| 3.1 | Robot bốn chân: SLAM LiDAR (FAST-LIO, LIO-SAM), ảnh nhiệt | Thí điểm | Mua nền tảng; CC1 làm phân tích |
| 3.2 | Khung xương trợ lực | Thí điểm | Không phải bài toán AI |
| 3.3 | Máy tự hành: lập đường phủ kín, tránh va chạm nhiều xe | Nghiên cứu tại Việt Nam | Hoãn đến khi có đối tác hãng máy |
| 3.4 | Chống lắc tải (input shaping, MPC), phát hiện người dưới tải | Thí điểm | Phát hiện người làm được sớm; điều khiển cẩu qua hãng cẩu |
| 3.5 | Tác tử LLM + đường găng (CPM) + bộ giải lập lịch (OR-Tools CP-SAT/MILP) | Thí điểm | Bộ giải quyết định; LLM diễn giải và đề xuất |
| 4.1–4.2 | Nhà máy vi mô, hợp đồng thông minh | Tầm nhìn | Ngoài lõi năm 1–2 |

### Công trường tuyến

| ĐC | Thuật toán chính | Độ chín | Ghi chú |
|---|---|---|---|
| L1 | Phát hiện biển báo, rào chắn; đối chiếu danh mục QCVN 41:2024 | Thí điểm | Danh mục số hóa là phần chính |
| L2 | Hàng rào định vị theo đoạn Km; điểm danh QR/NFC | Phổ biến | Không cần AI |
| L3 | Geofence (điểm trong đa giác), phiếu điện tử | Phổ biến | Không cần AI |
| L4 | Bám vết radar + thời gian tới va chạm (TTC) | Thí điểm | Báo giả do xe máy lách là rủi ro lớn |
| L5 | Tham chiếu tuyến tính: chiếu GPS lên tim tuyến → lý trình + độ lệch | Phổ biến | Xương sống dữ liệu tuyến |
| L6 | Lu thông minh (chỉ số CMV), dải nhiệt thảm nhựa | Phổ biến ở nước ngoài | Dữ liệu từ thiết bị hãng |
| L7 | Phát hiện bất động/ngã từ gia tốc kế, LoRa/4G | Phổ biến | Không cần AI nặng |
| L8 | Phương pháp độ chín bê tông (Nurse-Saul, ASTM C1074); kiểm soát hình học đốt dầm | Phổ biến | Hiệu chuẩn theo cấp phối thật |

Ba chỗ cần thận trọng khi trình bày: **1.5** (ReID trên đồng phục), **3.3** (máy tự hành), **L4** (báo giả do xe máy).

## VII.10. Định danh công nhân: UWB là nguồn chính

### Vì sao không dựa vào thị giác

- Công nhân mặc cùng đồng phục, cùng mũ, cùng áo phản quang. Đặc trưng ngoại hình, đầu vào chính của ReID, gần như giống nhau.
- Dáng đi đổi khi mang vác, leo giàn giáo, đi trên sàn không phẳng.

### Thiết kế

| Lớp | Công nghệ | Vai trò |
|---|---|---|
| Định danh tại cổng | Khuôn mặt + chống giả mạo; thẻ cho người không đồng ý sinh trắc | Xác nhận đầu ca, ghép với chip UWB trên mũ |
| Vị trí trong ca, khép kín | UWB: chip trên mũ, trạm neo; sai số hãng công bố cỡ vài chục cm **[V]** | Nguồn định danh và vị trí chính |
| Vị trí trong ca, tuyến | Thẻ GNSS + LoRa/4G (L7) | UWB không phủ được hàng chục km |
| Thị giác | Bám vết trong từng camera; số lớn in trên mũ/áo đọc bằng OCR | Bổ trợ: phát hiện người không mang chip |
| Phát hiện tráo mũ | Vị trí chip lệch vệt người trên camera; khuôn mặt tại cổng khác chủ chip | Gắn cờ cho người kiểm tra |

### Nghĩa vụ dữ liệu sinh trắc

Theo Luật 91/2025/QH15 và NĐ 356/2025/NĐ-CP **[F]**, khuôn mặt và dáng đi là dữ liệu cá nhân nhạy cảm:

- Đồng ý rõ ràng; có đường thay thế không sinh trắc.
- Đánh giá tác động xử lý dữ liệu cá nhân trước khi triển khai.
- Mẫu sinh trắc nằm tại Edge AI Box; xóa khi hết hợp đồng lao động.
- Chỉ dùng cho an toàn và chấm công; không chấm điểm hành vi cá nhân.
- **Không tự động xử phạt.** Mọi cờ phải có người xem bằng chứng trước.

Luật Trí tuệ nhân tạo 134/2025/QH15, hiệu lực 1/3/2026 **[F]**: rà nghĩa vụ phân loại rủi ro cho hệ thống nhận diện sinh trắc trước khi triển khai.

Chỉ số đo:

- tỷ lệ giờ công gán đúng người;
- sai số UWB đo tại công trường thật;
- tỷ lệ cờ sai. Đây là chỉ số quyết định công nhân có tin hệ thống hay không.

## VII.11. Phần cứng và hạ tầng

Đã chốt phương án B (31/10/2026): mua cụm suy luận 2 node 8× GPU 96 GB ngay; thuê GPU trong nước 3 tháng đầu; sau cổng G2 (M3–M4) mua cụm huấn luyện 2 node Blackwell 8 GPU; máy đặt tại trung tâm dữ liệu thuê. Bảng dưới là cấu hình phương án A, giữ để so sánh. Chi tiết B: [giai đoạn 2](./plans/261031-0940-ai-core-plan-a-b/phase-02-inference-cluster-datacenter.md), [giai đoạn 6](./plans/261031-0940-ai-core-plan-a-b/phase-06-procurement-gate-training-cluster.md).

![Kỹ sư CC1 kiểm tra cụm suy luận và cụm huấn luyện GPU đặt tại trung tâm dữ liệu thuê trong nước](./43b_AI_Core_Cum_GPU_Trung_Tam_Du_Lieu_HUD.jpg)

#### Hình chi tiết: Cụm GPU tại trung tâm dữ liệu thuê

![Bản vẽ tách lớp: thuê GPU 3 tháng, cổng G2, cụm suy luận và cụm huấn luyện, dữ liệu nằm tại Việt Nam](./47b_AI_Core_Blueprint_Cum_GPU_TTDL_HUD.jpg)

**Bước 1.** Nhận máy, lắp vào tủ, kiểm đúng cấu hình đặt hàng.

![Nhận máy, lắp vào tủ, kiểm đúng cấu hình đặt hàng.](./48b_AI_Core_GPU_B1_Nhan_May_Lap_Tu_HUD.jpg)

**Bước 2.** Chạy lại một lượt huấn luyện tham chiếu; kết quả phải khớp lượt chạy trên GPU thuê thì mới nghiệm thu cụm.

![Chạy lại một lượt huấn luyện tham chiếu; kết quả phải khớp lượt chạy trên GPU thuê thì mới nghiệm thu cụm.](./49b_AI_Core_GPU_B2_Chay_Kiem_Thu_HUD.jpg)

**Bước 3.** Giám sát 24/7 tải GPU, độ trễ và lỗi; cảnh báo khi có sự cố.

![Giám sát 24/7 tải GPU, độ trễ và lỗi; cảnh báo khi có sự cố.](./50b_AI_Core_GPU_B3_Giam_Sat_Van_Hanh_HUD.jpg)

| Tầng | Cấu hình tham khảo | Số lượng |
|---|---|---|
| Biên, mỗi công trường hoặc NODE | Jetson AGX Orin 64GB hoặc server 2U + L4 24GB, NVMe 4TB, UPS | 1 bộ |
| Biên tuyến | Hộp cảm biến năng lượng mặt trời, 4G + Starlink | Theo số đoạn Km |
| Suy luận tập đoàn | 4 GPU loại 48GB (L40S hoặc tương đương), LLM 8–30B lượng tử hóa | 1 cụm; nhân đôi khi tải tăng |
| Huấn luyện | Thuê theo giờ node 8× H100/H200 | Không mua (phương án A) |
| Lưu trữ | Kho đối tượng vài trăm TB | Tăng theo số dự án |
| Mạng | Chỉ đẩy siêu dữ liệu (metadata) lên tập đoàn, dưới 2 Mbps / công trường | — |

GPU trong nước:

- FPT AI Factory: H100/H200, giá niêm yết H100 từ khoảng 2,5 USD/giờ **[V]**.
- Viettel Cloud AI-Native: H200 tại trung tâm dữ liệu Hòa Lạc **[F]**.

## VII.12. Chi phí 3 năm (ước lượng thô)

**Đã chốt phương án B theo cổng (31/10/2026): năm 1 khoảng 55–90 tỷ, 3 năm khoảng 105–180 tỷ.** Bảng chi phí B và ngân sách từng giai đoạn: `plans/261031-0940-ai-core-plan-a-b/options-a-b-analysis.md` và `plans/261031-0940-ai-core-plan-a-b/plan.md`. Bảng dưới là phương án A, giữ để so sánh.

**Ước lượng cấp độ, sai số có thể ±50%. Phải có báo giá OEM, bảng lương và báo giá phần mềm trước khi trình.** **[I]** Tỷ giá tạm: 1 USD ≈ 26.000 đồng.

Chưa gồm thiết bị điểm chạm tại công trường (bảng riêng trong hồ sơ kỹ thuật) và giấy phép thiết bị đo ở VII.8.

| Hạng mục | Năm 1 | Năm 2 | Năm 3 | Cơ sở |
|---|---|---|---|---|
| Đội lõi 8–9 người | 4,5–7,5 tỷ | 4,5–7,5 tỷ | 4,5–7,5 tỷ | 40–70 triệu đồng / người / tháng, gồm chi phí đi kèm |
| Cụm suy luận nội bộ | 1,5–2,5 tỷ | 0–2,5 tỷ | Bảo trì | Cần báo giá OEM |
| Lưu trữ | 0,5–1,5 tỷ | 0,3–1 tỷ | 0,3–1 tỷ | Theo số dự án đã nạp |
| Thuê GPU huấn luyện | < 0,3 tỷ | < 0,5 tỷ | < 0,5 tỷ | Một lần LoRA trên 8 H100 × 3 ngày ≈ 1.500 USD |
| API thương mại (dữ liệu không nhạy cảm) | 0,1–0,3 tỷ | 0,2–0,5 tỷ | 0,2–0,5 tỷ | Theo lượng dùng |
| Pháp lý dữ liệu, AI; kiểm thử bảo mật | 0,3–0,6 tỷ | 0,2–0,4 tỷ | 0,2–0,4 tỷ | Tư vấn độc lập |
| **Cộng (làm tròn)** | **7–13 tỷ** | **5–12 tỷ** | **5–10 tỷ** | |

- Con người chiếm khoảng 60–80%. GPU không phải khoản lớn.
- Huấn luyện mô hình chỉ vài nghìn USD mỗi lần. Tiền nên dồn vào dữ liệu và đội.

## VII.13. Đội ngũ và nạp dự án theo đợt

Phương án B: đội 18–22 người cộng 10–15 người gán nhãn, nạp 10–15 dự án mỗi quý ([giai đoạn 1](./plans/261031-0940-ai-core-plan-a-b/phase-01-team-hiring.md)). Bảng vai trò dưới đây là đội lõi phương án A, giữ để so sánh; quy trình nạp một dự án dùng chung cho cả hai.

| Vai trò | Số người |
|---|---|
| Kỹ sư dữ liệu | 2 |
| Kỹ sư ML / LLM | 2 |
| Kỹ sư tri thức ngành (kỹ sư xây dựng) | 2 |
| MLOps / hạ tầng | 1 |
| Quản lý sản phẩm | 1 |
| Bảo mật, pháp chế (kiêm nhiệm) | 0,5 |

Kỹ sư xây dựng trong đội là điều kiện tiên quyết. Thiếu họ, ontology và bộ đề sai từ gốc.

### Nạp một dự án (khoảng 2 tuần công đội lõi) **[I]**

| Bước | Ai làm | Công |
|---|---|---|
| 1. Thu hồ sơ, BIM, BOQ; kiểm bảng mã TCVN3/VNI | Kỹ sư dữ liệu | 2–3 ngày |
| 2. Gắn dự án vào ontology: phân khu hoặc đoạn Km, WBS | Kỹ sư tri thức + chỉ huy trưởng | 2–3 ngày |
| 3. Ánh xạ BOQ: máy gợi ý, QS dự án xác nhận | QS dự án + kỹ sư tri thức | 2–4 ngày cho BOQ cỡ 2.000 dòng |
| 4. Nối điểm chạm đang chạy: cổng, cân, camera, drone | Kỹ sư dữ liệu | 1–2 ngày |
| 5. Bổ sung 30–50 câu bộ đề riêng | Chỉ huy trưởng, QS | 1 ngày |
| 6. Chạy bộ đề, kiểm thử rò rỉ, bàn giao | Đội lõi | 1–2 ngày |

Phương án A nạp 3–5 dự án mỗi quý; phương án B, với đội lớn hơn, nạp 10–15 dự án mỗi quý.

### Tiêu chí chọn 2 dự án mẫu đợt 1

| Tiêu chí | Dự án khép kín | Dự án tuyến |
|---|---|---|
| Dữ liệu số | Có BIM (IFC xuất được), BOQ Excel | Có tim tuyến (LandXML), BOQ Excel |
| Giai đoạn | Đang thi công phần thân, còn ít nhất 12 tháng thi công | Đang thi công nền đường hoặc cầu, còn ít nhất 12 tháng thi công |
| Điểm chạm | Có thể lắp 1.1–1.4 trong quý đầu | Có thể lắp L1–L3, L8 trong quý đầu |
| Con người | Chỉ huy trưởng và QS sẵn sàng viết bộ đề | Như bên cạnh |

## VII.14. Lộ trình gắn giai đoạn đã công bố

Lộ trình theo phương án B, 11 giai đoạn, M0 = tháng phê duyệt. Chi tiết từng giai đoạn: `plans/261031-0940-ai-core-plan-a-b/plan.md`.

| Mốc | Lõi AI làm gì | Điểm chạm | Cổng |
|---|---|---|---|
| M0–M1 | Phê duyệt, ban chỉ đạo, đánh giá tác động dữ liệu; tuyển trưởng nhóm; báo giá chỗ đặt và máy | — | G1: ngân sách duyệt, có trưởng nhóm |
| M0–M4 | Cụm suy luận; ontology v0; 2 dự án mẫu; bộ đề 300 câu; thi đấu mô hình trên GPU thuê; SFT v1 | Chuẩn bị 1.1–1.4, L1–L3 | G2 (M3–M4): bộ đề ≥ 80%, ≥ 50 nghìn mẫu, ≥ 10 người → mua cụm huấn luyện |
| M1–M9 | OCR, ánh xạ BOQ, đối chiếu 6 nguồn; nạp 10–15 dự án mỗi quý, phủ dưới 30 dự án; tác tử chỉ đọc | 1.1–1.5, L1–L3, L8 | G3 (M8): 3 tháng chỉ đọc không sự cố → tác tử ghi có duyệt |
| M4–M12 | Cụm huấn luyện; DPO, RLVR, chưng cất, CPT; số hóa hồ sơ cũ | 2.1–2.4, L4–L7 | G4 (M10): mô hình ngành CC1 v1 thắng mô hình nền; G5 (M12): đánh giá năm 1 |
| Năm 2–3 | Vận hành, KPI; Site OS đa tác tử + bộ giải tối ưu; thay GPU năm 3 | 3.1–3.5 | Theo hồ sơ giai đoạn 3 |

#### Hình chi tiết: Tác tử AI trong Site OS

![Bản vẽ tách lớp: tác tử chỉ đọc trước, đề xuất lệnh, người duyệt, ghi ERP, nhật ký và cổng G3](./73b_AI_Core_Blueprint_Tac_Tu_Site_OS_HUD.jpg)

**Bước 1.** Giai đoạn chỉ đọc: tác tử soạn nháp nhật ký, kỹ sư sửa.

![Giai đoạn chỉ đọc: tác tử soạn nháp nhật ký, kỹ sư sửa.](./74b_AI_Core_Tac_Tu_B1_Soan_Nhap_Nhat_Ky_HUD.jpg)

**Bước 2.** Sau cổng G3: tác tử đề xuất lệnh, người có quyền bấm duyệt mới tạo phiếu.

![Sau cổng G3: tác tử đề xuất lệnh, người có quyền bấm duyệt mới tạo phiếu.](./75b_AI_Core_Tac_Tu_B2_Nguoi_Duyet_Lenh_HUD.jpg)

**Bước 3.** Nhật ký kiểm toán ghi ai duyệt, lúc nào, dựa trên bằng chứng nào.

![Nhật ký kiểm toán ghi ai duyệt, lúc nào, dựa trên bằng chứng nào.](./76b_AI_Core_Tac_Tu_B3_Nhat_Ky_Kiem_Toan_HUD.jpg)

## VII.15. Rủi ro chính

| Rủi ro | Cách chặn |
|---|---|
| Mô hình bịa số liệu | Số liệu chỉ qua truy vấn; trích dẫn bắt buộc; bộ đề có câu bẫy |
| Hồ sơ scan kém | Bắt đầu từ dự án đang chạy có hồ sơ số; số hóa dự án cũ theo yêu cầu |
| Rò rỉ giữa dự án, nhà thầu | Lọc quyền trước truy xuất; kiểm thử rò rỉ mỗi đợt nạp |
| Khóa vào hãng thiết bị hoặc mô hình | Bắt buộc xuất dữ liệu mở; giao diện mô hình chuẩn; bộ đề làm thước đo khi đổi |
| Mua GPU trước khi có tải thật | Thuê trước; mua cụm huấn luyện chỉ khi qua cổng G2 |
| Công nhân không tin hệ thống | Không tự động xử phạt; theo dõi tỷ lệ cờ sai |

## VII.16. Nguồn đã kiểm (31/10/2026)

- Luật Trí tuệ nhân tạo 134/2025/QH15, hiệu lực 1/3/2026: [thuvienphapluat.vn](https://thuvienphapluat.vn/van-ban/Cong-nghe-thong-tin/Luat-Tri-tue-nhan-tao-2025-so-134-2025-QH15-679013.aspx), [vneconomy.vn](https://vneconomy.vn/luat-tri-tue-nhan-tao-se-co-hieu-luc-tu-ngay-132026.htm)
- Viettel Cloud AI-Native, H200 tại Hòa Lạc: [vnexpress.net](https://vnexpress.net/viettel-cloud-ai-native-tich-hop-chip-nvidia-h200-5103394.html)
- FPT AI Factory, giá H100: [factory.fpt.ai](https://factory.fpt.ai/ai-insights/h100-cost), [amcompute.com](https://www.amcompute.com/gpu-cloud-prices/h100)
- Gợi ý mô hình mở cho tiếng Việt (trang nhà cung cấp, bằng chứng yếu): [siliconflow.com](https://www.siliconflow.com/articles/best-open-source-llm-for-vietnamese)
- Luật 91/2025/QH15, NĐ 356/2025/NĐ-CP: xem PHẦN VI, mục VI.5.

## VII.17. Việc còn mở

1. Gắn tên 2 dự án mẫu đợt 1 theo tiêu chí VII.13.
2. Lấy báo giá cả danh sách VII.8; thay số ước lượng ở VII.12 bằng báo giá thật.
3. Rà nghĩa vụ theo Luật Trí tuệ nhân tạo 134/2025/QH15 cho 1.5 và 3.5.
