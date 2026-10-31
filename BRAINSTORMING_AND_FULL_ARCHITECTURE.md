# Toàn Bộ Hồ Sơ Brainstorming Chiến Lược & Kiến Trúc Kỹ Thuật Công Trường Số — một tập đoàn xây dựng Việt Nam (bối cảnh giả định)

> **Lưu trữ chính thức trong `.brv/context-tree/brainstorming/full_brainstorming_and_architecture.md` và `BRAINSTORMING_AND_FULL_ARCHITECTURE.md`**  
> Tổng hợp trọn vẹn chuỗi tư duy phản biện, tầm nhìn 2030, lộ trình AI 1–3 năm cho doanh nghiệp, chuyên đề **3D Spatial Re-ID & Sensor Fusion**, cùng đặc tả kỹ thuật phần cứng/hạ tầng và **33 hình ảnh minh họa 16:9**.

---

## PHẦN 1: SỰ THẬT PHŨ PHÀNG VỀ "CÔNG TRƯỜNG SỐ" TRÊN THẾ GIỚI HIỆN NAY

### 1.1. Bức tranh thực tế tại các Tổng thầu hàng đầu thế giới
Nếu chỉ nhìn vào tài liệu quảng cáo của các hãng phần mềm ConTech, "Công trường số" (Digital Construction Site) tràn ngập hình ảnh công nhân đeo kính thực tế ảo, robot đi lại tấp nập. Nhưng thực tiễn vận hành tại các tổng thầu hàng đầu thế giới (**Acciona** ở Châu Âu, **DPR** và **Turner** ở Mỹ, **Kajima** và **Obayashi** ở Nhật Bản) cho thấy:
- **90% các công trường tự nhận là "số hóa"** thực chất chỉ đang thay bản vẽ giấy bằng file PDF trên iPad và báo cáo qua nhóm chat (Zalo/WhatsApp).
- **Chỉ khoảng 10% đại công trường tiên phong** thực sự vận hành "Công trường số" theo nghĩa **khép kín luồng dữ liệu từ thiết kế (BIM) ra hiện trường (Field) và ngược lại**.

Các tổng thầu thực dụng không đầu tư công nghệ để làm truyền thông. Họ dồn tiền vào **4 trụ cột cốt lõi** vì chúng giải quyết trực tiếp **3 "tử huyệt" ngốn biên lợi nhuận lớn nhất ngành xây dựng**:
1. **Làm lại do sai lệch (Rework)**
2. **Tranh chấp / Gian lận khối lượng nghiệm thu**
3. **Độ trễ thông tin giữa hiện trường với văn phòng**

---

### 1.2. Bốn (04) Trụ cột Công nghệ Thực chiến trên Thế giới & Góc nhìn Phản biện

#### Trụ cột 1: Thu thập hiện trạng tự động & Đối soát tiến độ bằng AI (Reality Capture & Automated Progress Tracking)
- **Họ đang làm gì:** Thay vì đợi kỹ sư giám sát đo đạc thủ công và lập báo cáo cảm tính (dễ xảy ra báo cáo khống khối lượng để giải ngân sớm hoặc che giấu chậm trễ), công trường hiện đại dùng **Camera 360° gắn trên mũ bảo hộ** (như *Buildots*, *OpenSpace*) hoặc **Robot bốn chân Boston Dynamics Spot gắn máy quét Trimble X7 3D Laser Scanner** đi tuần đêm quét LiDAR toàn bộ kết cấu với sai số vài milimet, tự động đối chiếu với mô hình **BIM 4D** để tính chính xác `%` tường đã xây, số mét ống gió đã lắp.
- **Góc nhìn phản biện (Sự thật trần trụi):** Tổ hợp Robot Spot + LiDAR có giá hàng trăm ngàn USD và đòi hỏi đội ngũ R&D vận hành riêng, chỉ có ROI dương ở các dự án hạ tầng cực lớn, hầm ngầm nguy hiểm hoặc nhà máy có tính lặp lại cao. Với dự án dân dụng/cao tầng thông thường, giải pháp có **ROI thực tế hơn rất nhiều** là gắn camera 360° thương mại (vài trăm USD) lên mũ bảo hộ kỹ sư đi bộ hàng ngày + đẩy video lên Cloud để Computer Vision tự bóc tách khối lượng, kết hợp Drone bay định kỳ.

#### Trụ cột 2: Tự động hóa trắc đạc & In bản vẽ BIM trực tiếp lên sàn (Robotic Field Layout)
- **Họ đang làm gì:** Bước chuyển từ mô hình 3D ra đường búng mực trên sàn bê tông (Layout) dễ xảy ra sai số con người nhất (lệch 2cm sẽ làm xung đột dây chuyền toàn bộ vách ngăn, cửa và ống MEP phía sau). Các công trường Mỹ/Châu Âu dùng robot bánh xe (**Dusty Robotics FieldPrinter**) kết hợp **Máy toàn đạc tự động (Robotic Total Station)** bắn laser khóa gương phản xạ trên thân robot, in phun trực tiếp bản vẽ CAD/BIM và thông số kỹ thuật xuống sàn bê tông với sai số `< 1.5mm`.
- **Góc nhìn phản biện (Sự thật trần trụi):** Đây là một trong số ít robot xây dựng có **ROI dương ngay lập tức** vì nhanh gấp 5–10 lần búng mực tay và triệt tiêu việc các thầu phụ cãi nhau vì giẫm chân lên vị trí của nhau. Tuy nhiên, **"gót chân Achilles"** nằm ở **văn hóa vệ sinh công trường**: Robot đòi hỏi mặt sàn bê tông phải được dọn sạch xà bần, sắt vụn, vũng nước trước khi chạy.

#### Trụ cột 3: Thực tế tăng cường (AR) để kiểm soát xung đột Cơ điện (MEP) tại chỗ
- **Họ đang làm gì:** Kỹ sư dùng máy tính bảng có cảm biến LiDAR (chạy nền tảng như **GAMMA AR / Dalux**) giơ lên trần nhà đang thi công dở dang để chồng khớp (overlay) mô hình BIM 3D của hệ thống ống kỹ thuật đúng tỷ lệ `1:1` lên không gian thực tế, kiểm tra lỗ mở xuyên dầm và xung đột (clash) trước khi đóng trần thạch cao.
- **Góc nhìn phản biện (Sự thật trần trụi):** Kính thông minh đắt tiền (như *Microsoft HoloLens*) đã thất bại nặng nề ở đại trà vì vướng víu, nhanh hết pin, mỏi mắt và hạn chế tầm nhìn an toàn. **iPad Pro có LiDAR** mới là thiết bị trụ lại được. Nhưng ngay cả khi có iPad, AR cũng vô dụng nếu mô hình BIM không đạt chuẩn thi công (**LOD 400**) hoặc phòng BIM văn phòng không cập nhật kịp thay đổi thiết kế (*Garbage In, Garbage Out*).

#### Trụ cột 4: Máy công trình dẫn đường 3D & Bán tự hành (3D Machine Guidance)
- **Họ đang làm gì:** Xóa sổ cảnh công nhân trắc đạc lội xuống hố đào cắm cọc tiêu, căng dây. Bản vẽ san nền 3D được nạp thẳng vào màn hình trong cabin máy xúc/máy ủi (**Komatsu Smart Construction / Trimble Earthworks**), kết hợp định vị vệ tinh **RTK-GNSS** và cảm biến góc nghiêng trên cần đào. Hệ thống thủy lực bán tự động tự khóa/nâng gầu khi chạm đúng mặt phẳng thiết kế, chống đào lố (*over-digging*).
- **Góc nhìn phản biện (Sự thật trần trụi):** Giải quyết bài toán thiếu thợ lái máy lành nghề (tài xế mới lái có 3D Guidance làm phẳng taluy ngang thợ bậc cao 10 năm) và tiết kiệm **20–30% nhiên liệu lẫn bê tông bù đắp do đào lố**. Rào cản là chi phí bộ kit phần cứng cao (hàng chục ngàn USD/máy), bắt buộc duy trì trạm phát sóng chuẩn RTK ổn định và kỹ sư biết biên tập bản vẽ CAD thành mô hình bề mặt **3D TIN surface**.

---

### 1.3. Ba (03) Lý do cốt lõi khiến "Công trường số" dễ thất bại & Nguyên tắc Sống còn
1. **Sự kháng cự ngầm vì công nghệ "đập vỡ vùng xám":** Ngành xây dựng truyền thống tồn tại nhiều lợi ích ngầm ở hiện trường (khai khống nhân công, hao hụt vật tư bất thường, nghiệm thu khống khối lượng giữa chỉ huy trưởng và thầu phụ, che giấu lỗi thi công). Khi áp dụng AI Camera đếm tự động và đối soát BIM minh bạch, bộ máy bên dưới dễ chống đối ngầm (báo thiết bị hỏng, "mất mạng", nhập sai dữ liệu).
2. **Bẫy "Phân mảnh dữ liệu" (Data Silos) và gánh nặng nhập liệu:** Quản lý bản vẽ một nơi, lập tiến độ trên Primavera/MS Project, chụp ảnh bằng app khác, giao việc trên Zalo -> Kỹ sư hiện trường bị biến thành "nhân viên nhập liệu" phải báo cáo 1 việc trên 3–4 hệ thống sau giờ làm, dẫn đến bỏ cuộc.
3. **Đứt gãy ở tầng Nhà thầu phụ (Subcontractor Economics):** Tổng thầu có tiền và kỹ sư giỏi, nhưng người trực tiếp cầm bay trát tường, buộc thép là các tổ đội thầu phụ làm theo đơn giá khoán, biên lợi nhuận mỏng, trình độ số hóa thấp. Mọi giải pháp bắt công nhân hoặc cai thầu phụ mở điện thoại bấm nhiều bước phức tạp đều cầm chắc thất bại.
   > **NGUYÊN TẮC SỐNG CÒN — "THU THẬP DỮ LIỆU THỤ ĐỘNG" (PASSIVE DATA COLLECTION):** Công nhân cứ làm việc bình thường, còn việc thu thập, bóc tách và phân tích phải do cảm biến, camera và AI tự chạy ngầm!

---

## PHẦN 2: VIỄN CẢNH 3–5 NĂM TỚI (2030) — KỶ NGUYÊN CÔNG TRƯỜNG TỰ TRỊ & 3 MẶT TỐI TÀN KHỐC

### 2.1. Năm (05) Viễn cảnh Đột phá năm 2030 (Khi Physical AI + Multi-Agent + Modular hội tụ)
1. **Ban chỉ huy "Vô hình" — Hệ thống Multi-Agent điều phối toàn bộ mạch máu dự án (Site OS):**
   - Trung tâm công trường là Hệ điều hành Tự trị (Site OS) vận hành bởi bầy đàn AI Agent chuyên biệt (**Schedule Agent**, **Supply Chain Agent**, **Legal & Contract Agent**, **Safety Agent**) đàm phán và ra quyết định trong **3 giây** khi có biến cố (ví dụ: phát hiện thiếu 12% thép sàn tầng 15 và sắp có dông lốc -> tự tính lại đường găng chuyển đội thép sang khu Podium, tự gọi API sang trạm trộn lùi lịch 8 xe bồn bê tông 4 tiếng, tự trích xuất log video lập biên bản phạt nhà cung cấp thép và khóa hạn mức thanh toán). Giám đốc dự án (PM) ngồi ở vị trí như phi công trưởng, chỉ duyệt các tình huống ngoại lệ (Edge cases).
2. **"Ca đêm thuộc về Robot" — Sự trỗi dậy của Embodied AI (VLA) và Công trường 24/7:**
   - **Ca ngày (07:00 – 17:00) dành cho Con người:** Công nhân bậc cao xử lý các mối nối phi tiêu chuẩn và lắp đặt tinh vi.
   - **Ca đêm (18:00 – 06:00 sáng) dành cho Bầy đàn Robot:** Công trường tắt đèn (nhìn bằng LiDAR, radar xuyên tường, cảm biến nhiệt). Robot gầm thấp dọn sạch xà bần, phân loại rác và hút bụi sàn; robot cánh tay cơ học tự hành đi dọc hành lang dùng laser **khoan hàng chục ngàn lỗ treo ty ren lên trần bê tông** và phun sơn chống cháy/bả matit tự động; xe tự hành (AGV) chở vật tư từ kho phân phối đến tận chân từng căn hộ cho ca sáng hôm sau.
3. **"Nhà máy vi mô" ngay dưới chân công trường (On-Site Robotic Micro-Factories):**
   - Hạ các thùng container 40 feet chứa cánh tay robot hàn, cắt laser ngay dưới chân tòa nhà. Dựa trên dữ liệu quét thực tế (As-built LiDAR) của tầng 20 vừa đổ bê tông xong hôm qua, nhà máy container tự động cắt, uốn, hàn thành các cụm mô-đun cơ điện (MEP racks) khớp từng milimet với độ cong vênh thực tế của tầng 20, gắn chip UWB và để Cẩu tháp tự hành cẩu thẳng lên tầng 20 cho công nhân bắn ốc.
4. **Kỷ nguyên "Zero-UI" và Thực tế hỗn hợp Âm thanh / Thị giác cho Công nhân:**
   - Giao diện người dùng (UI) tàng hình: Công nhân chỉ đeo **kính bảo hộ siêu nhẹ** (tích hợp camera micro-AI + màn hình HUD đơn giản) cùng **tai nghe truyền xương (bone-conduction)**. Thợ điện hỏi bằng tiếng địa phương (*"Ê, ổ cắm đầu giường phòng này đặt cao bao nhiêu?"*), Edge AI chiếu vệt laser/HUD đúng vị trí trên tường, nhắc tránh ống nước âm tường, và khi lắp xong đế âm thì kính **tự chụp ảnh nghiệm thu ẩn (hidden work inspection)** trước khi trát vữa.
5. **Thanh toán tức thời bằng "Hợp đồng thông minh Vật lý" (Real-time Parametric Payment):**
   - Xóa bỏ chu kỳ 30–90 ngày làm hồ sơ thanh toán qua phòng QS: Lúc `17:00` chiều thứ Sáu, Camera 360 + LiDAR xác nhận tổ đội thạch cao thi công xong `450m²` vách (sai số `< 2mm`, độ ẩm đạt, `0` lỗi an toàn) -> `17:01` kích hoạt lệnh giải ngân qua ERP/Smart Contract -> `17:02` tiền công ting-ting thẳng vào tài khoản nhà thầu phụ/ví công nhân. Các tổ đội giỏi nhất sẵn sàng **giảm đơn giá thầu 10–15%** vì không còn phải cộng "chi phí rủi ro nợ đọng vốn".

### 2.2. Ba (03) Mặt tối & Cuộc đụng độ tàn khốc năm 2030
1. **Sự tuyệt chủng của "Tầng lớp Kỹ sư Văn phòng Trung gian":** Nạn nhân đầu tiên không phải người thợ cầm bay trát vữa (vì đôi tay con người ở góc hẹp vẫn rẻ và linh hoạt hơn robot), mà là hàng vạn kỹ sư bàn giấy làm nhiệm vụ chuyển dịch thông tin: Kỹ sư bóc tách khối lượng (QS), nhân viên kiểm soát hồ sơ (Document Controller), kỹ sư lập tiến độ (Planner) cấp thấp và giám sát viên chỉ đi chụp ảnh báo cáo.
2. **Mô hình "Quái vật Frankenstein" tại các thị trường đang phát triển (như Việt Nam): "Đầu não Siêu AI - Tay chân Thủ công":** Do giá nhân công còn tương đối rẻ, bài toán khấu hao (CapEx) của robot bốn chân hay nhà máy container chưa thắng nổi sức người ở đại trà. Do đó tầng trên cùng (Đấu thầu, Kiểm soát chi phí, Pháp lý hợp đồng, Điều phối vật tư, Giám sát qua Camera/IoT giá rẻ) sẽ dùng AI Agent sắc bén nhất, trong khi tầng dưới cùng vẫn là công nhân thủ công nhưng mọi viên gạch, bao xi măng và bước chân đều bị soi dưới "con mắt" thuật toán.
3. **Khi "Lỗi phần mềm" đổ thành "Bê tông chết" (Rủi ro Trách nhiệm Pháp lý):** Nếu mô hình AI bị ảo giác (hallucination) hoặc cảm biến LiDAR bị nhiễu dẫn đến chỉ đạo đổ 500 khối bê tông sai mác/sai cốt thép vào móng tòa nhà 50 tầng — trách nhiệm hình sự và bảo hiểm thuộc về Kỹ sư trưởng ký số, CTO tổng thầu hay hãng viết mô hình AI?

---

## PHẦN 3: LỘ TRÌNH 1–3 NĂM TRIỂN KHAI AI CHO MỘT TẬP ĐOÀN XÂY DỰNG VIỆT NAM (BỐI CẢNH GIẢ ĐỊNH)

### 3.1. Cấu trúc 3 Giai đoạn trình Ban lãnh đạo doanh nghiệp
- **GIAI ĐOẠN 1 (Năm thứ nhất - Year 1): Số hóa "Tai Mắt" & An ninh hiện trường (Lấy "An Toàn & Kiểm soát Thất thoát" làm Quick-win)**
  - Touchpoint 1.1: Cổng kiểm soát AI (AI Access Control & PPE Safety Check)
  - Touchpoint 1.2: Camera AI giám sát hành vi & PPE 24/7 (CCTV AI Vision)
  - Touchpoint 1.3: Drone AI quét 3D & đối soát tiến độ BIM 4D
  - Touchpoint 1.4: Hệ thống kiểm soát xe & vật tư thông minh (Smart Gate & AI OCR)
  - Touchpoint 1.5 (Chuyên đề cốt lõi): **Hệ thống Định danh Sinh trắc Không gian 3D & Theo vết Đa tầng (3D Spatial Re-ID & Sensor Fusion)**
- **GIAI ĐOẠN 2 (Năm thứ hai - Year 2): AI Tối ưu Vật tư, Thiết bị & Trắc đạc thông minh (Kiểm soát "Hao hụt & Sai sót Thi công")**
  - Touchpoint 2.1: AI cân & kiểm tra vật tư (AI Weighbridge & 3D LiDAR Cargo Scanning)
  - Touchpoint 2.2: Robot tự hành in bản vẽ BIM trực tiếp lên sàn (FieldPrinter Robot)
  - Touchpoint 2.3: Máy xúc dẫn đường 3D & bán tự hành (3D Machine Guidance AI)
  - Touchpoint 2.4: Thực tế tăng cường AR đối chiếu thiết kế & nghiệm thu MEP (XR/AR Mobile BIM)
- **GIAI ĐOẠN 3 (Năm thứ ba - Year 3): Công trường Tự trị & Cộng tác Người - Máy (Cyber-Physical AI)**
  - Touchpoint 3.1: Robot bốn chân tuần đêm & quét 3D (Autonomous Night LiDAR Patrol)
  - Touchpoint 3.2: Công nhân đeo khung xương cơ học Exoskeleton trợ lực
  - Touchpoint 3.3: Máy công trình tự hành hoàn toàn (Fully Autonomous Heavy Machinery)
  - Touchpoint 3.4: Cẩu tháp tự hành AI (Autonomous AI Tower Crane)
  - Touchpoint 3.5: Hệ thống điều phối Đa tác tử AI (Real-time Multi-Agent Site OS)

### 3.2. Ba (03) Bí quyết thuyết phục Ban lãnh đạo doanh nghiệp
1. **Không nói về công nghệ, hãy nói về Tiền và Tiến độ:** Giai đoạn 1 giảm bao nhiêu `%` thất thoát vật tư, chấm công khống và chi phí bảo vệ? Giai đoạn 2 giảm bao nhiêu ngày chờ trắc đạc và bao nhiêu khối bê tông phải đập đi làm lại (rework)? Giai đoạn 3 giúp thắng thầu các siêu dự án quốc tế ra sao?
2. **Nguyên lý "Sóng yên biển lặng" (Silent Integration):** Cam kết AI hoạt động âm thầm dưới nền — công nhân vẫn đi làm bình thường, không làm xáo trộn bộ máy hiện tại.
3. **Chiến lược Thử nghiệm (PoC):** Đề xuất áp dụng thử nghiệm Giai đoạn 1 tại **01 dự án trọng điểm của doanh nghiệp** (cao tốc hoặc tổ hợp cao tầng đang khởi công), đánh giá hiệu quả sau **6 tháng** trước khi nhân rộng toàn tổng công ty.

---

## PHẦN 4: CHUYÊN ĐỀ ĐỘT PHÁ — HỆ THỐNG ĐỊNH DANH SINH TRẮC KHÔNG GIAN 3D & THEO VẾT ĐA TẦNG (3D SPATIAL Re-ID & SENSOR FUSION)

### 4.1. Điểm mù chết người của Face ID & Tại sao Hội đồng Kỹ thuật sẽ bác bỏ "Quét 3D Avatar Tĩnh"
- **Điểm mù Face ID:** Chỉ hoạt động ở cự ly `0.5–1.5m` ngay tại cổng xoay khi công nhân đứng im nhìn thẳng. Khi vào công trường, công nhân Việt Nam trùm kín khăn chống nắng/khẩu trang chống bụi xi măng, đội mũ bảo hộ sụp xuống, trong khi CCTV treo trên cao nhìn chéo xuống và Drone bay ở độ cao `30–50m` -> **Face ID mù tịt (tỷ lệ nhận diện = 0%)**.
- **3 sự thật phũ phàng bác bỏ ý tưởng "Quét 3D từng công nhân để dựng Avatar 3D tĩnh như nhân vật game":**
  1. **Bẫy "Đồng phục & Biến dạng hình thể" (Occlusion & Uniformity):** Hàng trăm công nhân mặc áo phản quang, quần bảo hộ rộng giống hệt nhau, bám đầy bụi bê tông, đeo đai an toàn, vác ván khuôn hoặc cúi gập người buộc thép (bị che khuất 60% góc nhìn).
  2. **Độ phân giải điểm ảnh từ xa (Pixel Starvation):** Từ CCTV trên cao hoặc Drone 40m, một người công nhân chỉ còn là vùng ảnh `30x80 pixels`. Mọi đường nét bề mặt 3D Mesh biến mất; ép so khớp 3D Mesh chỉ đốt cháy GPU mà tỷ lệ nhận diện nhầm (False Positive) lên tới `40–50%`.
  3. **Đặc thù nhân công thời vụ (High Turnover):** Nhân công thầu phụ biến động theo từng tuần, không thể bắt hàng ngàn người xếp hàng vào buồng quét 3D phức tạp.

### 4.2. Giải pháp Thực chiến 3 Tầng: "Khung xương Động học 3D + Hợp nhất Cảm biến (Sensor Fusion)"
1. **Tầng 1 — Trích xuất "Khung xương Động học 3D & Vector Ca làm việc" ngay lúc bước qua Cổng (Passthrough 3D Re-ID):**
   - Trong đúng `1.5–2 giây` khi công nhân bước qua cổng xoay Face ID đầu ngày, 2 camera cảm biến chiều sâu (`RGB-D / Stereo`) đặt dọc hành lang cổng âm thầm tạo ra **Daily 3D Re-ID Token** (`< 4KB`, nhẹ hơn Avatar 3D gấp 1.000 lần) gồm:
     - **Tỷ lệ nhân trắc học khung xương 3D (3D Anthropometrics):** Chiều cao thực tế, độ rộng hai đầu vai, tỷ lệ chiều dài chân/lưng (17 điểm khớp xương bất biến dù cúi người hay vác đồ).
     - **Chữ ký dáng đi (3D Gait Recognition):** Tốc độ sải bước, độ nghiêng vai, nhịp vung tay.
     - **Đặc trưng trang phục trong ngày (Daily Appearance Vector):** Màu quần, màu giày ủng, vết bạc màu trên áo trong đúng ca hôm đó + ghép cặp với **ID Chip Mũ bảo hộ UWB (`#ID-0842`)**.
2. **Tầng 2 — Theo vết Liên Camera (Multi-Camera Tracking) bằng Computer Vision trên toàn công trường:**
   - Hệ thống CCTV sử dụng thuật toán `Person Re-Identification (Re-ID)` (`ByteTrack + HRNet-3D + GaitGL + OSNet-AIN`) bàn giao (hand-off) mục tiêu từ `CAM 01 -> CAM 04 -> CAM 09` trên khung hình `30x80 pixels` dù công nhân quay lưng hay bịt mặt, định danh chính xác tên công nhân và tổ đội khi vi phạm vùng cấm.
3. **Tầng 3 — Giải bài toán "Góc nhìn đỉnh đầu của Drone (50m Top-Down View)" bằng Hợp nhất Cảm biến (Vision + Smart Helmet UWB Tag) & Chống Tráo Mũ:**
   - Gắn con chip định vị băng thông siêu rộng **UWB (Ultra-Wideband) / BLE RTK** siêu mỏng (`< 5mm`, nặng `8g`, pin 2 năm không cần sạc nhờ cảm biến gia tốc tự ngủ, giá chỉ vài USD) vào lòng mũ bảo hộ.
   - **Cross-Verification (Đối chiếu chéo 3 chiều):**
     1. *Drone / CCTV (Thị giác):* Nhìn thấy hành vi vật lý tại tọa độ `(X, Y, Z)` (ngủ gật góc khuất tầng 14, leo giàn giáo không móc dây an toàn).
     2. *Chip UWB trên mũ (Định vị):* Phát tín hiệu định danh chính xác tại tọa độ `(X, Y, Z)` đó là mã `#ID-0842`.
     3. *Khung xương 3D (Chống gian lận tráo mũ / Anti-Spoofing):* Nếu công nhân A (`1m74`, sải bước dài) đưa mũ cho công nhân B (`1m62`) đội hộ để điểm danh khống, hệ thống CCTV Re-ID lập tức phát hiện độ lệch nhân trắc học (`ΔHeight = 12cm > ngưỡng 3cm`) và báo động đỏ về Ban chỉ huy!

---

## PHẦN 4B: CÔNG TRƯỜNG TUYẾN (CAO TỐC · CẦU · ĐƯỜNG) — MÔ HÌNH NODE + CORRIDOR

Dự án tuyến của doanh nghiệp không phải "một công trường mở" mà là **chuỗi NODE kín** (bãi đúc dầm, trạm trộn, lán trại, mặt bằng trụ cầu) **nối bằng CORRIDOR mở** có giao thông công cộng. Các touchpoint Phần 3–4 giữ nguyên tại NODE; corridor dùng 12 touchpoint mới L1–L12 (TTM số, giấy phép mặt trận số, e-Ticket + geofence, cảnh báo xâm nhập, xương sống lý trình, QA trong quá trình, man-down, NODE cầu số; an ninh tuyến: máy móc & nhiên liệu, vật tư, người ra vào & hố nguy hiểm, trung tâm giám sát từ xa). Chi tiết: [`CHAPTER_OPEN_LINEAR_SITES_HIGHWAY_BRIDGE.md`](./CHAPTER_OPEN_LINEAR_SITES_HIGHWAY_BRIDGE.md). Nghiên cứu nguồn: [`plans/reports/research-261029-2130-open-linear-site-management-synthesis.md`](./plans/reports/research-261029-2130-open-linear-site-management-synthesis.md).

---

## PHẦN 5: DANH MỤC ĐẦY ĐỦ 33 FILE HÌNH ẢNH & BẢN VẼ KỸ THUẬT TRONG `<project-root>`

### A. Nhóm 20 Hình Phối Cảnh Quy Trình Chi Tiết Từng Checkpoint (`01` → `20`)
1. `01_GD1_CP1_Cong_Kiem_Soat_AI_PPE.jpg` — GĐ1 Checkpoint 1.1: Cổng kiểm soát AI & PPE Safety Check
2. `02_GD1_CP2_Camera_AI_Giam_Sat_An_Toan_24_7.jpg` — GĐ1 Checkpoint 1.2: Camera AI giám sát hành vi & PPE 24/7
3. `03_GD1_CP3_Drone_AI_Quet_3D_Doi_Soat_BIM.jpg` — GĐ1 Checkpoint 1.3: Drone AI quét 3D & đối soát BIM 4D
4. `04_GD1_CP4_Smart_Gate_AI_OCR_Kiem_Soat_Xe.jpg` — GĐ1 Checkpoint 1.4: Hệ thống kiểm soát xe & vật tư Smart Gate OCR
5. `05_GD1_ReID_Tang1_Passthrough_3D_Skeleton_Gait_Gate.jpg` — Chuyên đề Re-ID Tầng 1: Trích xuất Khung xương 3D & Dáng đi tại Cổng (07:00)
6. `06_GD1_ReID_Tang2_Multi_Camera_3D_Pose_Tracking.jpg` — Chuyên đề Re-ID Tầng 2: Theo vết liên Camera bằng Khung xương 3D & Dáng đi
7. `07_GD1_ReID_Tang3_Drone_50m_UWB_Helmet_Sensor_Fusion.jpg` — Chuyên đề Re-ID Tầng 3: Góc nhìn đỉnh đầu Drone 50m + Chip Mũ UWB & Chống tráo mũ
8. `08_GD1_ReID_Quy_Trinh_4_Buoc_Khep_Kin_07h_17h.jpg` — Chuyên đề Re-ID: Quy trình 4 bước khép kín (07:00 -> 17:00) & Heatmap chấm công thực tế
9. `09_GD1_ReID_Phu_Luc_Bac_Bo_3D_Avatar_vs_Edge_AI_Box.jpg` — Chuyên đề Re-ID Phụ lục: Bác bỏ 3D Avatar tĩnh vs Kiến trúc Edge AI Box
10. `10_GD2_CP1_Tram_Can_AI_Quet_3D_LiDAR_Vat_Tu.jpg` — GĐ2 Checkpoint 2.1: AI cân & kiểm tra vật tư 3D LiDAR
11. `11_GD2_CP2_Robot_In_Ban_Ve_BIM_Len_San_FieldPrinter.jpg` — GĐ2 Checkpoint 2.2: Robot tự hành in bản vẽ BIM trực tiếp lên sàn
12. `12_GD2_CP3_May_Xuc_Dan_Duong_3D_Machine_Guidance.jpg` — GĐ2 Checkpoint 2.3: Máy xúc dẫn đường 3D & bán tự hành
13. `13_GD2_CP4_AR_Mobile_BIM_Doi_Chieu_Nghiem_Thu_MEP.jpg` — GĐ2 Checkpoint 2.4: AR đối chiếu thiết kế & nghiệm thu MEP trên iPad LiDAR
14. `14_GD3_CP1_Robot_Bon_Chan_Tuan_Dem_Quet_3D_LiDAR.jpg` — GĐ3 Checkpoint 3.1: Robot bốn chân tuần đêm & quét 3D LiDAR
15. `15_GD3_CP2_Cong_Nhan_Khung_Xuong_Tro_Luc_Exoskeleton.jpg` — GĐ3 Checkpoint 3.2: Công nhân đeo khung xương trợ lực Exoskeleton
16. `16_GD3_CP3_May_Cong_Trinh_Tu_Hanh_Hoan_Toan.jpg` — GĐ3 Checkpoint 3.3: Đội máy công trình tự hành hoàn toàn
17. `17_GD3_CP4_Cau_Thap_Tu_Hanh_AI_Tower_Crane.jpg` — GĐ3 Checkpoint 3.4: Cẩu tháp tự hành AI
18. `18_GD3_CP5_He_Dieu_Hanh_Da_Tac_Tu_Multi_Agent_Site_OS.jpg` — GĐ3 Checkpoint 3.5: Hệ thống điều phối Đa tác tử AI (Multi-Agent Site OS)
19. `19_Vision2030_CP1_Nha_May_Vi_Mo_Container_OnSite.jpg` — Tầm nhìn 2030 (1): Nhà máy vi mô Container 40ft ngay dưới chân công trường
20. `20_Vision2030_CP2_Zero_UI_Smart_Contract_Payment.jpg` — Tầm nhìn 2030 (2): Kỷ nguyên Zero-UI (Kính HUD) & Hợp đồng thông minh thanh toán tức thời

### B. Nhóm 13 Bản Vẽ Kỹ Thuật Blueprint Chi Tiết Từng Bước Nhỏ, Xử Lý AI, Thiết Bị BOM & Hạ Tầng (`21` → `33`)
21. `21_Blueprint_00_Ha_Tang_Nen_Tang_Site_Backbone.jpg` — Bản vẽ Hạ tầng Nền tảng 4 Tầng dùng chung toàn công trường (Site Backbone)
22. `22_Blueprint_GD1_TP1_1_Cong_AI_PPE_Quy_Trinh_BOM_Ha_Tang.jpg` — Bản vẽ Kỹ thuật Touchpoint 1.1: Cổng kiểm soát AI & PPE (4 bước vi mô, AI, BOM, Hạ tầng)
23. `23_Blueprint_GD1_TP1_2_CCTV_AI_24_7_Quy_Trinh_BOM_Ha_Tang.jpg` — Bản vẽ Kỹ thuật Touchpoint 1.2: Camera AI 24/7 & Cầu thu phát CPE 5GHz từ Cẩu tháp
24. `24_Blueprint_GD1_TP1_3_Drone_3D_BIM_Quy_Trinh_BOM_Ha_Tang.jpg` — Bản vẽ Kỹ thuật Touchpoint 1.3: Drone RTK LiDAR & Đối soát Point Cloud - BIM 4D
25. `25_Blueprint_GD1_TP1_4_Smart_Gate_OCR_Quy_Trinh_BOM_Ha_Tang.jpg` — Bản vẽ Kỹ thuật Touchpoint 1.4: Smart Gate AI OCR & Kiểm soát thời gian bê tông
26. `26_Blueprint_GD1_TP1_5_3D_Spatial_ReID_UWB_Fusion_Chi_Tiet.jpg` — Bản vẽ Kỹ thuật Touchpoint 1.5: Kiến trúc 3D Spatial Re-ID, Thuật toán EKF Fusion, Thẻ Mũ UWB 8g & Đồng bộ PTP `< 10ms`
27. `27_Blueprint_GD2_TP2_1_Tram_Can_3D_LiDAR_Quy_Trinh_BOM_Ha_Tang.jpg` — Bản vẽ Kỹ thuật Touchpoint 2.1: Trạm cân điện tử & Cổng Gantry 3D LiDAR chống gian lận tỷ trọng
28. `28_Blueprint_GD2_TP2_2_Robot_In_San_BIM_Quy_Trinh_BOM_Ha_Tang.jpg` — Bản vẽ Kỹ thuật Touchpoint 2.2: Robot in bản vẽ BIM lên sàn & Vòng lặp Laser 50Hz
29. `29_Blueprint_GD2_TP2_3_May_Xuc_3D_Guidance_Quy_Trinh_BOM_Ha_Tang.jpg` — Bản vẽ Kỹ thuật Touchpoint 2.3: Máy xúc dẫn đường 3D, Động học 4 cảm biến IMU IP69K & Van khóa thủy lực
30. `30_Blueprint_GD2_TP2_4_iPad_AR_BIM_MEP_Quy_Trinh_BOM_Ha_Tang.jpg` — Bản vẽ Kỹ thuật Touchpoint 2.4: iPad Pro dToF LiDAR AR BIM LOD 400 & Đồng bộ BCF
31. `31_Blueprint_GD3_TP3_1_3_2_Robot_Tuan_Dem_va_Exoskeleton.jpg` — Bản vẽ Kỹ thuật Touchpoint 3.1 & 3.2: Robot bốn chân tuần đêm LiDAR SLAM & Khung xương trợ lực Exoskeleton
32. `32_Blueprint_GD3_TP3_3_3_4_May_Tu_Hanh_va_Cau_Thap_AI.jpg` — Bản vẽ Kỹ thuật Touchpoint 3.3 & 3.4: Đội xe tự hành Radar 77GHz & Cẩu tháp AI chống lắc tải NMPC
33. `33_Blueprint_GD3_2030_SiteOS_MicroFactory_ZeroUI_SmartContract.jpg` — Bản vẽ Kỹ thuật Touchpoint 3.5, 4.1 & 4.2: Multi-Agent Site OS (3s), Nhà máy Container 40ft & Zero-UI + Smart Contract (2 phút)
