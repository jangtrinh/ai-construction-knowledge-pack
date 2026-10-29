---
id: "llm-va-ocr-tai-lieu-xay-dung"
title: "LLM và OCR cho hồ sơ, bản vẽ, hợp đồng xây dựng"
object_type: "concept"
domain: "ai-nganh-xay-dung"
description: "Dùng để xác định LLM, RAG và OCR xử lý được hồ sơ kỹ thuật, bản vẽ và hợp đồng xây dựng tới đâu và cần người kiểm chứng ở khâu nào."
when:
  - "thiết kế pilot trích xuất submittal, RFI hoặc rà soát hợp đồng bằng LLM"
  - "đánh giá OCR cho bản vẽ và hồ sơ tiếng Việt"
  - "chọn RAG hay fine-tuning cho kho tài liệu dự án"
trust_tier: "draft"
version: "1.0.0"
source_attribution:
  - uri: "_evidence/ai-xay-dung-261029/sources/r2-flairs-submittals-agent-unf.txt"
    sha256: "f6f6e30fc9638ca4ebfb8ed4c0501de6d6d9139dbe6d770d7e824fc9e2d485e0"
link_types:
  - link_type: "cites"
    target_id: "submittals-agent-94-percent-f1-20-real-specs"
  - link_type: "cites"
    target_id: "llm-document-ai-construction"
  - link_type: "cites"
    target_id: "trunk-tools-gilbane-milwaukee-456m-project-pilot"
  - link_type: "cites"
    target_id: "trunk-tools-gilbane-246-questions-37-days"
  - link_type: "cites"
    target_id: "procore-native-ai-agents-announced-2026-05"
  - link_type: "cites"
    target_id: "pcl-selects-document-crunch-after-five-solutions"
  - link_type: "cites"
    target_id: "autodesk-ocr-extracts-drawing-sheet-numbers"
  - link_type: "cites"
    target_id: "aecv-bench-ocr-and-text-qa-strongest"
  - link_type: "cites"
    target_id: "aecv-bench-door-window-counting-unsolved"
  - link_type: "cites"
    target_id: "building-code-table-finetune-qwen-3b-gain-over-100-percent"
  - link_type: "cites"
    target_id: "rag-beats-finetuning-on-least-popular-knowledge"
  - link_type: "cites"
    target_id: "finetuning-small-lms-needs-extensive-resources"
  - link_type: "cites"
    target_id: "vietnamese-text-recognition-diacritics-and-data-gap"
  - link_type: "cites"
    target_id: "vietnamese-degree-ocr-deepseek-unsupported-gemini-strong"
  - link_type: "cites"
    target_id: "procore-drawing-ocr-title-four-language-dictionaries"
  - link_type: "cites"
    target_id: "azure-document-intelligence-read-min-text-height-12px"
  - link_type: "cites"
    target_id: "public-llm-queries-stored-and-reused-ncsc"
  - link_type: "cites"
    target_id: "lexis-westlaw-ai-legal-tools-hallucinate-17-33-percent"
  - link_type: "cites"
    target_id: "lexisnexis-hallucination-free-linked-citations-claim"
  - link_type: "cites"
    target_id: "aia-contracts-ai-error-liability-stays-with-humans"
  - link_type: "about"
    target_id: "llm-rag"
  - link_type: "about"
    target_id: "ocr-document-ai"
  - link_type: "cites"
    target_id: "submittals-agent-bounded-llm-extraction"
  - link_type: "cites"
    target_id: "pdftotext-trich-xuat-tai-lieu-thuc-nghiem"
---

## Purpose

Làm rõ LLM, RAG và OCR đã xử lý được hồ sơ kỹ thuật, bản vẽ và hợp đồng xây dựng tới mức nào, dựa trên các triển khai có số liệu và các benchmark đã công bố. Tài liệu chỉ ra khâu nào cần người kiểm chứng và nói thẳng chỗ pack chưa có bằng chứng, nhất là với tài liệu tiếng Việt.

## When to Use / When NOT

- **ALLOWED**: Thiết kế pilot trích xuất submittal, hỏi-đáp trên kho tài liệu dự án hoặc rà soát hợp đồng có LLM hỗ trợ và có người kiểm chứng.
- **ALLOWED**: Chọn giữa RAG và fine-tuning, hoặc đánh giá OCR cho bản vẽ và hồ sơ tiếng Việt.
- **NOT ALLOWED**: Viết hoặc nói rằng LLM "đọc hiểu" toàn bộ spec hay hợp đồng; bằng chứng trong pack (mục 1) chỉ đỡ cho việc trích xuất có giới hạn; con người cần giữ quyền diễn giải.
- **NOT ALLOWED**: Coi số tiết kiệm thời gian của vendor (Trunk Tools, TrunkRegister) là kết quả đo độc lập.
- **NOT ALLOWED**: Suy kết quả OCR trên văn bằng tiếng Việt sang bản vẽ, hợp đồng hay quy chuẩn xây dựng.
- **NOT ALLOWED**: Đưa nội dung hợp đồng hay thông tin nhạy cảm của dự án vào công cụ LLM công khai.

## Core Knowledge Content

Derived: Bảng tóm tắt theo ứng dụng, suy ra từ các claim ở các mục sau; cột cuối là đánh giá mức tin cậy của pack, không phải kết luận của nguồn.
| Ứng dụng | Bằng chứng trong pack | Mức tin cậy |
|---|---|---|
| Trích xuất submittal từ spec | Đánh giá trên 20 spec thực; chạy sáu tháng tại một nhà thầu | Bài hội nghị FLAIRS, một nhà thầu không nêu tên |
| Hỏi-đáp trên tài liệu dự án | Pilot Gilbane với TrunkText: 246 câu hỏi trong 37 ngày làm việc | Vendor tự công bố |
| Rà soát hợp đồng | PCL chọn Document Crunch sau khi xem ít nhất năm giải pháp | Thông cáo chung, không có số đo kết quả |
| Trích số hiệu bản vẽ bằng OCR | Chức năng Automated Drawing Extraction của Autodesk | Tài liệu sản phẩm |
| Trích text từ PDF có lớp văn bản (bước đầu của pipeline số hóa) | Thực nghiệm cục bộ: pdftotext trích 89.318 ký tự từ 57/57 trang có lớp văn bản của một thông tư | Tự đo trên một tài liệu, không phải benchmark độc lập |
| Đếm ký hiệu bản vẽ (cửa đi, cửa sổ) | Độ chính xác thường chỉ 0,40–0,55 | Benchmark học thuật, chưa giải quyết được |
| Hồ sơ và bản vẽ tiếng Việt | OCR trên văn bằng; chưa có thử nghiệm trên hồ sơ xây dựng | Thử nghiệm ngoài ngành xây dựng |

### 1. Triển khai đã có số liệu hoặc bằng chứng sử dụng

- Submittals Agent (University of North Florida) đạt F1 94,3%, giảm 94% thời gian và 93% chi phí so với làm thủ công, đánh giá trên 20 bản spec thực.
<!-- ease:claim id=submittals-agent-94-percent-f1-20-real-specs -->
- Một trang tiếp thị của Trunk Tools (TrunkRegister) mô tả việc lập register rút từ một tuần làm thủ công xuống còn vài phút; đây là tuyên bố tiếp thị cùng chủ đề, không phải phép đo và không xác nhận con số 94,3%.
<!-- ease:claim id=submittals-agent-94-percent-f1-20-real-specs -->
- Hệ thống Submittals Agent đã được triển khai sáu tháng tại một nhà thầu xây dựng; nguồn không nêu tên nhà thầu.
<!-- ease:claim id=llm-document-ai-construction -->
- Về kiến trúc, hệ thống Submittals Agent (University of North Florida) phân tích spec bằng PyMuPDF và phân đoạn theo quy tắc CSI MasterFormat; LLM chỉ được gọi để trích xuất metadata có giới hạn (bounded), giữ giám sát của con người đối với mọi diễn giải hợp đồng.
<!-- ease:claim id=submittals-agent-bounded-llm-extraction -->

Derived: Các claim trên chỉ đỡ cho một việc: trích xuất yêu cầu submittal từ spec, đánh giá trên 20 bản spec và chạy sáu tháng ở một nhà thầu không nêu tên. Kiến trúc nguồn mô tả (claim ngay trên) khớp với cách đọc này: spec được phân tích bằng PyMuPDF và quy tắc, LLM chỉ được gọi cho trích xuất metadata có giới hạn (bounded extraction) và con người giữ quyền diễn giải hợp đồng; đây không phải LLM đọc hiểu cả bộ spec hay hợp đồng. Con số F1 94,3% được nguồn gán cho cả hệ thống Submittals Agent, không phải cho riêng một mô hình LLM; pack có mô tả kiến trúc nhưng không có claim nào đo riêng phần đóng góp của LLM hay nói về năng lực suy luận của LLM trên bộ hồ sơ đầy đủ.

- Gilbane thí điểm TrunkText của Trunk Tools trên dự án 456 triệu USD ở Milwaukee, dự án có hơn 33,7 GB dữ liệu trên 20,6 nghìn tài liệu; đây là số liệu do nhà cung cấp công bố, và bài của BuiltWorlds lặp lại đúng số liệu pilot đó nên khác nơi đăng nhưng không độc lập về dữ liệu.
<!-- ease:claim id=trunk-tools-gilbane-milwaukee-456m-project-pilot -->
- Trong pilot TrunkText tại Gilbane, 246 câu hỏi được đặt ra trong 37 ngày làm việc; nhà cung cấp công bố mỗi câu tiết kiệm 20–40 phút tìm kiếm và đi lại.
<!-- ease:claim id=trunk-tools-gilbane-246-questions-37-days -->
- Ngày 21/05/2026 Procore công bố các agent AI gốc gồm Deep Search, Submittals, RFI, Daily Log và Contract Review, xử lý tác vụ khối lượng lớn ngay trong nền tảng Procore; claim này của pack chỉ ghi nhận việc công bố tính năng, không ghi nhận số đo hiệu năng.
<!-- ease:claim id=procore-native-ai-agents-announced-2026-05 -->
- Sau khi xem xét ít nhất năm giải pháp, CIO của PCL Construction cho biết Document Crunch cho phép tận dụng quy trình nội bộ hiện có để cải thiện và tự động hóa (thông cáo chung ngày 12/03/2024).
<!-- ease:claim id=pcl-selects-document-crunch-after-five-solutions -->
- Hệ thống OCR của Autodesk (Automated Drawing Extraction) đọc file PDF bản vẽ và tự động trích số hiệu tờ bản vẽ; đây là mô tả chức năng trong tài liệu sản phẩm.
<!-- ease:claim id=autodesk-ocr-extracts-drawing-sheet-numbers -->

### 2. Năng lực đo được trên bản vẽ và quy chuẩn

- Trên AECV-Bench, OCR và hỏi-đáp tài liệu thiên về văn bản đạt kết quả mạnh nhất (tới 0,95 độ chính xác), còn suy luận không gian ở mức trung bình.
<!-- ease:claim id=aecv-bench-ocr-and-text-qa-strongest -->
- Cũng trên AECV-Bench, hiểu ký hiệu bản vẽ, nhất là đếm cửa đi và cửa sổ, vẫn chưa giải quyết được và thường chỉ đạt 0,40–0,55 độ chính xác.
<!-- ease:claim id=aecv-bench-door-window-counting-unsolved -->
- Trên bài toán đọc bảng trong quy chuẩn xây dựng, các mô hình sau fine-tune cải thiện đáng kể; riêng Qwen2.5-VL-3B-Instruct tăng độ chính xác tương đối trên 100%.
<!-- ease:claim id=building-code-table-finetune-qwen-3b-gain-over-100-percent -->

Derived: Mức tăng tương đối trên 100% không cho biết độ chính xác tuyệt đối sau fine-tune, nên không dùng con số này để kết luận mô hình đã đủ tin cậy cho quy chuẩn.

- Thực nghiệm cục bộ của pack, không phải benchmark độc lập: pdftotext 26.03.0 trích được 89.318 ký tự (2.916 dòng) từ 57 trang, cả 57 trang có lớp văn bản, của Technical Circular (Works) No. 3/2023 do Development Bureau Hồng Kông ban hành về Hệ thống An toàn Công trường Thông minh (memo cập nhật 10/07/2026), minh họa bước trích text máy-đọc-được trong pipeline số hóa tài liệu xây dựng; chỉ đo khối lượng trích, không đo độ chính xác.
<!-- ease:claim id=pdftotext-trich-xuat-tai-lieu-thuc-nghiem -->

Derived: Đây là thực nghiệm do chính pack chạy trên một tài liệu bằng một công cụ, không có văn bản tham chiếu: nó chỉ cho biết tài liệu này có lớp văn bản máy đọc được và bước trích text chạy được. Nó không đo độ chính xác, không phải benchmark độc lập và không so được với các benchmark ở trên; bản scan hoặc bản vẽ không có lớp văn bản nằm ngoài thực nghiệm này.

### 3. RAG hay fine-tuning

- Với tri thức thực tế ít phổ biến nhất, RAG vượt fine-tuning (FT) với biên độ lớn, dù FT vẫn nâng hiệu năng ở các thực thể có độ phổ biến khác nhau. Một nghiên cứu thứ hai cũng ghi nhận fine-tuning không giám sát chỉ cải thiện phần nào, còn RAG vượt nó nhất quán, cả với tri thức đã gặp khi huấn luyện lẫn tri thức hoàn toàn mới.
<!-- ease:claim id=rag-beats-finetuning-on-least-popular-knowledge -->
- Cùng nghiên cứu ghi nhận fine-tuning, dù có lợi cho mô hình nhỏ, đòi hỏi nhiều tài nguyên.
<!-- ease:claim id=finetuning-small-lms-needs-extensive-resources -->

Decision: Với tri thức hẹp và ít phổ biến như spec của từng dự án, hợp đồng và quy chuẩn, bắt đầu bằng RAG trên kho tài liệu có kiểm soát và có người kiểm chứng; chỉ cân nhắc fine-tuning sau khi đã chứng minh nhu cầu, vì nó đòi hỏi nhiều tài nguyên.

### 4. Tiếng Việt

- Khảo sát về xử lý tài liệu tiếng Việt nêu rằng nhận dạng văn bản tiếng Việt gặp thách thức riêng do dấu phụ phức tạp, biến thể thanh điệu và thiếu bộ dữ liệu chú thích quy mô lớn.
<!-- ease:claim id=vietnamese-text-recognition-diacritics-and-data-gap -->
- Trong một thử nghiệm OCR trên văn bằng tiếng Việt, DeepSeek không hỗ trợ tiếng Việt, EasyOCR phải chỉ định vùng tọa độ bằng tay, còn Gemini API và LLaMA cho kết quả vượt trội, độ chính xác cao.
<!-- ease:claim id=vietnamese-degree-ocr-deepseek-unsupported-gemini-strong -->
- Theo hướng dẫn OCR bản vẽ của Procore, phần tên bản vẽ (Title) chỉ được nhận dạng với từ thuộc từ điển Anh, Tây Ban Nha, Pháp và Đức, tức tiếng Việt nằm ngoài danh sách; hướng dẫn của Autodesk cũng cảnh báo văn bản dọc hoặc không phải tiếng Anh sẽ không được đọc đúng nếu chưa đặt tùy chọn phù hợp.
<!-- ease:claim id=procore-drawing-ocr-title-four-language-dictionaries -->
- Azure AI Document Intelligence (Read) yêu cầu chiều cao chữ tối thiểu 12 pixel trên ảnh 1024x768, tương đương khoảng chữ 8pt ở 150 DPI.
<!-- ease:claim id=azure-document-intelligence-read-min-text-height-12px -->

Derived: Phép thử OCR tiếng Việt trong pack được làm trên văn bằng, không phải bản vẽ, hợp đồng hay quy chuẩn xây dựng, nên không dùng làm kết quả cho hồ sơ xây dựng. Pack cũng chưa có số đo OCR cho bản vẽ khổ lớn quét chất lượng thấp, chỉ có giới hạn đầu vào của Azure ở trên.

### 5. Rủi ro dữ liệu, độ tin cậy và trách nhiệm

- NCSC (Anh) nêu rằng câu hỏi gửi tới LLM công khai được lưu trữ và gần như chắc chắn sẽ được dùng để phát triển dịch vụ hoặc mô hình LLM; bài hướng dẫn của Lathrop GPM khuyến nghị không nhập thông tin mật, độc quyền hoặc nhạy cảm của dự án vào bất kỳ công cụ AI công khai nào như ChatGPT hay Microsoft Copilot.
<!-- ease:claim id=public-llm-queries-stored-and-reused-ncsc -->
- Đánh giá của Stanford cho thấy các công cụ nghiên cứu pháp lý AI của LexisNexis và Thomson Reuters vẫn hallucinate trong 17–33% số lần; chính LexisNexis cũng nêu rằng không công cụ Gen AI nào hiện nay đạt độ chính xác 100%.
<!-- ease:claim id=lexis-westlaw-ai-legal-tools-hallucinate-17-33-percent -->
- Thông cáo ngày 25/10/2023 của LexisNexis ra mắt Lexis+ AI tuyên bố trích dẫn pháp lý có liên kết không hallucination, trong khi Stanford đo được 17–33% hallucination ở chính công cụ này.
<!-- ease:claim id=lexisnexis-hallucination-free-linked-citations-claim -->

Derived: Theo resolution của claim thứ hai, hai phát biểu khác phạm vi nên cả hai cùng đứng: thông cáo là tuyên bố tiếp thị gắn với trích dẫn pháp lý có liên kết, còn Stanford đo độc lập tỉ lệ hallucination chung của chính các công cụ này. Khi đánh giá rủi ro, dùng số đo của Stanford. Đây là bằng chứng trong lĩnh vực pháp lý, chỉ dùng để nhắc rằng tuyên bố "không hallucination" của vendor cần kiểm tra độc lập, không chuyển nguyên số sang tài liệu xây dựng.

- Hợp đồng AIA đặt trách nhiệm về bản vẽ và spec lên chuyên gia thiết kế, nên nếu lỗi bắt nguồn từ nội dung do AI sinh ra thì trách nhiệm vẫn quay về bên con người; bài của Bracewell nêu chủ đầu tư và nhà thầu có thể đối mặt khiếu nại sơ suất vì giám sát, đào tạo hoặc bảo trì hệ thống AI không đầy đủ.
<!-- ease:claim id=aia-contracts-ai-error-liability-stays-with-humans -->

### 6. Khoảng trống Việt Nam

Derived: Pack không có claim nào về LLM hay OCR đang dùng tại một tập đoàn xây dựng Việt Nam, và không có phép thử nào trên quy chuẩn hay hợp đồng tiếng Việt; đây là khoảng trống chính của nhánh này.

Decision: Pilot đầu tiên nên dựng bộ kiểm thử nội bộ từ chính bản vẽ, hợp đồng và quy chuẩn tiếng Việt của doanh nghiệp, đo tỉ lệ lỗi trước khi mở rộng, và giữ người kiểm chứng ở mọi kết quả có hệ quả hợp đồng.

## Failure Modes (Mandatory)

- **Đếm ký hiệu bản vẽ chưa giải quyết được**: đếm cửa đi và cửa sổ thường chỉ đạt 0,40–0,55 độ chính xác, nên không dùng LLM hay mô hình thị giác để lập bảng thống kê từ bản vẽ mà không kiểm tra lại.
<!-- ease:claim id=aecv-bench-door-window-counting-unsolved -->
- **OCR không hỗ trợ ngôn ngữ hoặc từ điển cần dùng**: phần tên bản vẽ trong OCR của Procore chỉ nhận từ thuộc bốn từ điển Anh, Tây Ban Nha, Pháp và Đức, tiếng Việt nằm ngoài danh sách.
<!-- ease:claim id=procore-drawing-ocr-title-four-language-dictionaries -->
- **Chất lượng ảnh dưới ngưỡng đầu vào**: Azure Document Intelligence (Read) cần chiều cao chữ tối thiểu 12 pixel trên ảnh 1024x768, nên bản quét nhỏ hoặc mờ có thể không đọc được.
<!-- ease:claim id=azure-document-intelligence-read-min-text-height-12px -->
- **Tiếng Việt: dấu phụ và thiếu dữ liệu chú thích**: nhận dạng văn bản tiếng Việt gặp thách thức riêng do dấu phụ phức tạp, biến thể thanh điệu và thiếu bộ dữ liệu chú thích quy mô lớn; không có OCR nào được bảo đảm hỗ trợ tiếng Việt chỉ vì hỗ trợ tiếng Anh.
<!-- ease:claim id=vietnamese-text-recognition-diacritics-and-data-gap -->
- **Công cụ không hỗ trợ tiếng Việt hoặc cần cấu hình thủ công**: trong thử nghiệm trên văn bằng, DeepSeek không hỗ trợ tiếng Việt và EasyOCR phải chỉ định tọa độ bằng tay.
<!-- ease:claim id=vietnamese-degree-ocr-deepseek-unsupported-gemini-strong -->
- **Hallucination bị coi nhẹ**: các công cụ AI pháp lý được quảng bá là đáng tin vẫn hallucinate trong 17–33% số lần khi bị đo độc lập, và tuyên bố "không hallucination" của vendor chỉ là tiếp thị.
<!-- ease:claim id=lexis-westlaw-ai-legal-tools-hallucinate-17-33-percent -->
<!-- ease:claim id=lexisnexis-hallucination-free-linked-citations-claim -->
- **Rò rỉ dữ liệu dự án qua LLM công khai**: câu hỏi gửi tới LLM công khai được lưu trữ và gần như chắc chắn sẽ được dùng để phát triển mô hình.
<!-- ease:claim id=public-llm-queries-stored-and-reused-ncsc -->
- **Trách nhiệm pháp lý không chuyển sang AI**: lỗi bắt nguồn từ nội dung do AI sinh ra vẫn quay về bên con người theo hợp đồng AIA.
<!-- ease:claim id=aia-contracts-ai-error-liability-stays-with-humans -->
- **Fine-tuning tốn tài nguyên**: dù có lợi cho mô hình nhỏ, fine-tuning đòi hỏi nhiều tài nguyên, và mức tăng tương đối lớn chưa nói lên độ chính xác tuyệt đối.
<!-- ease:claim id=finetuning-small-lms-needs-extensive-resources -->
<!-- ease:claim id=building-code-table-finetune-qwen-3b-gain-over-100-percent -->
- **Dùng số của vendor như kết quả đo độc lập**: số liệu pilot Trunk Tools tại Gilbane do nhà cung cấp công bố, và nguồn thứ hai lặp lại cùng dữ liệu.
<!-- ease:claim id=trunk-tools-gilbane-milwaukee-456m-project-pilot -->
<!-- ease:claim id=trunk-tools-gilbane-246-questions-37-days -->
- **Nói quá năng lực LLM trên spec**: claim triển khai sáu tháng chỉ cho thấy một hệ thống trích xuất submittal đã chạy ở một nhà thầu không nêu tên, và nguồn mô tả LLM trong hệ thống đó chỉ được gọi cho trích xuất metadata có giới hạn.
<!-- ease:claim id=llm-document-ai-construction -->
<!-- ease:claim id=submittals-agent-bounded-llm-extraction -->
- **Coi thực nghiệm cục bộ là benchmark**: pdftotext chỉ được chạy trên một PDF có lớp văn bản và chỉ đo khối lượng trích, không đo độ chính xác; không dùng số này để kết luận về bản scan, bản vẽ hay chất lượng OCR.
<!-- ease:claim id=pdftotext-trich-xuat-tai-lieu-thuc-nghiem -->
