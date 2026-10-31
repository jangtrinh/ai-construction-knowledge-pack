# Tư vấn: Lõi vận hành AI cho toàn bộ dự án công trường số CC1

Ngày: 31/10/2026 · Phạm vi: lõi dùng chung cho mọi dự án (công trường khép kín 1.1–4.2, công trường tuyến L1–L8) · Trạng thái: bản brainstorm, chờ chủ đầu tư chốt 4 câu hỏi cuối.

## 1. Kết luận một dòng

Không tự huấn luyện LLM từ đầu. Tài sản lõi của CC1 là **ontology + đồ thị tri thức + nền dữ liệu + bộ đề kiểm thử**; mô hình ngôn ngữ là linh kiện thay được mỗi 6–12 tháng.

## 2. Vì sao không tự huấn luyện từ đầu

| Lựa chọn | Cần gì | Có đáng không |
|---|---|---|
| Huấn luyện từ đầu (pretrain) | Hàng nghìn tỷ token, hàng chục đến hàng trăm nghìn giờ GPU, đội nghiên cứu riêng | Không. Tiền GPU không phải rào cản chính; rào cản là dữ liệu: tiếng Việt ngành xây dựng chỉ cỡ vài trăm triệu token, trong khi mô hình mở miễn phí học trên hàng chục nghìn tỷ token |
| Huấn luyện tiếp (continued pretraining) trên kho ngành | 0,5–2 tỷ token sạch, vài trăm giờ GPU H100 (ước tính cho mô hình 30B) | Chỉ khi bộ đề kiểm thử cho thấy mô hình gốc hổng thuật ngữ rõ rệt |
| Tinh chỉnh hẹp (SFT/LoRA) | Vài nghìn mẫu do kỹ sư gán nhãn, 1–8 GPU vài giờ đến vài ngày | Có, cho tác vụ hẹp: trích biên bản, BOQ, nhật ký; gọi công cụ đúng định dạng |
| RAG + công cụ + ontology | Nền dữ liệu, chỉ mục, phân quyền | Bắt buộc, làm trước tiên |

Nguyên tắc ngành xây dựng: **số liệu phải đúng tuyệt đối** (khối lượng, dòng BOQ, điều khoản TCVN, lý trình Km). Vì vậy:

- **Sự thật** lấy từ hệ thống gốc: ERP, BIM, BOQ, hồ sơ có trích dẫn, máy tính và bộ giải tối ưu.
- **Mô hình** chỉ lo ngôn ngữ, trích xuất, định dạng và gọi công cụ. Mô hình không được "nhớ" con số.

Thang quyết định (mỗi bậc chỉ mở khi bộ đề kiểm thử chứng minh bậc trước chưa đủ):

1. Prompt + RAG + công cụ.
2. Tinh chỉnh LoRA cho tác vụ hẹp.
3. Huấn luyện tiếp trên kho ngành.

## 3. Kiến trúc lõi 5 tầng

Sơ đồ: `plans/reports/advisory-261031-cc1-ai-core-layers.png`

| Tầng | Vai trò | Công nghệ đề xuất | Đã có trong hồ sơ hiện tại |
|---|---|---|---|
| 1. Biên (công trường) | Thị giác máy, cảm biến, chạy khi mất mạng | DeepStream, YOLO/ReID, MQTT, Milvus/FAISS trong RAM | Có: Edge AI Box Jetson AGX Orin 64GB / L4 |
| 2. Nền dữ liệu (tập đoàn) | Lưu mọi sự kiện, hồ sơ, mô hình 3D | Kho đối tượng (S3 nội bộ), PostgreSQL + PostGIS + TimescaleDB, Kafka nhận từ MQTT | Chưa mô tả |
| 3. Tầng tri thức | Ontology, đồ thị tri thức, chỉ mục hồ sơ | Đồ thị (Neo4j hoặc Postgres + Apache AGE), pgvector hoặc Qdrant, tìm kiếm lai BM25 + vector + rerank | Chưa mô tả |
| 4. Suy luận | LLM, tác tử, bộ giải | vLLM/SGLang, định tuyến mô hình nhỏ/lớn, LangGraph, OR-Tools | Có ý tưởng: Site OS 3.5, Command Node 2× L40S |
| 5. Ứng dụng | Người dùng cuối | Site OS, trợ lý kỹ sư, soạn nhật ký/biên bản, cảnh báo Zalo | Có: touchpoint 1.1–4.2, L1–L8 |

Xuyên suốt: phân quyền theo dự án và nhà thầu, nhật ký kiểm toán, giám sát chất lượng mô hình, phê duyệt của người trước mọi lệnh ghi.

Quan hệ hai kho vector:

- **Milvus/FAISS ở biên** giữ vector khuôn mặt, dáng đi, trang phục trong ca. Dữ liệu sinh trắc học sống ngắn, nằm tại công trường.
- **pgvector/Qdrant ở tập đoàn** giữ vector hồ sơ, tiêu chuẩn, nhật ký. Không trộn hai kho.

## 4. Ontology: xương sống của lõi

Neo theo chuẩn mở, cộng mã Việt Nam:

| Trục | Chuẩn neo | Dùng cho |
|---|---|---|
| Cấu kiện, công trình | IFC 4.3 (ISO 16739), có phần đường, cầu, đường sắt | Cả công trường khép kín và tuyến |
| Phân loại | Uniclass / OmniClass, ánh xạ sang mã định mức Việt Nam | Nối BOQ với BIM |
| Không gian tuyến | Lý trình Km+m, LandXML (đã dùng ở L5) | Công trường tuyến L1–L8 |
| Không gian khép kín | Tầng, phân khu, trục lưới | Công trường 1.1–4.2 |
| Tiêu chuẩn | TCVN, QCVN theo điều khoản | Trích dẫn khi nghiệm thu |
| Sự kiện touchpoint | Người, xe, vật tư, thiết bị, vị trí, thời điểm | Mọi touchpoint |

Chuỗi liên kết bắt buộc (mỗi mắt xích là một quan hệ trong đồ thị):

```text
Dự án → Phân khu / Đoạn Km → Hạng mục WBS → Cấu kiện BIM (GUID)
  → Dòng BOQ → Mã định mức → Điều khoản hợp đồng
  → Biên bản nghiệm thu → Sự kiện touchpoint (cân, cổng, drone, camera)
```

Ví dụ câu hỏi chỉ trả lời được khi có chuỗi này: "Đoạn Km 12+400 đến 13+000 đã nghiệm thu bao nhiêu m³ cấp phối, khớp phiếu cân nào, còn bao nhiêu chưa thanh toán?"

Ai làm: 2 kỹ sư xây dựng hiểu hồ sơ + 1 kỹ sư tri thức. Ontology v0 làm tay trên 2 dự án mẫu, không mua sẵn.

## 5. Knowledge RAG

### 5.1. Nguồn dữ liệu

| Nhóm | Định dạng thường gặp | Khó khăn |
|---|---|---|
| Hồ sơ thiết kế, biện pháp thi công | PDF, DWG, IFC | Bản vẽ scan, bảng trong PDF |
| BOQ, dự toán | Excel, file phần mềm dự toán | Mỗi dự án một mẫu |
| Nhật ký, biên bản nghiệm thu | Scan có dấu, chữ ký, viết tay | OCR tiếng Việt, chữ viết tay |
| TCVN, QCVN, hợp đồng | PDF, Word | Phiên bản, hiệu lực |
| Sự kiện touchpoint | JSON qua MQTT | Khối lượng lớn, cần chuẩn hóa thời gian |
| Ảnh, point cloud, video | JPG, LAS/E57, MP4 | Chỉ lưu metadata vào chỉ mục |

### 5.2. Quy trình

1. **Bóc tách:** OCR tiếng Việt và trích bảng; mô hình thị giác–ngôn ngữ cho trang scan.
2. **Chia đoạn theo cấu trúc** (điều, khoản, mục, dòng BOQ), không chia theo số ký tự.
3. **Gắn nhãn ontology** cho từng đoạn: dự án, hạng mục, Km, mã cấu kiện.
4. **Tìm kiếm lai:**
   - BM25 có tách từ tiếng Việt (underthesea / pyvi) để bắt đúng mã hiệu, số hiệu TCVN;
   - vector đa ngôn ngữ (họ bge-m3 hoặc embedding tiếng Việt đã tinh chỉnh);
   - xếp hạng lại (reranker).
5. **GraphRAG** cho câu hỏi đi qua nhiều tài liệu: đi theo chuỗi liên kết ở mục 4.
6. **Trả lời có trích dẫn bắt buộc:** không có nguồn thì trả "không tìm thấy". Số liệu lấy qua công cụ SQL, không để mô hình tự viết.

### 5.3. Phân quyền ngay tại bước truy xuất

Lọc theo dự án, nhà thầu, vai trò **trước khi** tìm kiếm. Tài liệu dự án A không bao giờ lọt vào câu trả lời cho người dự án B. Đây là lỗi rò rỉ phổ biến nhất của RAG doanh nghiệp.

## 6. Mô hình

| Vai trò | Loại mô hình | Ghi chú |
|---|---|---|
| Trả lời, tác tử | LLM mở 8–30B (dạng MoE càng tốt), có tiếng Việt khá | Họ Qwen3 đang được đánh giá cao về đa ngôn ngữ; chọn bằng bộ đề của CC1, không bằng bảng xếp hạng quảng cáo |
| Tác vụ khó, ít gặp | LLM mở lớn hơn hoặc API thương mại cho dữ liệu không nhạy cảm | Định tuyến theo độ khó và độ nhạy dữ liệu |
| Embedding | Đa ngôn ngữ, tinh chỉnh thêm trên cặp hỏi–đáp ngành | Cải thiện truy xuất nhiều hơn đổi LLM |
| Đọc scan, bản vẽ | Mô hình thị giác–ngôn ngữ mở | Trích biên bản, bảng |
| Thị giác công trường | YOLO, ReID, pose 3D | Đã có trong hồ sơ touchpoint |

Mọi tên mô hình cụ thể chỉ chốt tại thời điểm triển khai, sau khi chạy bộ đề kiểm thử. Thị trường mô hình mở thay đổi theo quý.

### Bộ đề kiểm thử (golden set): làm đầu tiên

- 300–500 câu hỏi thật do chỉ huy trưởng, kỹ sư QS, kỹ sư giám sát viết, kèm đáp án và tài liệu nguồn.
- Chia nhóm: tra tiêu chuẩn, tra khối lượng, đối chiếu nghiệm thu, an toàn, hợp đồng, công trường tuyến.
- Mọi thay đổi (đổi mô hình, đổi embedding, tinh chỉnh) phải chạy lại bộ đề và so điểm.

## 7. Phần cứng và hạ tầng

Số liệu dưới đây là **ước lượng cấp độ**, cần báo giá thật trước khi lập dự toán.

| Tầng | Cấu hình tham khảo | Số lượng |
|---|---|---|
| Biên mỗi công trường | Jetson AGX Orin 64GB hoặc server 2U + L4 24GB, SSD NVMe 4TB, UPS | 1 bộ / công trường (khép kín) hoặc / NODE (tuyến) |
| Biên tuyến (corridor) | Hộp cảm biến năng lượng mặt trời, 4G + Starlink | Theo số đoạn Km |
| Suy luận tập đoàn | 2–4 GPU 48GB (L40S hoặc tương đương), chạy LLM 8–30B lượng tử hóa cho vài trăm người dùng | 1 cụm, nhân đôi khi > 20 dự án |
| Huấn luyện | Thuê theo giờ 1 node 8× H100/H200 khi cần LoRA hoặc huấn luyện tiếp | Không mua; FPT AI Factory, Viettel Cloud AI-Native (H200, Hòa Lạc) có tại Việt Nam |
| Lưu trữ | Kho đối tượng vài trăm TB (point cloud, video lưu có hạn) | Tăng theo số dự án |
| Mạng | Cáp quang hoặc 4G/5G từ công trường; chỉ đẩy metadata (< 2 Mbps / công trường như hồ sơ hiện tại) | — |

Mua hay thuê:

- **Suy luận:** mua và đặt nội bộ, vì chạy liên tục và đụng dữ liệu nhạy cảm.
- **Huấn luyện:** thuê, vì chỉ chạy theo đợt.

## 8. Pháp lý dữ liệu và AI

| Văn bản | Ảnh hưởng tới lõi |
|---|---|
| Luật Bảo vệ dữ liệu cá nhân 91/2025/QH15 + NĐ 356/2025/NĐ-CP (đã dẫn trong hồ sơ tuyến) | Khuôn mặt, dáng đi, vị trí công nhân là dữ liệu nhạy cảm: cần đồng ý, thời hạn lưu, giữ tại biên |
| Luật Trí tuệ nhân tạo 134/2025/QH15, hiệu lực 1/3/2026 | Cần rà nghĩa vụ phân loại rủi ro, minh bạch và trách nhiệm khi AI ra quyết định (đặc biệt tác tử tự ra lệnh ở 3.5) |
| Luật Dữ liệu 2024 | Phân loại dữ liệu quan trọng, lưu trữ trong nước |

Hệ quả thiết kế:

- Dữ liệu sinh trắc học không rời công trường.
- Mọi lệnh ghi của tác tử (khóa thanh toán, điều xe) phải qua người phê duyệt và để lại vết.
- Ưu tiên hạ tầng trong nước.

## 9. Lộ trình gắn với giai đoạn đã công bố

| Mốc | Lõi AI làm gì | Gắn touchpoint | Điều kiện qua mốc |
|---|---|---|---|
| Tháng 0–3 | Kiểm kê dữ liệu 2 dự án mẫu (1 khép kín, 1 tuyến); ontology v0; bộ đề 300 câu; RAG thử trên hồ sơ + TCVN; 1 server GPU | Chuẩn bị cho 1.1–1.4, L1–L3 | Trả lời đúng ≥ 80% bộ đề nhóm tra cứu, 100% có trích dẫn |
| Tháng 3–9 (Năm 1) | Nền dữ liệu nhận sự kiện từ touchpoint năm 1; đồ thị tri thức; tác tử chỉ đọc (soạn nháp nhật ký, checklist nghiệm thu); LoRA cho trích biên bản | 1.1–1.5, L1–L3, L8 | Kỹ sư dùng hằng ngày; sai số trích xuất < mức thống nhất |
| Tháng 9–18 (Năm 2) | Tác tử có quyền ghi, qua phê duyệt; mở rộng mọi dự án; cân nhắc huấn luyện tiếp nếu bộ đề cho thấy hổng | 2.1–2.4, L4–L7 | Nhật ký kiểm toán đầy đủ, không rò rỉ giữa dự án |
| Năm 3 | Site OS đa tác tử + bộ giải tối ưu | 3.1–3.5 | Theo hồ sơ giai đoạn 3 |

## 10. Đội ngũ tối thiểu

| Vai trò | Số người | Ghi chú |
|---|---|---|
| Kỹ sư dữ liệu | 2 | Nền dữ liệu, đường ống nạp |
| Kỹ sư ML / LLM | 2 | RAG, tác tử, tinh chỉnh |
| Kỹ sư tri thức ngành (kỹ sư xây dựng) | 2 | Ontology, bộ đề, gán nhãn |
| MLOps / hạ tầng | 1 | GPU, triển khai, giám sát |
| Quản lý sản phẩm | 1 | Ưu tiên theo nhu cầu chỉ huy trưởng |
| Bảo mật, pháp chế (kiêm nhiệm) | 0,5 | Dữ liệu cá nhân, Luật AI |

Kỹ sư xây dựng trong đội là điều kiện tiên quyết. Thiếu họ, ontology và bộ đề sẽ sai từ gốc.

## 11. Rủi ro chính

| Rủi ro | Cách chặn |
|---|---|
| Mô hình bịa số liệu | Số liệu chỉ qua công cụ; bắt buộc trích dẫn; bộ đề có nhóm câu bẫy |
| Hồ sơ scan chất lượng kém | Bắt đầu từ dự án mới (hồ sơ số); số hóa dần dự án cũ |
| Rò rỉ giữa dự án, nhà thầu | Lọc quyền trước truy xuất; kiểm thử xâm nhập riêng cho RAG |
| Khóa vào một nhà cung cấp mô hình | Giao diện mô hình chuẩn (tương thích OpenAI API); bộ đề làm thước đo khi đổi |
| Đầu tư GPU lớn trước khi có dữ liệu | Thuê trước, mua khi tải thật đã đo |

## 12. Nguồn đã kiểm (31/10/2026)

- Luật Trí tuệ nhân tạo 134/2025/QH15, hiệu lực 1/3/2026: [thuvienphapluat.vn](https://thuvienphapluat.vn/van-ban/Cong-nghe-thong-tin/Luat-Tri-tue-nhan-tao-2025-so-134-2025-QH15-679013.aspx), [vneconomy.vn](https://vneconomy.vn/luat-tri-tue-nhan-tao-se-co-hieu-luc-tu-ngay-132026.htm)
- Viettel Cloud AI-Native với H200 tại Hòa Lạc: [vnexpress.net](https://vnexpress.net/viettel-cloud-ai-native-tich-hop-chip-nvidia-h200-5103394.html)
- FPT AI Factory (H100/H200): [fpt.com](https://fpt.com/en/news/inside-fpts-first-ai-factory-in-vietnam-thousands-of-nvidia-superchips-in-action)
- Gợi ý mô hình mở cho tiếng Việt (nguồn nhà cung cấp, bằng chứng yếu): [siliconflow.com](https://www.siliconflow.com/articles/best-open-source-llm-for-vietnamese)

## 13. Quyết định của chủ đầu tư (31/10/2026)

| Câu hỏi | Chốt |
|---|---|
| Quy mô | Toàn tập đoàn ngay từ năm 1 |
| Hạ tầng | Kết hợp: suy luận và dữ liệu nhạy cảm nội bộ, thuê GPU trong nước để huấn luyện |
| Đội ngũ | Đội lõi 8–9 người |
| Xuất bản | Chưa. Tiếp tục brainstorm, đi sâu OCR, đọc và phân tích khối lượng vật tư, thuật toán trong proposal → xem `advisory-261031-0821-ocr-quantity-algorithms-deep-dive.md` |

Điểm vướng cần chốt: phạm vi toàn tập đoàn và đội 8–9 người kéo ngược nhau. Nền tảng dựng một lần cho cả tập đoàn được, nhưng việc nạp dữ liệu, ánh xạ ontology và viết bộ đề tốn công theo từng dự án. Phương án xử lý nằm ở câu hỏi cuối của bản đi sâu.
