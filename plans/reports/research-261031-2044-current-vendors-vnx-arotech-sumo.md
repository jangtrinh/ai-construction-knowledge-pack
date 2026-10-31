# Phân tích 3 đơn vị team ứng dụng CC1 đang dùng: VNX, AROTECH, SUMO

Ngày: 31/10/2026. Đầu vào: tin nhắn 02/10/2026 "IoT bên VNX; AI vs BIM bên AROTECH; IoT làm việc ok; Drone bên SUMO".
Nhãn: **[F]** đã đọc trên trang chính chủ; **[S]** nguồn thứ ba; **[I]** suy luận; **[?]** chưa xác định.

## 1. Kết luận nhanh

| Đơn vị | Là ai | Khớp với phần nào của đề xuất | Việc cần làm |
|---|---|---|---|
| SUMO | SUMO Solutions (sumosolutions.vn), dịch vụ UAV: bình đồ, LiDAR, khối lượng đào đắp, mô hình 3D liên kết BIM **[F]** | Điểm chạm 1.3 (drone so BIM), bãi tập kết, đào đắp tuyến L6; nguồn khối lượng thứ tư | Giữ làm đơn vị bay dịch vụ thay vì mua drone LiDAR; ký điều khoản xuất dữ liệu mở |
| AROTECH | Arotech Vietnam (arotechvn.com): đại lý phân phối phần mềm bản quyền (Autodesk, Microsoft, Adobe, ZWCAD), máy chủ Dell, cloud **[F]**. Trang không thể hiện năng lực tự phát triển AI hay BIM **[F]** | Phần mềm dựng BIM (Autodesk), nguồn khối lượng thứ nhất (thiết kế) | Xác nhận đang mua sản phẩm Autodesk nào; giữ BIM ở Autodesk, lõi đọc IFC |
| VNX | VNX Robotics JSC (chủ xác nhận 31/10/2026): TP.HCM, lập 2025, robot bốn chân VietRover-T5, AMR, thiết bị nhúng, nền ROS 2 **[S]**/**[F]** | Robot tuần tra (VII.8), cảm biến IoT tại công trường | Hỏi team thiết bị IoT cụ thể và cách lấy dữ liệu |

Ý chính: cả ba đều là **nguồn dữ liệu cho tầng Biên và tầng Nền dữ liệu** của lõi AI, không thay lõi. Theo VII.8, điều kiện loại là xuất dữ liệu mở (API, IFC, LAS/E57, LandXML, CSV). Đơn vị nào chỉ cho xem trên web của họ thì không nối được vào lõi.

## 2. SUMO Solutions

**Năng lực tự công bố [F]** (trang chủ sumosolutions.vn, đọc 31/10/2026):
- ISO 9001:2015; ISO/IEC 17025:2017 cho phòng thử nghiệm SUMOLAB; giấy phép thử nghiệm điện, cơ lý, thiết bị bay; sân bay UAV theo tiêu chuẩn ICAO.
- 385+ dự án, 25.000+ giờ bay, 145+ khách hàng doanh nghiệp, 34 tỉnh, 15+ sở hữu trí tuệ (số tự công bố, chưa kiểm độc lập).
- Khảo sát: bình đồ trực giao độ chính xác centimet, LiDAR xuyên tán rừng lập DEM, tính khối lượng đào đắp.
- Mô hình 3D: reality mesh, đám mây điểm, liên kết BIM, đo và theo dõi tiến độ trên web 3D.
- Lĩnh vực: xây dựng và hạ tầng (khảo sát tuyến, theo dõi tiến độ), khai khoáng (thể tích kho), năng lượng (kiểm tra nhiệt pin mặt trời, đường dây 500 kV).
- Dự án tiêu biểu trên trang đều là điện mặt trời; chưa thấy dự án xây dựng dân dụng hay cao tốc có tên.

**Khớp với đề xuất [I]:**
- Thay phần "drone LiDAR đặt ở trụ sở, luân chuyển" (VII.18 mục 6: DJI M400 + L2/L3 khoảng 25–28 nghìn USD, phần mềm Terra/PIX4D 1.680–4.990 USD/năm). Thuê dịch vụ tránh cả giấy phép bay theo Nghị định 288/2025/NĐ-CP lẫn đội phi công.
- Cấp dữ liệu cho: 1.3 (dựng 3D so BIM), bãi tập kết (thể tích đống so sổ kho), L6 (đào đắp theo lý trình), nguồn khối lượng thứ tư "thi công thực tế".
- Drone RTK nhỏ (DJI Matrice 4E, khoảng 5.200–5.500 USD) cho bay hằng tuần tại công trường vẫn có thể tự làm; SUMO làm các đợt LiDAR lớn. Chia việc này cần đo tần suất bay thật.

**Điều khoản cần có trong hợp đồng:**
1. Bàn giao file gốc, không chỉ link web 3D: LAS/LAZ hoặc E57 (đám mây điểm), GeoTIFF (bình đồ, DSM/DTM), LandXML hoặc TIN (bề mặt), CSV khối lượng theo đoạn.
2. Hệ tọa độ VN-2000 đúng múi chiếu dự án; ghi rõ điểm khống chế, cách hiệu chỉnh RTK (VNGEONET hay trạm riêng); sai số đạt được mỗi đợt.
3. CC1 sở hữu dữ liệu và ảnh gốc; lưu tại Việt Nam.
4. Tần suất bay và thời gian bàn giao theo đợt (ví dụ trong 48 giờ) để kịp đối chiếu tiến độ.
5. Mã cấu kiện hoặc lý trình Km+m đi kèm mỗi khối lượng, để lõi gắn vào ontology.

## 3. Arotech Vietnam

**Đọc trên arotechvn.com [F]:**
- Phân phối phần mềm bản quyền: Microsoft (365, Copilot, Dynamics), Adobe, Autodesk (AutoCAD, nhóm AEC, M&E, Forma, Maya, 3ds Max), SketchUp, Solidworks, ZWCAD.
- Phần cứng: máy chủ Dell, HP; lưu trữ Synology; tường lửa Fortinet. Cloud: Azure, Google Cloud, AWS, Wasabi. Triển khai Odoo.
- Tổ chức hội thảo "AI-Powered Enterprise" (04/2025) về AI, cloud, bảo mật.
- Trụ sở Công viên phần mềm ĐHQG, Thủ Đức; có chi nhánh Hà Nội **[S]**.

**Diễn giải [I]:** "AI vs BIM bên AROTECH" nhiều khả năng là CC1 mua bản quyền Autodesk (Revit/AEC, có thể Forma, Autodesk Construction Cloud) và Microsoft Copilot qua đại lý này. Arotech là kênh mua và hỗ trợ cài đặt, không phải đơn vị làm AI riêng cho CC1. Cần team xác nhận.

**Khớp với đề xuất:**
- BIM dựng trên Autodesk là nguồn khối lượng thứ nhất (thiết kế, bộ `Qto_*`). Lõi đọc qua IFC 4.3 bằng IfcOpenShell (VII.18 mục 5), nên giữ Autodesk được, miễn xuất IFC đúng và giữ GUID ổn định giữa các lần xuất.
- Nếu CC1 dùng Autodesk Construction Cloud: lấy dữ liệu qua Autodesk Platform Services API; dữ liệu ACC lưu ở cloud nước ngoài, cần xếp loại hồ sơ nào được đưa lên.
- AI của Autodesk và Microsoft Copilot chạy trên cloud nước ngoài. Theo VII.3, dùng được cho tác vụ không nhạy cảm; hồ sơ hợp đồng, khối lượng, nhân sự vẫn đi qua lõi trong nước.
- Arotech bán máy chủ Dell: có thể là một kênh báo giá cho cụm GPU (VII.17 việc 4: "máy chủ 8 GPU chưa xác minh"). Chưa kiểm Arotech có bán dòng máy GPU hay không.

## 4. VNX

**Chủ xác nhận là VNX Robotics (31/10/2026).** Phần dưới là những gì tìm được trước khi xác nhận. Tìm "VNX" + IoT + xây dựng không ra công ty khớp. Đơn vị duy nhất có tên VNX:
- VNX Robotics JSC, TP.HCM, nhà sáng lập Phạm Thanh Hữu, lập 2025; "VNX" = Vietnam eXcellence **[S]**.
- Sản phẩm: robot bốn chân VietRover-T5 (tuần tra tự động, camera nhiệt + RGB, LiDAR dựng bản đồ 3D), AMR, robot lễ tân, thiết bị nhúng, ROS 2 **[S]**/**[F]**.
- Trang chủ nêu các ngành kho vận, nông nghiệp, thiết bị nhúng, hạ tầng công nghiệp, sản xuất; không nêu xây dựng **[F]**.

**Nếu đúng là VNX Robotics [I]:** robot VietRover-T5 khớp dòng "Robot tuần tra" ở VII.8 (đang ghi Boston Dynamics Spot hoặc tương đương) và cảnh robot tuần tra đêm của đề xuất; là phương án trong nước, có kỹ thuật tại chỗ. Phần "IoT" cần hỏi rõ thiết bị nào.

**Câu hỏi cho team ứng dụng:** VNX là công ty nào (tên đầy đủ, website); đang lắp gì (cảm biến môi trường, định vị, cổng, camera, đo bê tông?); dữ liệu ra bằng gì (MQTT, REST API, xuất CSV, chỉ xem trên app); máy chủ đặt ở đâu.

## 5. Chấm theo 5 tiêu chí VII.8

| Tiêu chí | SUMO | Arotech (Autodesk) | VNX |
|---|---|---|---|
| 1. Kiểm định, chứng nhận tại VN | ISO 9001, ISO/IEC 17025 **[F]** | Đại lý chính hãng **[F]** | **[?]** |
| 2. Đại lý, kỹ thuật tại VN | Có, 34 tỉnh **[F]** | Có, TP.HCM + Hà Nội **[S]** | Có nếu là VNX Robotics (TP.HCM) |
| 3. Xuất dữ liệu mở (điều kiện loại) | Chưa kiểm: phải ghi vào hợp đồng | Revit xuất IFC được; ACC có API | **[?]** hỏi ngay |
| 4. Giá | Chưa có | Theo bảng giá Autodesk | Chưa có |
| 5. Dự án tham chiếu cùng loại | Trên trang chỉ thấy điện mặt trời | Không áp dụng | Team nói "làm việc ok" |

## 6. Đề xuất bước tiếp theo

1. Hỏi team ứng dụng 4 câu ở mục 4 về VNX, và danh sách sản phẩm Autodesk đang mua qua Arotech.
2. Xin SUMO một bộ dữ liệu mẫu của một đợt bay công trường CC1 (file gốc, không phải link web), kiểm định dạng, tọa độ, sai số.
3. Đưa ba đơn vị vào danh sách khảo sát VII.8 như "đơn vị đang dùng, chấm trước"; không đổi số liệu đã chốt.
4. Khi nạp 2 dự án mẫu (VII.13), nối thử dữ liệu SUMO và VNX vào kho trong 1–2 ngày như bước 4 của quy trình nạp dự án.

## 7. Ưu, nhược: chỉ dùng vendor ngoài, so với vendor + lõi AI

Bối cảnh (chủ, 31/10/2026): một team khác trong tập đoàn đang làm công trường số toàn bằng vendor bên thứ ba.

| | Chỉ dùng vendor ngoài | Vendor ở tầng Biên + lõi AI CC1 giữ dữ liệu |
|---|---|---|
| Tốc độ ra kết quả | Nhanh: mua dịch vụ là chạy, vendor chịu rủi ro thiết bị | Chậm hơn 3–4 tháng đầu (đội, ontology, bộ đề) **[I]** |
| Chi phí ban đầu | Thấp, trả theo đợt hoặc thuê bao | Cao hơn: cụm suy luận, đội 18–22 người (VII.11, VII.13) |
| Dữ liệu | Nằm trong app hoặc web của từng vendor; mỗi bên một màn hình | Gom về kho trong nước, một ontology chung cho cả tập đoàn |
| Đối chiếu khối lượng | Không có: drone nói một số, BIM một số, phiếu cân một số, không ai so | Có: so 6 nguồn, gắn cờ lệch kèm bằng chứng (VII.7) |
| Hỏi đáp, tác tử | Mỗi vendor có AI riêng, chỉ thấy dữ liệu của vendor đó | Một trợ lý thấy toàn bộ hồ sơ, có kiểm quyền và trích dẫn |
| Phụ thuộc | Đổi vendor là mất lịch sử dữ liệu nếu không có điều khoản xuất | Đổi vendor được, vì dữ liệu gốc đã nằm ở kho CC1 |
| Lưu trữ | Có thể ở cloud nước ngoài (ví dụ dịch vụ Autodesk) | Dữ liệu nhạy cảm nằm trong nước |

Nhận định **[I]**: hai hướng không loại trừ nhau. Vendor làm tốt việc thu dữ liệu tại hiện trường; giá trị CC1 tự giữ là phần nối, đối chiếu và hỏi đáp trên dữ liệu đó. Lõi AI nên đứng sau các vendor team kia đã chọn, không thay họ.

## 8. Khả năng nối vào lõi AI

| Đơn vị | Cách nối | Khả thi | Điều kiện |
|---|---|---|---|
| SUMO | Nhận file theo đợt (LAS/E57, GeoTIFF, LandXML, CSV) vào kho đối tượng; so đám mây điểm với BIM bằng PDAL/CloudCompare; gắn khối lượng vào cấu kiện hoặc lý trình | Cao: định dạng chuẩn, trang SUMO đã nêu đám mây điểm và liên kết BIM **[F]** | Hợp đồng ghi bàn giao file gốc, tọa độ VN-2000, mã cấu kiện hoặc Km+m (mục 2) |
| Arotech (Autodesk) | Revit xuất IFC 4.3, lõi đọc bằng IfcOpenShell; nếu dùng Autodesk Construction Cloud thì đọc qua Autodesk Platform Services API | Cao: API và IFC có tài liệu công khai **[I]** | Quy ước đặt GUID ổn định; xếp loại hồ sơ được đưa lên cloud Autodesk; Arotech chỉ là kênh mua, không làm phần nối |
| VNX Robotics | Robot chạy ROS 2 **[F]**: lấy topic qua cầu ROS 2–MQTT vào hàng đợi Kafka, lưu chuỗi thời gian vào TimescaleDB; ảnh nhiệt, đám mây điểm lưu dạng file | Trung bình: phụ thuộc VNX có mở topic hoặc API hay chỉ cho dùng app | Công ty lập 2025, sản phẩm robot ghi là chương trình phát triển **[F]**: cần thử thật tại một công trường trước khi nhân rộng; hỏi thiết bị IoT cụ thể |

**Việc rẻ nên làm ngay [I]:** đưa điều khoản "CC1 sở hữu dữ liệu, bàn giao định dạng mở, lưu tại Việt Nam" vào hợp đồng hiện hành hoặc lần gia hạn tới của team kia với cả ba vendor. Chi phí gần bằng không, nhưng giữ được lịch sử dữ liệu cho lõi về sau.

**Đề xuất hợp tác giữa hai team [I]:** team vendor giữ việc triển khai thiết bị tại công trường; team lõi AI nhận dữ liệu từ đó trong 2 dự án mẫu (VII.13, bước 4 "nối điểm chạm đang chạy", 1–2 ngày công mỗi nguồn). Đo được ngay: số nguồn đã nối, độ trễ dữ liệu, số cờ lệch khối lượng có bằng chứng.

## Nguồn

- SUMO Solutions: https://sumosolutions.vn/ (đọc bằng trình duyệt 31/10/2026)
- Arotech Vietnam: https://arotechvn.com ; danh bạ: https://resource.geospatialworld.net/company/arotech-vietnam-co-ltd ; https://www.odoo.com/partners/arotech-vietnam-company-limited-16378991
- VNX Robotics: https://vnxrobotics.com/en/homepage ; https://vnxrobotics.com/en/robotics ; https://som.ait.ac.th/post/pham-thanh-huu-building-vietnam-s-ai-and-robotic-future ; https://www.zoominfo.com/c/vnx-robotics/1339877043

## Câu hỏi còn mở

- VNX Robotics đang lắp thiết bị IoT gì cho CC1, dữ liệu ra qua app hay mở topic/API?
- CC1 mua những sản phẩm Autodesk nào qua Arotech; có dùng Autodesk Construction Cloud không?
- SUMO đang làm cho CC1 theo đợt hay hợp đồng năm; đã từng bàn giao file gốc chưa?
- Có đưa phần "đơn vị đang dùng" vào chương VII và trang web không?
