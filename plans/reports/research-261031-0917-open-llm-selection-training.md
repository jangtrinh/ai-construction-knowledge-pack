# Nghiên cứu: Chọn LLM mở và cách huấn luyện cho lõi AI CC1

Ngày: 31/10/2026 · Bổ sung PHẦN VII (`CHAPTER_AI_CORE_OPERATING_PLATFORM.md`)

Nhãn:

- **[F]** nguồn đã kiểm;
- **[V]** số do nhà phát triển hoặc nhà cung cấp tự công bố;
- **[S]** trang tổng hợp bên thứ ba, cần kiểm lại trên model card gốc;
- **[I]** ước lượng của nhóm tư vấn.

## 1. Kết luận

1. **Mô hình làm việc hằng ngày:** chọn một mô hình mở 26–35B, giấy phép Apache 2.0, tiếng Việt khá. Ứng viên chính: Qwen3.6-27B, Qwen3.6-35B-A3B, Gemma 4 31B và Gemma 4 26B MoE. Quyết định bằng **thi đấu trên bộ đề CC1**, không theo bảng xếp hạng.
2. **Mô hình "thầy":** một mô hình rất lớn (DeepSeek-V4-Flash, MIT) chạy trên GPU thuê trong nước, dùng để sinh dữ liệu huấn luyện và chấm bài. Không dùng để phục vụ hằng ngày.
3. **Mô hình chuyên dụng:**
   - embedding và rerank: Qwen3-Embedding / Qwen3-Reranker;
   - OCR: PaddleOCR-VL;
   - viết tay tiếng Việt: VietOCR.
4. **Cách huấn luyện theo thang:** tinh chỉnh embedding và OCR → SFT LoRA → DPO → học tăng cường có phần thưởng kiểm chứng được (RLVR) → chưng cất từ thầy. Huấn luyện tiếp (CPT) chỉ khi bộ đề cho thấy hổng.
5. **Chi phí GPU rất nhỏ so với chi phí người:** toàn bộ chương trình huấn luyện năm 1, tính cả 5–10 lần thử mỗi việc, cỡ 400–1.000 giờ GPU H100, tức khoảng 1.000–3.000 USD theo giá thuê tại FPT AI Factory **[I]**. Huấn luyện từ đầu một mô hình 7B tốn khoảng 67.000 giờ GPU, gấp hơn 60 lần **[I]**.

## 2. Bản đồ mô hình mở (tháng 10/2026)

### 2.1. Mô hình làm việc hằng ngày: ứng viên tự host và tinh chỉnh

| Mô hình | Kiểu | Tham số | Giấy phép | Ngữ cảnh | Ghi chú |
|---|---|---|---|---|---|
| Qwen3.6-27B | Dense | 27B | Apache 2.0 **[S]** (một nguồn ghi "Qwen License", phải kiểm file LICENSE) | 262K **[S]** | Dense: dễ tinh chỉnh LoRA nhất; chạy được vLLM, SGLang |
| Qwen3.6-35B-A3B | MoE | 35B tổng, khoảng 3B hoạt động | Apache 2.0 **[S]** | — | Suy luận rất rẻ; tinh chỉnh MoE khó hơn dense |
| Gemma 4 31B | Dense | 31B | Apache 2.0 **[S]** | 256K **[S]** | Hơn 140 ngôn ngữ **[S]**; ra 2/4/2026 |
| Gemma 4 26B MoE | MoE | 26B | Apache 2.0 **[S]** | — | Phương án MoE thứ hai |
| Mistral Small 4 | — | — | Apache 2.0 **[S]** | — | Gộp suy luận, đa phương thức; tiếng Việt chưa rõ |
| gpt-oss-20B | MoE | 20B | Apache 2.0 **[S]** | — | Đối chứng: mạnh suy luận, thiên tiếng Anh **[I]** |
| Qwen3.8-27B | — | 27B | Chưa xác nhận | 262K **[S]** | Ra 8/2026 **[S]**; đưa vào thi đấu khi xác nhận giấy phép |

### 2.2. Mô hình "thầy": sinh dữ liệu, chấm bài, không phục vụ hằng ngày

| Mô hình | Tham số | Giấy phép | Hạ tầng cần | Dùng cho |
|---|---|---|---|---|
| DeepSeek-V4-Flash | 284B tổng / 13B hoạt động, ngữ cảnh 1M **[S]** | MIT **[S]** | Khoảng 300 GB bộ nhớ ở FP8: 4× H200 hoặc 8× H100 **[I]** | Sinh hỏi–đáp từ hồ sơ CC1; chấm bài trong vòng lặp RL |
| DeepSeek-V4-Pro | 1,6T / 49B hoạt động **[S]** | MIT **[S]** | Nhiều node | Không cần cho CC1 |
| Nemotron 3 Super | 120B / 12B hoạt động **[S]** | NVIDIA Nemotron Open Model License **[S]** | 2–4 GPU 80GB **[I]** | Viettel dùng làm nền cho VAI-LLM; danh sách ngôn ngữ chính thức chưa có tiếng Việt **[S]** |
| gpt-oss-120B | 120B MoE | Apache 2.0 **[S]** | 1 GPU 80GB | Chấm bài phụ |

### 2.3. Mô hình tiếng Việt trong nước

| Mô hình | Tình trạng | Có dùng làm nền không |
|---|---|---|
| Viettel VAI-LLM (120B, nền Nemotron 3 Super, công bố 27/7/2026) | Chưa thấy công bố mở trọng số **[S]** | Theo dõi; nếu mở trọng số thì đưa vào thi đấu |
| Zalo KiLM (13B, 2024) | Chưa rõ giấy phép **[S]** | Không, cho tới khi rõ giấy phép |
| VinaLLaMA (nền Llama 2, 2023) | Mở trọng số, đã cũ | Không |

Kết luận: chưa có mô hình tiếng Việt mở nào vượt các mô hình đa ngôn ngữ mới. **Chọn nền đa ngôn ngữ, rồi thích nghi bằng dữ liệu ngành của CC1.**

### 2.4. Mô hình chuyên dụng

| Việc | Mô hình | Giấy phép | Ghi chú |
|---|---|---|---|
| Embedding | Qwen3-Embedding 0.6B / 4B / 8B | Apache 2.0 **[F]** | Hỗ trợ hơn 100 ngôn ngữ, có tiếng Việt **[F]**; ngữ cảnh 32K |
| Rerank | Qwen3-Reranker 4B / 8B | Apache 2.0 **[F]** | MMTEB-R 72,7–72,9 **[V]** |
| Embedding đối chứng | bge-m3 | MIT | Mốc so sánh |
| OCR tài liệu | PaddleOCR-VL-1.6 (khoảng 1B) | Apache 2.0 | OmniDocBench v1.6 khoảng 96,3% **[V]** |
| OCR đối chứng | MinerU2.5, GLM-OCR, dots.ocr | Theo từng repo | Điểm do tác giả công bố **[V]** |
| Viết tay tiếng Việt | VietOCR | Apache 2.0 | Tinh chỉnh trên trang CC1 |
| Trích trường từ ảnh | Họ Qwen-VL (bản có thị giác) | Theo model card | Đọc ảnh + chữ OCR → JSON |

Không có bảng điểm truy xuất riêng cho tiếng Việt. Phải đo trên bộ đề của CC1.

## 3. Thi đấu chọn mô hình (4 tuần, không huấn luyện)

| Bước | Nội dung |
|---|---|
| 1 | Bộ đề 300–500 câu, chia nhóm: tiêu chuẩn, khối lượng, nghiệm thu, an toàn, hợp đồng, công trường tuyến, câu bẫy |
| 2 | Cùng một đường RAG, cùng prompt, cùng bộ công cụ cho mọi ứng viên |
| 3 | Chạy 4–6 ứng viên ở mục 2.1, lượng tử FP8 trên đúng loại GPU sẽ mua |
| 4 | Chấm tự động: đúng/sai số liệu, trích dẫn đúng nguồn, JSON hợp lệ, gọi công cụ đúng |
| 5 | Kỹ sư chấm mù 100 câu: tiếng Việt tự nhiên, đúng thuật ngữ |
| 6 | Đo hiệu năng: độ trễ, token/giây, số người dùng đồng thời trên 1 GPU |

Chọn 1 mô hình chính + 1 dự phòng. Thi đấu lại mỗi 6 tháng hoặc khi có bản mới.

## 4. Các cách huấn luyện

| # | Cách | Dữ liệu | Dạy mô hình điều gì | Công cụ |
|---|---|---|---|---|
| 1 | Tinh chỉnh embedding + reranker | 20–50 nghìn cặp câu hỏi ↔ đoạn hồ sơ, có mẫu âm khó | Tìm đúng đoạn TCVN, BOQ, biên bản | Sentence-Transformers, FlagEmbedding |
| 2 | Tinh chỉnh OCR | 2–5 nghìn trang CC1 đã gán nhãn | Đọc đúng phiếu cân, biên bản, chữ viết tay | PaddleOCR, VietOCR |
| 3 | SFT với LoRA/QLoRA | 5–20 nghìn mẫu hướng dẫn: trích biên bản, ánh xạ BOQ, gọi công cụ | Định dạng, thuật ngữ, cách gọi công cụ | Unsloth, LLaMA-Factory, TRL, Axolotl |
| 4 | DPO (học theo lựa chọn) | 2–5 nghìn cặp "câu trả lời tốt hơn / kém hơn" do kỹ sư chọn | Văn phong, mức thận trọng, trích dẫn | TRL |
| 5 | RLVR (GRPO) | Bài có đáp án kiểm được: mã định mức, phép tính khối lượng, JSON theo lược đồ | Suy luận đúng ở bài có thể chấm tự động | TRL, verl |
| 6 | Chưng cất từ thầy | Thầy sinh 30–50 nghìn mẫu từ hồ sơ CC1, kỹ sư lọc mẫu | Kiến thức ngành dạng hỏi–đáp | vLLM (sinh) + SFT |
| 7 | CPT, có điều kiện | 0,5–2 tỷ token: TCVN/QCVN, biện pháp thi công, giáo trình, hồ sơ; trộn 20–30% dữ liệu chung để không quên | Thuật ngữ và văn phong ngành ở tầng sâu | NeMo, Megatron, LLaMA-Factory |

Vì sao RLVR hợp ngành xây dựng: phần lớn đáp án kiểm được bằng máy (mã định mức, tổng khối lượng, điều khoản trích đúng, JSON hợp lệ). Không cần người chấm từng câu.

Phục vụ nhiều LoRA trên một nền: một mô hình gốc, mỗi tác vụ một adapter (trích biên bản, ánh xạ BOQ, trợ lý). vLLM nạp adapter theo yêu cầu, không phải nhân bản mô hình.

## 5. Tính toán thời gian và chi phí

### 5.1. Công thức

- Khối lượng tính khi huấn luyện ≈ 6 × số tham số × số token.
- H100 BF16 đỉnh khoảng 989 TFLOPS. Hiệu suất thực tế 35% → khoảng 350 TFLOPS mỗi GPU **[I]**.
- Giá thuê H100 tại FPT AI Factory: 2,54–2,99 USD/giờ **[V]**.

Ví dụ SFT trên mô hình 27B: 20.000 mẫu × 1.500 token × 3 lượt = 90 triệu token.

6 × 27×10⁹ × 9×10⁷ = 1,46×10¹⁹ phép tính ÷ 3,5×10¹⁴ = 41.700 giây ≈ **12 giờ GPU**.

### 5.2. Bảng ước lượng **[I]**

| Việc | Mô hình | Giờ GPU (H100) | Thời gian thực trên 8× H100 | Chi phí thuê |
|---|---|---|---|---|
| Tinh chỉnh embedding | Qwen3-Embedding-4B | 1–4 | < 1 giờ | < 15 USD |
| Tinh chỉnh OCR | PaddleOCR-VL (khoảng 1B) | 2–8 | < 1 giờ | < 25 USD |
| DPO | 27B | 5–10 | 1–2 giờ | < 30 USD |
| SFT LoRA | 27B | 12–25 | 2–3 giờ | 30–75 USD |
| RLVR (GRPO) | 27B | 50–200 | 1–2 ngày | 130–600 USD |
| Sinh dữ liệu chưng cất | DeepSeek-V4-Flash trên 4× H200 | 50–150 | 1–2 ngày | 150–600 USD |
| CPT 1 tỷ token | 27B, toàn tham số | 130–200 | 16–25 giờ | 330–600 USD |
| CPT 2 tỷ token | 27B, toàn tham số | 260–400 | 1,5–2 ngày | 660–1.200 USD |
| Huấn luyện từ đầu 7B, 2 nghìn tỷ token | 7B | khoảng 67.000 | khoảng 350 ngày trên 1 node; 64 GPU cần khoảng 6 tuần | khoảng 170.000–200.000 USD |

Ghi chú:

- Mỗi việc thường chạy 5–10 lần thử. Nhân con số với 5–10 khi lập ngân sách.
- QLoRA trên 1 GPU chậm hơn 1,5–2 lần so với LoRA trên nhiều GPU.
- Mốc tham chiếu: Meta báo cáo Llama 2 7B dùng khoảng 184.000 giờ GPU A100.
- Mô hình mở hiện nay học trên hàng chục nghìn tỷ token (Qwen3: 36 nghìn tỷ). Tự làm từ đầu với 2 nghìn tỷ token sẽ ra mô hình kém hơn mô hình miễn phí.

### 5.3. Bộ nhớ GPU cần

| Việc | Bộ nhớ tối thiểu | Nguồn |
|---|---|---|
| QLoRA 32B | khoảng 26 GB | Unsloth **[V]** |
| LoRA 32B | khoảng 76 GB | Unsloth **[V]** |
| QLoRA 70B | khoảng 41 GB | Unsloth **[V]** |
| QLoRA MoE 30B-A3B | khoảng 21 GB | Bên thứ ba **[S]** |
| CPT toàn tham số 27B (BF16 + Adam) | khoảng 430 GB → 8× H100 với FSDP/ZeRO-3 | Tính: 27B × 16 byte **[I]** |

## 6. Hạ tầng

### 6.1. Huấn luyện: thuê theo đợt tại Việt Nam

| Phương án | Dùng cho | Ghi chú |
|---|---|---|
| Thuê node 8× H100/H200 tại FPT AI Factory hoặc Viettel Cloud AI-Native | SFT, RLVR, CPT, sinh dữ liệu | Dữ liệu không ra nước ngoài, đúng quyết định hạ tầng kết hợp |
| 1 máy trạm nội bộ 2–4 GPU 48–96 GB | Thử nhanh QLoRA, tinh chỉnh embedding và OCR, chạy bộ đề | Cần báo giá; dùng chung với nhóm thi đấu mô hình |
| Giá tham khảo quốc tế | H200 khoảng 2,8–10,6 USD/giờ; B200 khoảng 3,9–8,6 USD/giờ **[S]** | Chênh lớn giữa nhà cung cấp |

### 6.2. Suy luận: đặt nội bộ

| Mô hình | Bộ nhớ trọng số (FP8) | GPU gợi ý |
|---|---|---|
| 27–31B dense | 27–31 GB + bộ nhớ đệm hội thoại | 2× GPU 48 GB cho vài chục người dùng đồng thời |
| 35B-A3B MoE | khoảng 36 GB | 2× GPU 48 GB; sinh token nhanh hơn dense |
| Embedding 4B + Reranker 4B | khoảng 8 GB | Dùng chung 1 GPU |
| OCR khoảng 1B | khoảng 2–4 GB | Dùng chung, hoặc chạy theo lô ban đêm |

Gói cụm suy luận đã ghi trong PHẦN VII (4 GPU 48 GB) đủ cho giai đoạn đầu.

### 6.3. Công cụ vận hành

- Theo dõi thí nghiệm và kho mô hình: MLflow tự host.
- Bộ chấm: lm-evaluation-harness + bộ đề CC1.
- Phục vụ: vLLM hoặc SGLang, nhiều LoRA trên một nền.
- Mỗi phiên bản có số hiệu, có thể quay lại bản trước trong 5 phút.

## 7. Dữ liệu huấn luyện

| Nguồn | Dùng cho | Lưu ý |
|---|---|---|
| Xác nhận của QS khi ánh xạ BOQ | SFT, RLVR | Có sẵn sau mỗi đợt nạp dự án |
| Biên bản đã OCR và người duyệt | SFT trích trường, tinh chỉnh OCR | Xóa dữ liệu cá nhân trước khi huấn luyện |
| TCVN, QCVN | CPT, RAG | Kiểm quyền sử dụng văn bản tiêu chuẩn cho huấn luyện |
| Nhật ký, biện pháp thi công | CPT, chưng cất | Lọc theo quyền dự án |
| Kỹ sư chọn câu trả lời tốt hơn | DPO | Thu ngay trong giao diện trợ lý |
| Câu hỏi thật của kỹ sư | Bộ đề, chưng cất | Không đưa câu trong bộ đề vào dữ liệu huấn luyện |

## 8. Lộ trình huấn luyện (phần triển khai)

| Tuần | Việc | Cổng chất lượng |
|---|---|---|
| 0–4 | Bộ đề, thi đấu mô hình, chọn nền | Mô hình chính + dự phòng |
| 4–8 | Tinh chỉnh embedding, reranker, OCR phiếu cân | Truy xuất top-5 tăng so với bản gốc; OCR đạt ngưỡng đợt 1 |
| 8–14 | SFT LoRA v1 (trích biên bản, gọi công cụ); DPO từ phản hồi kỹ sư | JSON hợp lệ ≥ 99%; bộ đề không giảm ở nhóm nào |
| 14–20 | RLVR cho ánh xạ BOQ và phép tính khối lượng; chưng cất từ thầy | Đúng mã định mức top-3 tăng rõ |
| Tháng 6+ | Quyết định CPT nếu bộ đề còn hổng thuật ngữ | Chỉ chạy khi có bằng chứng |

## 9. Rủi ro

| Rủi ro | Cách chặn |
|---|---|
| Giấy phép mô hình khác với trang tổng hợp | Đọc file LICENSE gốc trước khi chọn; lưu bản sao |
| Mô hình quên kiến thức chung sau tinh chỉnh | LoRA thay vì toàn tham số; trộn dữ liệu chung khi CPT; bộ đề có nhóm câu chung |
| Rò dữ liệu cá nhân vào trọng số | Xóa dữ liệu cá nhân trước huấn luyện; không đưa dữ liệu sinh trắc vào LLM |
| Bộ đề lọt vào dữ liệu huấn luyện | Tách kho; kiểm trùng trước mỗi lần huấn luyện |
| Nhảy theo bảng xếp hạng | Chỉ đổi mô hình khi thắng trên bộ đề CC1 |

## 10. Nguồn

- Mô hình mở 2026: [hidekazu-konishi.com](https://hidekazu-konishi.com/entry/open_weights_llm_release_history_and_timeline.html), [morphllm.com](https://www.morphllm.com/best-open-source-llm), [codersera.com](https://codersera.com/blog/open-source-llms-landscape-2026/)
- Qwen3.6: [noze.it](https://www.noze.it/en/insights/qwen-3-6/), [haimaker.ai](https://haimaker.ai/models/qwen/qwen3.6-27b), [GitHub QwenLM/Qwen3.8](https://github.com/QwenLM/Qwen3.8)
- Gemma 4: [Wikipedia](https://en.wikipedia.org/wiki/Gemma_(language_model)), [datanorth.ai](https://datanorth.ai/news/google-releases-gemma-4-open-models)
- DeepSeek-V4-Flash: [cometapi.com](https://www.cometapi.com/en/models/deepseek/deepseek-v4-flash)
- Nemotron 3 Super: [build.nvidia.com](https://build.nvidia.com/nvidia/nemotron-3-super-120b-a12b/modelcard)
- Viettel VAI-LLM: [viettelai.vn](https://viettelai.vn/en/tin-tuc/viettel-ai-ghi-nhan-ket-qua-buoc-dau-trong-hop-tac-cung-nvidia)
- VMLU: [ACL 2025](https://aclanthology.org/2025.acl-long.563)
- Qwen3-Embedding: [GitHub](https://github.com/QwenLM/Qwen3-Embedding)
- OCR: [roboflow.com](https://blog.roboflow.com/best-open-source-ocr-models/), [andrew.ooo](https://andrew.ooo/answers/best-open-source-ocr-models-2026-ranked/)
- Bộ nhớ tinh chỉnh: [Unsloth](https://unsloth.ai/docs/get-started/fine-tuning-for-beginners/unsloth-requirements.md), [spheron.network](https://www.spheron.network/blog/gpu-vram-requirements-fine-tune-llm-2026/)
- Giá GPU: [factory.fpt.ai](https://factory.fpt.ai/ai-insights/h100-cost), [akash.network](https://akash.network/the-bid/nvidia-h200-gpu-guide-2026-specs-benchmarks-pricing/), [spheron B200](https://www.spheron.network/blog/nvidia-b200-cloud-pricing-2026/)

## 11. Câu hỏi mở

1. Chạy thi đấu mô hình trên GPU thuê ngay, hay chờ máy trạm nội bộ?
2. Quyền dùng văn bản TCVN/QCVN để huấn luyện: ai trong CC1 xác nhận?
