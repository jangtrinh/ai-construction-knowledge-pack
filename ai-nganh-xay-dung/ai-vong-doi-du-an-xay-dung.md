---
id: "ai-vong-doi-du-an-xay-dung"
title: "AI trong vòng đời dự án xây dựng"
object_type: "concept"
domain: "ai-nganh-xay-dung"
description: "Dùng để đối chiếu từng giai đoạn của vòng đời dự án với ứng dụng AI đã có bằng chứng và mức tin cậy của bằng chứng đó."
when:
  - "xác định khâu nào của dự án nên thử AI trước"
  - "kiểm tra một lời chào hàng AI thuộc giai đoạn nào và đã có bằng chứng gì"
trust_tier: "draft"
version: "1.0.0"
source_attribution:
  - uri: "_evidence/ai-xay-dung-261029/sources/r4-brg-construction-ai-roi-research.txt"
    sha256: "47dca37dc4d7db85f27f9a38df305e16219bddebced059b52c62cbdc41b2fd48"
link_types:
  - link_type: "cites"
    target_id: "brg-ai-adoption-spans-project-lifecycle-2026"
  - link_type: "cites"
    target_id: "brg-roi-measurement-challenge-6-percent-no-evaluation"
  - link_type: "cites"
    target_id: "autodesk-forma-ai-early-stage-planning-design"
  - link_type: "cites"
    target_id: "vinci-construction-in-house-ai-tender-preselection"
  - link_type: "cites"
    target_id: "submittals-agent-94-percent-f1-20-real-specs"
  - link_type: "cites"
    target_id: "pcl-selects-document-crunch-after-five-solutions"
  - link_type: "cites"
    target_id: "autodesk-ocr-extracts-drawing-sheet-numbers"
  - link_type: "cites"
    target_id: "procore-native-ai-agents-announced-2026-05"
  - link_type: "cites"
    target_id: "alice-solar-project-68-days-faster-than-p6-schedule"
  - link_type: "cites"
    target_id: "nplan-ai-trained-on-over-a-million-projects-schedule-risk"
  - link_type: "cites"
    target_id: "dusty-robotics-fieldprinter-2-300-million-sqft-layout-1000-buildings"
  - link_type: "cites"
    target_id: "built-robotics-rpd-35-300-piles-per-day-vs-100-manual"
  - link_type: "cites"
    target_id: "shelby-erectors-tybot-275000-rebar-ties-gateway-bridge-deck"
  - link_type: "cites"
    target_id: "buildots-wates-deployment"
  - link_type: "cites"
    target_id: "openspace-360-capture-20x-faster"
  - link_type: "cites"
    target_id: "tum-progress-monitoring-detection-gain"
  - link_type: "cites"
    target_id: "waskita-karya-lrt-jakarta-site-visits-down"
  - link_type: "cites"
    target_id: "viact-alliad-ppe-reduction"
  - link_type: "cites"
    target_id: "trunk-tools-gilbane-246-questions-37-days"
  - link_type: "cites"
    target_id: "smartrock-astm-c1074"
  - link_type: "cites"
    target_id: "fragmented-design-fabrication-field-data"
  - link_type: "cites"
    target_id: "skanska-siloed-data-needed-foundational-structure"
  - link_type: "cites"
    target_id: "chaotic-jobsite-hinders-connected-technology"
  - link_type: "cites"
    target_id: "aecv-bench-door-window-counting-unsolved"
  - link_type: "about"
    target_id: "llm-rag"
  - link_type: "about"
    target_id: "ocr-document-ai"
  - link_type: "about"
    target_id: "robotics-thi-cong"
  - link_type: "about"
    target_id: "computer-vision-an-toan"
  - link_type: "about"
    target_id: "iot-cam-bien"
  - link_type: "about"
    target_id: "capture-tien-do-360"
  - link_type: "about"
    target_id: "vinci"
  - link_type: "about"
    target_id: "skanska"
  - link_type: "about"
    target_id: "astm-c1074"
  - link_type: "depends-on"
    target_id: "robotics-va-thiet-bi-tu-hanh"
  - link_type: "depends-on"
    target_id: "llm-va-ocr-tai-lieu-xay-dung"
  - link_type: "depends-on"
    target_id: "cong-truong-so-iot-giam-sat"
  - link_type: "cites"
    target_id: "cde-trien-khai-nhung-khong-dung-chu-dong"
  - link_type: "cites"
    target_id: "ai-kiem-tra-khoang-cach-thep-sai-so-2-65mm"
  - link_type: "about"
    target_id: "cde-iso-19650"
---

## Purpose

Đối chiếu từng giai đoạn của vòng đời dự án xây dựng (quy hoạch và thiết kế sơ bộ, đấu thầu và hồ sơ, tiến độ, thi công, hậu thi công) với các ứng dụng AI đã có bằng chứng trong pack và loại bằng chứng đi kèm. Tài liệu giúp biết một lời chào hàng AI thuộc khâu nào và đã được chứng minh tới đâu.

## When to Use / When NOT

- **ALLOWED**: Xác định khâu nào của dự án đã có bằng chứng để thử AI trước, và loại bằng chứng đó mạnh hay yếu.
- **ALLOWED**: Xếp một lời chào hàng AI vào đúng giai đoạn vòng đời và tra lại claim tương ứng.
- **NOT ALLOWED**: Coi tỉ lệ áp dụng theo giai đoạn của BRG là hiệu quả hay ROI; đó là tỉ lệ áp dụng theo khảo sát của BRG, ghi đúng như câu của nguồn, không phải số đo kết quả.
- **NOT ALLOWED**: Cộng hoặc so tỉ lệ áp dụng của BRG với số của Eurostat, APM hay RICS; mỗi số đo một đối tượng khác nhau.
- **NOT ALLOWED**: Dùng số vendor tự công bố (ALICE, nPlan, OpenSpace, viAct) làm kết quả đo độc lập cho từng giai đoạn.
- **NOT ALLOWED**: Suy rằng giai đoạn hậu thi công và vận hành đã có ứng dụng chứng minh được; pack chưa có bằng chứng đo được ở đó.

## Core Knowledge Content

Derived: Bảng đối chiếu giai đoạn với bằng chứng trong pack, suy ra từ các claim ở các mục sau; cột cuối là loại bằng chứng, không phải kết luận của nguồn.
| Giai đoạn | Ứng dụng AI đã có bằng chứng trong pack | Loại bằng chứng |
|---|---|---|
| Quy hoạch, thiết kế sơ bộ | Autodesk Forma: khám phá phương án và đánh giá điều kiện môi trường quanh khu đất | Blog của vendor năm 2023, chưa có số đo |
| Đấu thầu, hồ sơ, hợp đồng | Sàng lọc gói thầu (VINCI), trích xuất submittal, rà soát hợp đồng (PCL), OCR số hiệu bản vẽ (Autodesk) | Giải pháp nội bộ doanh nghiệp, bài hội nghị, thông cáo chung, tài liệu sản phẩm |
| Lập tiến độ, rủi ro | ALICE (nhanh hơn 68 ngày), nPlan (mô hình quan sát hơn một triệu dự án) | Case study và website của vendor |
| Thi công: máy móc và robot | In layout, đóng cọc, buộc thép | Số do hãng hoặc nhà thầu công bố |
| Thi công: theo dõi và an toàn | Buildots, OpenSpace, TUM, viAct, hỏi-đáp tài liệu với Trunk Tools | Phần lớn vendor tự công bố; TUM là nghiên cứu học thuật |
| Thi công: chất lượng vật liệu | Cảm biến SmartRock theo ASTM C1074 | Tài liệu sản phẩm và tiêu chuẩn ASTM |
| Hậu thi công, vận hành doanh nghiệp | Chỉ có tỉ lệ áp dụng theo khảo sát BRG | Khảo sát; chưa có ứng dụng cụ thể có số đo |

### 1. Bức tranh áp dụng theo giai đoạn

- BRG (10/2026): AI đã được áp dụng trên toàn vòng đời dự án, gồm tiền thi công 46%, thi công 49%, hậu thi công 40% và vận hành doanh nghiệp 43%.
<!-- ease:claim id=brg-ai-adoption-spans-project-lifecycle-2026 -->

Derived: Các tỉ lệ này đến từ một khảo sát của BRG và được ghi đúng như câu của nguồn; chúng không so trực tiếp được với tỉ lệ doanh nghiệp EU của Eurostat hay tỉ lệ nhúng toàn tổ chức của RICS (xem tong-quan-ai-nganh-xay-dung).

- Cũng theo BRG (10/2026), đo ROI của AI là thách thức riêng: 37% chủ yếu dùng chỉ số tài chính, 29% dùng chỉ số vận hành, khoảng một phần tư dùng mức sử dụng, và 6% không đánh giá ROI; một khảo sát của Kahua (qua BNN Bloomberg) nêu chỉ 8% người trả lời báo cáo giá trị đáng kể từ đầu tư AI.
<!-- ease:claim id=brg-roi-measurement-challenge-6-percent-no-evaluation -->

### 2. Quy hoạch và thiết kế sơ bộ

- Autodesk (blog Forma, 08/05/2023): Forma, bản tiến hoá của Spacemaker, ban đầu nhắm vào giai đoạn lập kế hoạch và thiết kế sơ bộ, dùng tự động hóa cùng insight chạy bằng AI để khám phá phương án thiết kế, giảm việc lặp và đánh giá điều kiện môi trường quanh khu đất.
<!-- ease:claim id=autodesk-forma-ai-early-stage-planning-design -->

Derived: Đây là mô tả khả năng sản phẩm trên blog của vendor; pack không có số đo kết quả cho giai đoạn này.

### 3. Đấu thầu, hồ sơ và hợp đồng (tiền thi công)

- VINCI Construction (22/09/2025) có giải pháp nội bộ tự động sàng lọc các gói thầu phù hợp nhất bằng cách phân tích hồ sơ và ước tính chi phí dựa trên các đề xuất trước đây; HEC Paris ghi VINCI dùng các công cụ AI tạo sinh như SprinkIA để tăng cường, thay vì tập trung hóa, chuyên môn địa phương.
<!-- ease:claim id=vinci-construction-in-house-ai-tender-preselection -->
- Submittals Agent (University of North Florida) đạt F1 94,3%, giảm 94% thời gian và 93% chi phí so với làm thủ công, đánh giá trên 20 bản spec thực.
<!-- ease:claim id=submittals-agent-94-percent-f1-20-real-specs -->
- Sau khi xem xét ít nhất năm giải pháp, CIO của PCL Construction cho biết Document Crunch cho phép tận dụng quy trình nội bộ hiện có để cải thiện và tự động hóa (thông cáo chung ngày 12/03/2024).
<!-- ease:claim id=pcl-selects-document-crunch-after-five-solutions -->
- Hệ thống OCR của Autodesk (Automated Drawing Extraction) đọc file PDF bản vẽ và tự động trích số hiệu tờ bản vẽ.
<!-- ease:claim id=autodesk-ocr-extracts-drawing-sheet-numbers -->
- Ngày 21/05/2026 Procore công bố các agent AI gốc gồm Deep Search, Submittals, RFI, Daily Log và Contract Review, xử lý tác vụ khối lượng lớn ngay trong nền tảng Procore.
<!-- ease:claim id=procore-native-ai-agents-announced-2026-05 -->

Derived: Đây là khâu có nhiều ứng dụng LLM và OCR nhất trong pack, nhưng bằng chứng chủ yếu là mô tả sản phẩm, thông cáo hoặc số vendor; chi tiết và giới hạn nằm ở llm-va-ocr-tai-lieu-xay-dung.

### 4. Lập tiến độ và rủi ro tiến độ

- ALICE Technologies (case study tự công bố, dự án điện mặt trời của một tổng thầu): sau khi áp dụng lịch được tối ưu, dự án hoàn thành nhanh hơn 68 ngày so với kịch bản dùng tiến độ P6 gốc.
<!-- ease:claim id=alice-solar-project-68-days-faster-than-p6-schedule -->
- Theo website của nPlan, mô hình AI của hãng đã quan sát hơn một triệu dự án thực để chỉ ra mốc nào sẽ trễ, vì sao, và can thiệp nào lấy lại được nhiều thời gian nhất.
<!-- ease:claim id=nplan-ai-trained-on-over-a-million-projects-schedule-risk -->

Derived: Con số 68 ngày so với một kịch bản đối chứng giả định (tiến độ P6 gốc), từ một dự án do chính vendor công bố. Câu của nPlan là mô tả sản phẩm, không phải kết quả đo trên dự án.

### 5. Thi công

- Robot in layout FieldPrinter 2 của Dusty Robotics, theo hãng, đã in hơn 300 triệu ft² mặt bằng trên hơn 1.000 tòa nhà.
<!-- ease:claim id=dusty-robotics-fieldprinter-2-300-million-sqft-layout-1000-buildings -->
- Built Robotics công bố robot đóng cọc quang điện RPD 35 lắp ước tính 300 cọc mỗi ngày với tổ 2 người, so với khoảng 100 cọc mỗi ngày của tổ 2 người làm thủ công thông thường.
<!-- ease:claim id=built-robotics-rpd-35-300-piles-per-day-vs-100-manual -->
- Nhà thầu Shelby Erectors đã dùng robot buộc thép TyBot hoàn thành hơn 275.000 mối buộc trên mặt cầu rộng 81.750 m² ở các giai đoạn đầu của dự án Gateway.
<!-- ease:claim id=shelby-erectors-tybot-275000-rebar-ties-gateway-bridge-deck -->
- Hệ thống nhận diện hình ảnh Buildots (đối chiếu hình ảnh công trường với kế hoạch số) đã được hai trong số các hãng xây dựng lớn nhất châu Âu, gồm Wates (Anh), dùng trên một số dự án nhà ở quy mô lớn, theo MIT Technology Review năm 2020.
<!-- ease:claim id=buildots-wates-deployment -->
- Theo thông cáo của OpenSpace được Geo Week News đăng 07/2020, khách hàng báo cáo nền tảng chụp 360° gắn mũ bảo hộ nhanh gấp 20 lần và đầy đủ hơn quy trình chụp công trường thủ công trước đây.
<!-- ease:claim id=openspace-360-capture-20x-faster -->
- Nhóm TUM báo cáo rằng, tùy loại công trình và mức che khuất, tỷ lệ phát hiện cấu kiện đã thi công có thể tăng tới 50% so với so sánh as-planned/as-built thuần hình học dựa trên SfM.
<!-- ease:claim id=tum-progress-monitoring-detection-gain -->
- Bentley công bố nhà thầu Waskita Karya (LRT Jakarta giai đoạn 1B) giảm 20% số lần đi thăm công trường nhờ digital twin và trực quan hóa theo thời gian thực.
<!-- ease:claim id=waskita-karya-lrt-jakarta-site-visits-down -->
- viAct và nhà thầu Alliad (Dubai) báo cáo giảm 41,7% vi phạm PPE và 46,3% vi phạm vùng nguy hiểm sau khi triển khai phân tích video AI tại một công trường bệnh viện ở Bờ Biển Ngà.
<!-- ease:claim id=viact-alliad-ppe-reduction -->
- Trong pilot TrunkText tại Gilbane, 246 câu hỏi được đặt ra trong 37 ngày làm việc; nhà cung cấp công bố mỗi câu tiết kiệm 20–40 phút tìm kiếm và đi lại.
<!-- ease:claim id=trunk-tools-gilbane-246-questions-37-days -->
- Cảm biến bê tông không dây SmartRock của Giatec được gắn lên cốt thép trước khi đổ để theo dõi nhiệt độ và độ chín tại chỗ theo ASTM C1074.
<!-- ease:claim id=smartrock-astm-c1074 -->

Derived: Hầu hết số liệu ở giai đoạn thi công là số do hãng, vendor hoặc nhà thầu tự công bố cho từng tác vụ, nên không cộng được thành một con số "AI tăng năng suất thi công". Ngoại lệ có tính nghiên cứu là kết quả của nhóm TUM. Chi tiết nằm ở robotics-va-thiet-bi-tu-hanh và cong-truong-so-iot-giam-sat.

### 6. Hậu thi công và vận hành doanh nghiệp

- Bài báo ISARC 2024 (Lille) về kiểm tra tự động khoảng cách thép bằng học sâu và camera RGB-D báo cáo sai số trung bình 2,65 mm; đây là mức abstract, chưa rõ thử ở phòng thí nghiệm hay hiện trường, và không nêu ngưỡng đạt/không đạt.
<!-- ease:claim id=ai-kiem-tra-khoang-cach-thep-sai-so-2-65mm -->

Derived: Với hậu thi công và vận hành doanh nghiệp, pack chỉ có tỉ lệ áp dụng theo khảo sát BRG ở mục 1. Với nghiệm thu chất lượng (QC), pack có đúng một mốc đo học thuật mức abstract (sai số trung bình 2,65 mm khi kiểm tra khoảng cách thép) và chưa có số đo từ dự án thực tế hay số liệu giảm làm lại; pack cũng chưa có bằng chứng đo được cho bảo trì dự đoán, data lake hay MLOps; đây là khoảng trống của pack, không phải kết luận rằng các ứng dụng này không tồn tại. Môi trường dữ liệu chung (CDE theo ISO 19650) không gắn riêng với giai đoạn hậu thi công; pack chỉ có hai số liệu khảo sát về mức tham gia và mức dùng, nằm ở ha-tang-ai-va-ap-dung-tap-doan mục B1, chưa có số đo hiệu quả hay ROI của CDE.

Decision: Chọn một khâu có đầu vào và đầu ra rõ, đo được trước (ví dụ trích xuất submittal hoặc theo dõi tiến độ một công trường), đặt chỉ số trước và sau, thay vì triển khai AI đồng loạt qua mọi giai đoạn.

## Failure Modes (Mandatory)

- **Nhầm tỉ lệ áp dụng với hiệu quả**: BRG chỉ ghi tỉ lệ áp dụng AI ở từng giai đoạn theo khảo sát của mình (46%, 49%, 40%, 43%), không nói về kết quả đạt được.
<!-- ease:claim id=brg-ai-adoption-spans-project-lifecycle-2026 -->
- **Không đo ROI**: 6% người trả lời BRG không đánh giá ROI, các nhóm còn lại dùng chỉ số khác nhau, và khảo sát Kahua nêu chỉ 8% báo giá trị đáng kể.
<!-- ease:claim id=brg-roi-measurement-challenge-6-percent-no-evaluation -->
- **Tin con số đối chứng giả định của vendor lập tiến độ**: mức nhanh hơn 68 ngày của ALICE so với kịch bản P6 gốc là case study tự công bố trên một dự án.
<!-- ease:claim id=alice-solar-project-68-days-faster-than-p6-schedule -->
- **Coi mô tả sản phẩm là bằng chứng kết quả**: câu của nPlan về việc đã quan sát hơn một triệu dự án và mô tả Forma của Autodesk là tuyên bố khả năng, không phải số đo trên dự án.
<!-- ease:claim id=nplan-ai-trained-on-over-a-million-projects-schedule-risk -->
<!-- ease:claim id=autodesk-forma-ai-early-stage-planning-design -->
- **Dữ liệu phân mảnh giữa các giai đoạn**: file thiết kế và mô hình chế tạo nằm ở các hệ thống khác nhau trong khi đội hiện trường làm việc từ bản in hoặc PDF lỗi thời; Skanska cũng nhận ra mình có nhiều dữ liệu bị phân mảnh, không liên thông, nên phải dựng cấu trúc nền tảng dữ liệu. Nghiên cứu sáu dự án metro ở Istanbul, vốn mô tả việc triển khai môi trường dữ liệu chung (CDE), cho thấy phần lớn chuyên gia dự án vẫn không chủ động dùng CDE.
<!-- ease:claim id=fragmented-design-fabrication-field-data -->
<!-- ease:claim id=skanska-siloed-data-needed-foundational-structure -->
<!-- ease:claim id=cde-trien-khai-nhung-khong-dung-chu-dong -->
- **Hiện trường động gây khó cho công nghệ phụ thuộc kết nối**: môi trường công trường động và hỗn loạn tạo điều kiện kém lý tưởng để triển khai và vận hành các công nghệ cần kết nối.
<!-- ease:claim id=chaotic-jobsite-hinders-connected-technology -->
- **Đếm ký hiệu bản vẽ chưa đáng tin**: đếm cửa đi và cửa sổ trên bản vẽ thường chỉ đạt 0,40–0,55 độ chính xác, nên các khâu lập khối lượng từ bản vẽ bằng AI cần kiểm tra lại.
<!-- ease:claim id=aecv-bench-door-window-counting-unsolved -->
- **Dùng số vendor tự công bố cho thi công**: OpenSpace, viAct, Dusty Robotics và Built Robotics đều là số hãng hoặc vendor nêu, trên điều kiện của từng nơi.
<!-- ease:claim id=openspace-360-capture-20x-faster -->
<!-- ease:claim id=viact-alliad-ppe-reduction -->
<!-- ease:claim id=dusty-robotics-fieldprinter-2-300-million-sqft-layout-1000-buildings -->
<!-- ease:claim id=built-robotics-rpd-35-300-piles-per-day-vs-100-manual -->
