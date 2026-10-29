---
id: "robotics-va-thiet-bi-tu-hanh"
title: "Robotics và thiết bị tự hành trong xây dựng"
object_type: "concept"
domain: "ai-nganh-xay-dung"
description: "Dùng để phân biệt robot, xe/máy tự hành và drone đã chạy sản xuất thật với loại mới ở mức thương mại sơ khởi hoặc đã thất bại."
when:
  - "chọn robot, xe/máy tự hành hoặc drone để thí điểm trên công trường"
  - "đánh giá lời chào hàng hoặc số liệu năng suất do hãng robot tự công bố"
trust_tier: "draft"
version: "1.0.0"
source_attribution:
  - uri: "_evidence/ai-xay-dung-261029/sources/r1-komatsu-1000-ultra-class-autonomous-haul-trucks.txt"
    sha256: "33c94452169fcbc8ccf516be22ccc0bcd1078285931794c5b07ee6f32a1cc3be"
link_types:
  - link_type: "cites"
    target_id: "autonomous-equipment-production-deployment"
  - link_type: "cites"
    target_id: "luck-stone-caterpillar-autonomous-hauling-expands-after-18-month-pilot"
  - link_type: "cites"
    target_id: "komatsu-aim-autonomous-machines-commercial-deployment-us-2026"
  - link_type: "cites"
    target_id: "bedrock-robotics-autonomous-excavators-commercially-operating-nevada"
  - link_type: "cites"
    target_id: "dusty-robotics-fieldprinter-2-300-million-sqft-layout-1000-buildings"
  - link_type: "cites"
    target_id: "built-robotics-rpd-35-300-piles-per-day-vs-100-manual"
  - link_type: "cites"
    target_id: "shelby-erectors-tybot-275000-rebar-ties-gateway-bridge-deck"
  - link_type: "cites"
    target_id: "monumental-robot-bricklayer-500-bricks-per-8-hour-shift"
  - link_type: "cites"
    target_id: "boston-dynamics-spot-caltrans-confined-space-60000-usd-estimate"
  - link_type: "cites"
    target_id: "dji-ppk-drone-mapping-2-cm-vertical-rmse-terrestrial-surveying"
  - link_type: "cites"
    target_id: "vietnam-decree-288-2025-uav-2kg-bvlos-preprogrammed-flight-permit"
  - link_type: "cites"
    target_id: "backx-passive-exoskeleton-rebar-back-discomfort-minus-100-chest-tripled"
  - link_type: "cites"
    target_id: "exoskeleton-masons-increased-low-back-muscle-activity-premus-2025"
  - link_type: "cites"
    target_id: "ets-ground-robots-construction-rely-on-teleoperation"
  - link_type: "cites"
    target_id: "ets-ground-robots-construction-workers-criticize-fear-displacement"
  - link_type: "cites"
    target_id: "worksafe-wa-sir-226-autonomous-truck-collision-turnaround-loop-not-delineated"
  - link_type: "cites"
    target_id: "bhp-jimblebar-autonomous-trucks-collide-loss-of-traction-slippery-road"
  - link_type: "cites"
    target_id: "fbr-truck-mounted-bricklaying-robot-6-million-upfront-bet"
  - link_type: "cites"
    target_id: "diamond-age-robotic-homebuilder-ceased-operations-bankruptcy-2024"
  - link_type: "cites"
    target_id: "icon-3d-printed-homes-lays-off-114-warn-letter-2025"
  - link_type: "about"
    target_id: "autonomous-haulage-system"
  - link_type: "about"
    target_id: "robotics-thi-cong"
  - link_type: "about"
    target_id: "drone-khao-sat"
  - link_type: "about"
    target_id: "komatsu"
  - link_type: "about"
    target_id: "caterpillar"
  - link_type: "about"
    target_id: "nghi-dinh-288-2025"
  - link_type: "cites"
    target_id: "vietnam-decree-288-2025-visual-licence-025kg"
---

## Purpose

Phân tầng robot, xe/máy tự hành và drone trong xây dựng theo mức bằng chứng: loại đã chạy sản xuất thật, loại mới ở mức thương mại sơ khởi, loại chỉ có số liệu do hãng công bố, và loại đã thất bại hoặc còn tranh cãi. Tài liệu không xếp hạng sản phẩm và không thay doanh nghiệp quyết định mua.

## When to Use / When NOT

- **ALLOWED**: Xác định công nghệ robot hoặc tự hành nào đã có bằng chứng vận hành thật trước khi thí điểm trên công trường.
- **ALLOWED**: Đọc số liệu năng suất do hãng công bố cùng điều kiện và nguồn của từng số.
- **ALLOWED**: Chuẩn bị câu hỏi về an toàn vận hành, mức chấp nhận của công nhân và khung pháp lý drone tại Việt Nam.
- **NOT ALLOWED**: Suy bằng chứng vận tải mỏ sang máy xây dựng tự hành; hai nhóm này ở hai mức trưởng thành khác nhau.
- **NOT ALLOWED**: Cộng hoặc so trực tiếp số liệu của hai hãng thiết bị, ví dụ Komatsu và Caterpillar; mỗi con số là số riêng của từng OEM.
- **NOT ALLOWED**: Coi số hãng tự công bố (Dusty Robotics, Built Robotics, Boston Dynamics, DJI) là kết quả đo độc lập.
- **NOT ALLOWED**: Kết luận chung về hiệu quả của ngoại cốt (exoskeleton) từ hai nghiên cứu đo khác thiết bị và khác tác vụ.

## Core Knowledge Content

Derived: Bảng tóm tắt mức trưởng thành, suy ra từ các claim ở các mục sau; mức bằng chứng nằm ở cột cuối.
| Tầng | Công nghệ | Bằng chứng trong pack | Ai công bố |
|---|---|---|---|
| 1. Sản xuất đã chứng minh | Vận tải tự hành ở mỏ và mỏ đá (Komatsu FrontRunner, Caterpillar) | Khối lượng tích lũy hàng tỷ tấn; pilot 18 tháng rồi mở rộng sang cơ sở khác | OEM tự công bố, báo ngành |
| 2. Thương mại sơ khởi | Máy xúc và máy xây dựng tự hành (Bedrock Robotics, Komatsu cùng AIM) | Đã chạy tại công trường khách hàng ở Mỹ | Công ty, báo công nghệ |
| 3. Robot một tác vụ | In layout, đóng cọc, buộc thép, xây gạch, robot kiểm tra | Số năng suất theo từng tác vụ | Hãng hoặc nhà thầu tự công bố |
| 4. Drone khảo sát | Drone PPK và photogrammetry | Sai số cao độ 2 cm và 5,7 cm trong hai nghiên cứu khác nhau | Blog của hãng, bài báo khoa học |
| 5. Chưa kết luận | Ngoại cốt (exoskeleton) | Hai kết quả ngược chiều, một kết quả mới ở mức sơ bộ | Bài báo khoa học |

### 1. Tầng sản xuất đã chứng minh: vận tải tự hành ở mỏ và mỏ đá

- Komatsu tuyên bố khách hàng dùng hệ thống vận tải tự hành FrontRunner đã vận chuyển tổng cộng hơn 11,5 tỷ tấn vật liệu (tính đến bản tin ngày 22/04/2026); đây là số do hãng tự công bố.
<!-- ease:claim id=autonomous-equipment-production-deployment -->
- Global Mining Review nêu một số riêng của Caterpillar: xe tải tự hành của hãng đã chở hơn 13 tỷ tấn và chạy hơn 455 triệu km, không có thương tích nào được báo cáo khi vận hành. Đây là số của một OEM khác, không xác nhận con số của Komatsu và không được cộng với số của Komatsu.
<!-- ease:claim id=autonomous-equipment-production-deployment -->
- Luck Stone và Caterpillar chuyển từ chương trình pilot xe tải tự hành 18 tháng tại mỏ đá Bull Run (Virginia, Mỹ) sang mở rộng cho hai cơ sở khác ở Virginia (tin ngày 15/09/2026); một bài báo ngành mô tả Bull Run là vận hành sản xuất chứ không chỉ là trình diễn công nghệ giới hạn.
<!-- ease:claim id=luck-stone-caterpillar-autonomous-hauling-expands-after-18-month-pilot -->

Derived: Bằng chứng sản xuất ở quy mô lớn trong pack nằm ở vận tải mỏ và mỏ đá. Đây chưa phải bằng chứng cho máy xây dựng tự hành nói chung.

### 2. Tầng thương mại sơ khởi: máy xây dựng tự hành

- Komatsu cho biết hợp tác với AIM Intelligent Machines đã vào giai đoạn triển khai thương mại tại Mỹ, nơi máy tự hành của Komatsu đã hoạt động tại công trường khách hàng (bản tin ngày 31/07/2026); Canadian Mining Journal nêu lại nội dung này.
<!-- ease:claim id=komatsu-aim-autonomous-machines-commercial-deployment-us-2026 -->
- Máy xúc tự hành của Bedrock Robotics đã vận hành thương mại tại công trường thực, ví dụ một cơ sở xử lý nước ở bang Nevada (Mỹ), theo TechCrunch ngày 26/10/2026; một bài khác mô tả máy xúc hoàn toàn tự hành làm công việc có trả tiền trên các công trường thương mại đang hoạt động.
<!-- ease:claim id=bedrock-robotics-autonomous-excavators-commercially-operating-nevada -->

Derived: Với Komatsu cùng AIM, pack chỉ có bản tin của chính Komatsu và một bài nêu lại; với Bedrock, pack chỉ có hai bài báo mô tả. Pack chưa có phép đo độc lập về khối lượng công việc của máy xây dựng tự hành. Mức hợp lý là thương mại sơ khởi tại Mỹ, chưa phải sản xuất đại trà.

### 3. Robot một tác vụ: số liệu do hãng hoặc nhà thầu công bố

- Dusty Robotics công bố robot in layout FieldPrinter 2 đã in hơn 300 triệu ft² mặt bằng trên hơn 1.000 tòa nhà.
<!-- ease:claim id=dusty-robotics-fieldprinter-2-300-million-sqft-layout-1000-buildings -->
- Built Robotics công bố robot đóng cọc quang điện RPD 35 lắp ước tính 300 cọc mỗi ngày với tổ 2 người, so với khoảng 100 cọc mỗi ngày của tổ 2 người làm thủ công thông thường; đây là mức ước tính do hãng nêu.
<!-- ease:claim id=built-robotics-rpd-35-300-piles-per-day-vs-100-manual -->
- Nhà thầu Shelby Erectors đã dùng robot buộc thép TyBot hoàn thành hơn 275.000 mối buộc trên mặt cầu rộng 81.750 m² ở các giai đoạn đầu của dự án Gateway.
<!-- ease:claim id=shelby-erectors-tybot-275000-rebar-ties-gateway-bridge-deck -->
- Robot xây gạch hai tay của Monumental (Hà Lan) lắp trung bình khoảng 500 viên gạch mỗi ca 8 giờ, tốc độ tương đương thợ xây người, theo Scottish Housing News (28/07/2025).
<!-- ease:claim id=monumental-robot-bricklayer-500-bricks-per-8-hour-shift -->
- Case study của Boston Dynamics về kiểm tra không gian hạn chế ghi một nhân viên Caltrans ước tính robot Spot đã giúp Caltrans tiết kiệm hơn 60.000 USD chỉ trong chưa đầy 10 phút làm việc; đây là số ước tính nêu trong tài liệu của hãng, không phải phép đo.
<!-- ease:claim id=boston-dynamics-spot-caltrans-confined-space-60000-usd-estimate -->

Derived: Các số trên thuộc về từng tác vụ riêng (in layout, đóng cọc, buộc thép, xây gạch, kiểm tra), do hãng hoặc nhà thầu nêu, trong điều kiện không giống nhau. Chúng không so với nhau được và không cộng thành một con số "năng suất robot xây dựng".

### 4. Drone và UAV: khảo sát, độ chính xác và khung pháp lý Việt Nam

- Blog DJI Enterprise (19/07/2021) tóm tắt một nghiên cứu trên Journal of Unmanned Vehicle Systems: lập bản đồ bằng drone PPK đạt sai số RMSE theo phương đứng 2 cm, đủ chính xác cho nhiều ứng dụng trắc địa mặt đất.
<!-- ease:claim id=dji-ppk-drone-mapping-2-cm-vertical-rmse-terrestrial-surveying -->
- Một nghiên cứu của Tallinn University of Technology về khảo sát công trình đường ghi độ chính xác cao độ 5,7 cm khi dùng kỹ thuật đo phù hợp.
<!-- ease:claim id=dji-ppk-drone-mapping-2-cm-vertical-rmse-terrestrial-surveying -->

Derived: Hai con số 2 cm (RMSE theo phương đứng) và 5,7 cm (độ chính xác cao độ) đến từ hai nghiên cứu khác nhau và được nêu theo hai cách khác nhau, nên không mâu thuẫn nhưng cũng không được gộp thành một ngưỡng chính xác chung; số 2 cm đến từ blog của hãng.

- Theo Nghị định 288/2025/NĐ-CP (Chính phủ Việt Nam, ban hành ngày 05/11/2025), người điều khiển phương tiện bay phải có Giấy phép điều khiển bay quan sát bằng thiết bị khi phương tiện từ 2 kg trở lên, khi bay ngoài tầm nhìn trực quan, hoặc khi bay theo chương trình cài đặt sẵn thông qua bộ điều khiển trung tâm.
<!-- ease:claim id=vietnam-decree-288-2025-uav-2kg-bvlos-preprogrammed-flight-permit -->
- Cũng theo Nghị định 288/2025/NĐ-CP, người trực tiếp điều khiển phương tiện bay có trọng lượng cất cánh tối đa từ 0,25 kg trở lên phải có Giấy phép điều khiển bay quan sát bằng trực quan.
<!-- ease:claim id=vietnam-decree-288-2025-visual-licence-025kg -->

Derived: Với drone khảo sát cỡ từ 2 kg trở lên hoặc bay theo lộ trình cài sẵn, bước đầu tiên khi đưa vào quy trình công trường là đối chiếu điều kiện cấp giấy phép theo nghị định này.

### 5. Ngoại cốt (exoskeleton): hai kết quả không so trực tiếp được

- Nghiên cứu ITcon 2021 (Virginia Tech, University of Alabama) trên công việc thép cho thấy ngoại cốt thụ động BackX giảm 100% cảm giác khó chịu ở lưng nhưng làm khó chịu ở ngực tăng gấp ba.
<!-- ease:claim id=backx-passive-exoskeleton-rebar-back-discomfort-minus-100-chest-tripled -->
- Nghiên cứu hiện trường sơ bộ của NFA (National Research Centre for the Working Environment, Đan Mạch), nêu trong abstract hội nghị PREMUS 2025, cho thấy thợ xây gạch dùng ngoại cốt hỗ trợ lưng bị tăng hoạt động cơ thắt lưng.
<!-- ease:claim id=exoskeleton-masons-increased-low-back-muscle-activity-premus-2025 -->

Derived: Theo resolution của claim thứ hai, hai kết quả cùng đứng và không so trực tiếp: một bên đo ngoại cốt thụ động BackX trong công việc cốt thép bằng cảm giác khó chịu, bên kia đo ngoại cốt hỗ trợ lưng Laevo V2.57 trên thợ xây gạch bằng hoạt động cơ, và mới ở mức sơ bộ. Hiệu quả của ngoại cốt phụ thuộc thiết bị và tác vụ; chưa có nghiên cứu cùng thiết bị và cùng nghề để chốt bên nào đúng.

### 6. Vận hành thực tế: teleoperation và mức chấp nhận của công nhân

- Nhóm ÉTS (École de technologie supérieure) ghi nhận robot mặt đất trên công trường thường phải dựa vào teleoperation (người điều khiển từ xa) thay vì tự hành hoàn toàn.
<!-- ease:claim id=ets-ground-robots-construction-rely-on-teleoperation -->
- Cũng nhóm ÉTS, dựa trên phỏng vấn các công ty xây dựng Canada, ghi nhận công nhân thường chỉ trích robot mặt đất và lo bị thay thế, làm giảm mức chấp nhận robot tại công trường.
<!-- ease:claim id=ets-ground-robots-construction-workers-criticize-fear-displacement -->

### 7. Khoảng trống Việt Nam

Derived: Về nhánh này, bằng chứng Việt Nam trong pack chỉ có khung pháp lý drone (Nghị định 288/2025/NĐ-CP). Pack chưa có case robot, xe/máy tự hành hay drone chạy sản xuất thật tại một doanh nghiệp xây dựng Việt Nam được đo bằng số liệu; vòng nghiên cứu đầu tiên chưa tìm theo tên từng doanh nghiệp, nên đây là khoảng trống của pack chứ chưa phải kết luận rằng không có case nào. Khi trình bày với lãnh đạo, nói thẳng khoảng trống này thay vì mượn số liệu nước ngoài làm kết quả cho Việt Nam.

Decision: Chọn tác vụ lặp lại, đo được và có người giám sát (in layout, buộc thép, đóng cọc, khảo sát bằng drone) cho pilot đầu tiên, và yêu cầu hãng cung cấp số năng suất theo điều kiện của chính công trường thay vì dùng số công bố chung.

## Failure Modes (Mandatory)

- **Hệ thống điều khiển và thực địa lệch nhau**: báo cáo sự cố SIR 226 của cơ quan an toàn mỏ Tây Úc ghi nguyên nhân trực tiếp xe tải tự hành va xe nước có người lái: vòng quay đầu được mở trong hệ thống điều khiển nhưng giao lộ không được đánh dấu ngoài thực địa và mục đích sử dụng không được thông báo. Người lái xe nước không biết xe tải sẽ rẽ vào đường của mình, và ở tốc độ đó xe tải không kịp tránh.
<!-- ease:claim id=worksafe-wa-sir-226-autonomous-truck-collision-turnaround-loop-not-delineated -->
- **Mất độ bám trên mặt đường trơn**: hai xe tải tự hành của BHP tại mỏ Jimblebar (Tây Úc) va nhau do mất độ bám trên mặt đường trơn (bài AMSJ ngày 18/03/2019, tiêu đề nêu điều kiện thời tiết ướt). Đây là sự cố riêng, pack không gộp nó với sự cố SIR 226.
<!-- ease:claim id=bhp-jimblebar-autonomous-trucks-collide-loss-of-traction-slippery-road -->
- **Vốn đầu tư lớn cho công nghệ chưa chứng minh**: Fortune (15/07/2026) nêu robot xây gạch gắn xe tải của FBR có giá gần 6 triệu USD mỗi máy, buộc nhà thầu đặt cược vốn lớn ngay từ đầu vào công nghệ chưa được chứng minh.
<!-- ease:claim id=fbr-truck-mounted-bricklaying-robot-6-million-upfront-bet -->
- **Nhà cung cấp robot xây dựng ngừng hoạt động**: Diamond Age, startup xây nhà bằng robot và in 3D ở Phoenix (Mỹ), xác nhận ngừng hoạt động và vào thủ tục phá sản ngày 12/12/2024.
<!-- ease:claim id=diamond-age-robotic-homebuilder-ceased-operations-bankruptcy-2024 -->
- **Nhà cung cấp cắt giảm nhân sự**: ICON (Austin, in 3D nhà ở) sa thải 114 người theo thông báo WARN nộp cho Texas Workforce Commission (TechCrunch 09/01/2025). Khi chọn công nghệ của startup, khả năng tồn tại của nhà cung cấp là một rủi ro riêng cần đánh giá.
<!-- ease:claim id=icon-3d-printed-homes-lays-off-114-warn-letter-2025 -->
- **Phụ thuộc teleoperation**: robot mặt đất thường phải dựa vào người điều khiển từ xa thay vì tự hành hoàn toàn, nên cần tính nhân sự vận hành khi ước lượng lợi ích.
<!-- ease:claim id=ets-ground-robots-construction-rely-on-teleoperation -->
- **Công nhân chỉ trích và lo bị thay thế**: thái độ này làm giảm mức chấp nhận robot tại hiện trường, nên cần tính cả việc truyền thông và tham vấn công nhân.
<!-- ease:claim id=ets-ground-robots-construction-workers-criticize-fear-displacement -->
- **Hiệu quả ngoại cốt không đồng nhất**: BackX giảm khó chịu ở lưng nhưng làm khó chịu ở ngực tăng gấp ba, còn nghiên cứu sơ bộ trên thợ xây gạch cho thấy hoạt động cơ thắt lưng tăng.
<!-- ease:claim id=backx-passive-exoskeleton-rebar-back-discomfort-minus-100-chest-tripled -->
<!-- ease:claim id=exoskeleton-masons-increased-low-back-muscle-activity-premus-2025 -->
- **Số năng suất do hãng công bố bị dùng như số đo độc lập**: số của Dusty Robotics, Built Robotics và Boston Dynamics đều do hãng nêu hoặc ước tính.
<!-- ease:claim id=dusty-robotics-fieldprinter-2-300-million-sqft-layout-1000-buildings -->
<!-- ease:claim id=built-robotics-rpd-35-300-piles-per-day-vs-100-manual -->
<!-- ease:claim id=boston-dynamics-spot-caltrans-confined-space-60000-usd-estimate -->
- **Cộng số của các OEM hoặc suy từ mỏ sang xây dựng**: số tích lũy của Komatsu và của Caterpillar là hai con số riêng, và cả hai đều thuộc vận tải mỏ.
<!-- ease:claim id=autonomous-equipment-production-deployment -->
- **Bỏ qua điều kiện cấp phép drone tại Việt Nam**: người điều khiển phương tiện bay từ 2 kg trở lên, hoặc bay ngoài tầm nhìn, hoặc bay theo chương trình cài đặt sẵn thông qua bộ điều khiển trung tâm phải có Giấy phép điều khiển bay quan sát bằng thiết bị.
<!-- ease:claim id=vietnam-decree-288-2025-uav-2kg-bvlos-preprogrammed-flight-permit -->
  Ngay cả phương tiện bay từ 0,25 kg trở lên cũng đòi người điều khiển có Giấy phép điều khiển bay quan sát bằng trực quan.
<!-- ease:claim id=vietnam-decree-288-2025-visual-licence-025kg -->
