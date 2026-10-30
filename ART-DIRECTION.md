# DESIGN:OS × CC1 — Art Direction & Meta-Prompt Specification

> **Brand Target**: Tổng Công ty Xây dựng Số 1 – CTCP (`CC1` — *“Tận tâm vì giá trị bền vững”*, `https://www.cc1.vn/`)  
> **Dual-Version Deliverable Rule (Quy tắc 2 Phiên bản Bắt buộc cho mỗi Hình)**:
> - **Phiên bản A — Hình Trơn (`*_clean.jpg`)**: Ảnh chụp thực địa / Mô hình 3D thuần túy, sạch 100%, **không có nhãn chữ hay khung HUD** (chỉ có logo `CC1` vật lý tự nhiên trên mũ/áo/cổng). Dùng làm tư liệu gốc, background video, hoặc slide mở đầu.
> - **Phiên bản B — Hình Có Annotation HUD (`*_hud.jpg`)**: Giữ nguyên góc máy của Hình Trơn, chồng lớp phủ đồ họa AR/HUD kính mờ và các nhãn Tiếng Việt cực ngắn (`<= 4–6 nhãn`, `1–3 từ/nhãn`) theo chuẩn [`design-os-vietnamese`](https://github.com/jangtrinh/design-os-vietnamese).
> **Style System**:
> - **Track A (Slides `01`–`20` — Field Touchpoint Scenes)**: *CC1 Documentary Photorealism* (`Clean Base` + `Minimal HUD Telemetry`).
> - **Track B (Slides `21`–`33` — Technical Blueprints)**: *Luminous Layered Precision (35° Isometric 3D Exploded View)* (`Clean 3D Isometric Hardware/Wafer Base` + `Annotated Vietnamese Labels`).

---

## 🏛️ 1. CC1 Authentic Visual DNA (Trích xuất từ `cc1.vn` & Bộ Ảnh Thực Địa `ref_01`–`ref_08`)

Mọi hình ảnh tạo ra cho CC1 bắt buộc phải tuân thủ tuyệt đối nhận diện thực tế ngoài công trường của **Tổng Công ty Xây dựng Số 1 (CC1)**, tuyệt đối không vẽ trang phục công nhân Âu/Mỹ chung chung:

| Thành phần Nhận diện | Đặc tả Thực tế từ Hiện trường CC1 ([`references/`](file:///Users/jangtrinh/Products/cc1/references)) | Anti-Pattern (Cấm tuyệt đối) |
|---|---|---|
| **1. Logo & Thương hiệu CC1** ([`cc1_official_logo.png`](file:///Users/jangtrinh/Products/cc1/cc1_official_logo.png)) | Biểu tượng tòa tháp chữ `1` lồng hai chữ `C` màu **Xanh Lục Bảo CC1 (`#0D6A38`)** bên trái + Chữ **`CC1`** nét dày bo góc màu Xanh Lục Bảo (`#0D6A38`), trong đó đỉnh chéo phía trên của số `1` màu **Đỏ Cam Vermilion (`#FF2A00`)** tách bởi khe trắng nghiêng 45°. Khẩu hiệu: *“TẬN TÂM VÌ GIÁ TRỊ BỀN VỮNG”*. | Logo chữ CC1 phông chữ thường, sai màu xanh lá/đỏ cam, hoặc biến dạng chữ. |
| **2. Kỹ sư & Ban Chỉ Huy CC1** (`ref_01`, `ref_02`, `ref_05`) | - **Mũ bảo hộ:** Màu **Trắng bóng (`#FFFFFF`)**, in logo **CC1** chính diện và hai bên hông, núm vặn sau gáy màu xanh dương (`#1D63B8`), quai đeo màu xám.<br>- **Áo ghi-lê kỹ sư:** Màu **Xám bạc sáng / Trắng xám (`#E4E7EB`)** nhiều túi hộp, có **2 dải phản quang vàng chanh neon (`#C6FF00`)** ngang ngực và bụng; ngực trái thêu logo `CC1`; sau lưng in biểu tượng CC1 + dòng chữ xanh **“TỔNG CÔNG TY XÂY DỰNG SỐ 1 - CTCP”** và dòng chữ đỏ **“CONSTRUCTION CORPORATION NO.1 - JSC”**.<br>- **Trang phục trong:** Áo sơ mi sáng màu hoặc xanh lam, quần âu/jeans tối màu, giày bảo hộ da mũi thép, đeo đai an toàn toàn thân dây vàng-đen khi lên cao. | Kỹ sư đội mũ vàng/cam, mặc áo vest công sở hoặc áo phản quang cam kiểu công nhân vệ sinh. |
| **3. Công nhân Trực tiếp Thi công** (`ref_03`, `ref_04`) | - **Mũ bảo hộ:** Màu **Cam an toàn (`#FF6B00`)** hoặc **Vàng (`#FFB800`)**, thường có khăn trùm gáy chống nắng đặc trưng công trường Việt Nam.<br>- **Đồng phục:** Áo bảo hộ dài tay màu **Xanh dương đậm (`#0F4C81` / `#1D4ED8`)** phối ghi-lê lưới xám/trắng có vạch phản quang, quần bảo hộ xám đậm, ủng cao su hoặc giày bảo hộ. | Công nhân Tây phương, để đầu trần, hoặc mặc đồ sci-fi giả tưởng. |
| **4. Bối cảnh Đại công trường & Máy móc CC1** (`ref_03`, `ref_04`, `ref_05`) | - **Hạ tầng & Cầu đường:** Trụ cầu vượt sông lớn (`Cầu Cát Lái`, `Cầu Long Hưng`, `Vành đai 3`), lồng thép trụ cầu dày đặc, ống gen cáp dự ứng lực mạ kẽm sáng bóng, đà giáo thép chữ I màu xanh dương.<br>- **Công nghiệp & Cao tầng:** Nhà xưởng kết cấu thép cao tầng (khung cột xanh đậm `#1B365D` + thanh giằng cam `#FF5A1F`), nhà ga sân bay (`T3 Tân Sơn Nhất`, `Long Thành`), bệnh viện đa khoa.<br>- **Đội xe cơ giới:** Cẩu bánh lốp `SANY` thân vàng - cần đỏ, cẩu tháp vàng, xe bồn/xe ben đầu trắng (`HOWO`, `TERRA YAMAKEN`) treo băng-rôn xanh lục bảo `#0D6A38` và cờ đỏ/trắng in logo CC1. | Cảnh đêm tối tăm u ám kiểu Cyberpunk, sương mù tím/xanh đen, kiến trúc châu Âu cổ. |

---

## 📐 2. The 5 Core Visual Laws (Luật Thị Giác Cốt Lõi Cho Blueprint & Infographic)

Áp dụng cấu trúc từ [`Agent Teacher/ART-DIRECTION.md`](file:///Users/jangtrinh/Products/Agent%20Teacher/ART-DIRECTION.md) kết hợp tiêu chuẩn chữ Tiếng Việt [`design-os-vietnamese`](https://github.com/jangtrinh/design-os-vietnamese):

| Law | Specification (Quy chuẩn bắt buộc) | Anti-Pattern to Avoid (Cấm tuyệt đối) |
|---|---|---|
| **1. Strict 35° Isometric Grid (Cho toàn bộ Blueprint `21`–`33`)** | Mọi bản vẽ kỹ thuật (`21`–`33`) phải dùng góc chiếu **35° Isometric 3D Exploded View** (Bản vẽ bóc tách lớp 3D góc 35 độ). Các thành phần (Thiết bị hiện trường, Mạng truyền dẫn, Luồng AI, Quy trình 4 bước) được đặt phẳng ngay ngắn trên các tấm kính mờ (`glass wafers`) xếp tầng hoặc chia 4 ô mô-đun trên đế nhôm trắng. | Sơ đồ 2D rối rắm, chữ bay lơ lửng lệch trục, bố cục poster quảng cáo lộn xộn, mỗi hình một kiểu. |
| **2. Self-Explanatory High-Tech HUD & Short Vietnamese Callouts (`design-os-vietnamese` `UX001`)** | **HUD phải giải thích rõ CÔNG NGHỆ & THIẾT BỊ nhưng chữ gọn, sạch, không lỗi dấu:**<br>- **Bắt buộc chỉ rõ Thiết bị phần cứng (`Hardware Callouts`):** Mỗi thiết bị trong cảnh (Camera 3D, Trạm RTK, Cổng LiDAR, Màn hình Face ID, Cẩu tháp) phải có đường dẫn (`leader line`) + thẻ tên thiết bị rõ ràng và **chùm tia/sóng mô phỏng nguyên lý hoạt động** (chùm lưới quét 3D, sóng UWB, khung hộp 3D).<br>- **Thể hiện đúng đồ họa Computer Vision thực tế:** Ví dụ "Khung xương 3D" phải là **mô hình 17 điểm khớp nối trục xương (`17-Keypoint 3D Pose Graph`) + Khung hộp 3D (`3D Bounding Box`) + Thước đo nhân trắc (`Cao 1m72 · Vai 44cm`) + Vệt bước chân dáng đi**, tuyệt đối không vẽ xương sườn X-quang y tế.<br>- **Cấu trúc chữ:** Dùng thẻ thông số ngắn gọn (`2–5 từ/thẻ`), chữ in đậm rõ nét, tuyệt đối không viết đoạn văn dài nhiều dòng. | Chỉ gắn 2–3 nhãn chung chung không hiểu máy nào đang chạy, vẽ xương sườn X-quang thay vì khung xương AI 17 khớp, hoặc nhồi đoạn văn dài lỗi font. |
| **3. Tactile Glass & Industrial Material Physics** | Các tầng xử lý dữ liệu và quy trình được thể hiện bằng tấm kính **Borosilicate trong mờ (`90% transmission`)** bo góc tinh tế, viền vát sáng `1px (#FFFFFF)`, đặt nổi bên trên **đế khung nhôm nguyên khối phay xước màu trắng ngọc (`#F4F7F5`)**. Thiết bị phần cứng (Camera, LiDAR, Robot, Cẩu tháp) được dựng 3D CAD sắc nét. | Hộp màu 2D phẳng lì, nền đen/xanh đen tối tăm, hiệu ứng neon lòe loẹt rẻ tiền. |
| **4. High-Key Daylight Studio Lighting & Anti-Murkiness (Strict)** | **Ánh sáng Studio ban ngày trong trẻo (High-Key Studio Illumination)** trên nền trắng xanh bạc hà cực nhẹ (`#F4F7F5` → `#FAFDFB`). Bóng đổ tiếp xúc mềm mại (`soft ambient occlusion`), ánh sáng phản xạ xanh lục bảo CC1 (`#0D6A38`) và xanh dữ liệu (`#00A8E8`). | Nền tối đen (`Dark mode blueprint`), bóng đổ đen đặc, màu tím/hồng cyberpunk (`Purple Ban`), tương phản gắt gây mỏi mắt. |
| **5. `design-os-vietnamese` Diacritic & Terminology Gate (`UX005`, `UX006`, `REA006`)** | - Chỉ dùng phông chữ **Geometric Sans-serif nét dày, rõ dấu** (`Be Vietnam Pro` / `Inter Bold` aesthetic).<br>- Khoảng cách dòng `line-height >= 1.25` và khoảng đệm quanh chữ rộng rãi để không cắt dấu mũ kép (`Ấ`, `Ế`, `Ổ`, `Ữ`) hoặc dấu nặng dưới (`ự`, `ệ`, `ậ`).<br>- Dùng đúng thuật ngữ xây dựng Việt Nam chuẩn Nghị định 37/2015/NĐ-CP (không dịch máy kiểu calque). | Chữ in hoa dài ngoằng dính sát nhau, cắt mất dấu sắc/hỏi/ngã trên chữ hoa, dùng từ dịch máy ngô nghê. |

---

## 🎨 3. Design Tokens & Color Palette (Hệ Màu Chuẩn CC1 × DESIGN:OS)

```yaml
Atmosphere_Blueprint_Studio:
  canvas_base: "#F4F7F5"         # Trắng bạc hà kiến trúc cực sáng (Clean Architectural Mint-White)
  ambient_mist: "#EAF2EE"        # Ánh sáng môi trường xanh ngọc nhạt
  fill_daylight: "#FFFFFF"       # Ánh sáng studio ban ngày tinh khiết

Materials_3D_Isometric:
  wafer_glass: "Translucent borosilicate glass (90% light transmission, refractive index 1.52)"
  edge_bevel: "1px crisp white specular chamfer (#FFFFFF)"
  chassis_base: "Anodized pearl-white & satin-brushed aluminum (#EEF2F0)"
  contact_shadow: "Soft emerald-slate contact shadow rgba(13, 106, 56, 0.08)"

CC1_Brand_And_Telemetry_Accents:
  cc1_heritage_green: "#0D6A38"  # Xanh Lục Bảo CC1 chủ đạo (Khung chính, Trạng thái đạt chuẩn, BIM chuẩn)
  cc1_vermilion_red: "#FF2A00"   # Đỏ Cam CC1 (Điểm nhấn số 1, Cảnh báo vi phạm an toàn, Chặn gian lận)
  telemetry_cyan: "#00A8E8"      # Xanh Lam Dữ Liệu (Luồng tia LiDAR, Sóng UWB/RTK, Khung xương 3D AI)
  safety_amber: "#F59E0B"        # Vàng Cam Cơ Giới (Thiết bị cẩu tháp, máy xúc, mũ bảo hộ công nhân)
  reflective_lime: "#C6FF00"     # Vàng Chanh Phản Quang (Vạch phản quang trên áo ghi-lê kỹ sư CC1)
  ink_primary: "#0F172A"         # Chữ chính trên nền sáng (Slate 900 - tương phản tuyệt đối)
```

---

## 🔤 4. Quy Chuẩn Chữ Tiếng Việt `design-os-vietnamese` Trong Hình Ảnh (Zero-Glitch Typography Gate)

Để **100% không bị lỗi font Tiếng Việt** khi sinh ảnh AI, mọi nhãn chữ đưa vào Prompt phải tuân thủ bộ quy tắc lọc của [`design-os-vietnamese`](https://github.com/jangtrinh/design-os-vietnamese):

1. **Giới hạn Ký tự Cứng (`Hard Character Cap` theo `UX001`):**
   - **Tiêu đề chính trên ảnh (nếu có):** Tối đa **3–5 từ** (`<= 22 ký tự`), ưu tiên từ ít dấu chồng (ví dụ: `CỔNG KIỂM SOÁT AI`, `TRẠM CÂN 3D LIDAR`, `ROBOT IN SÀN BIM`).
   - **Nhãn thành phần (`Component Pill / Chip`):** Tối đa **2–3 từ** (`<= 14 ký tự`), ví dụ:
     - ✅ Chuẩn: `Cổng AI`, `Camera 3D`, `Mũ gắn chip`, `Máy chủ biên`, `Bản sao số`, `Sai số <1cm`, `1.5 giây`, `Cáp quang`.
     - ❌ Cấm: `Hệ thống trích xuất khung xương động học 3D và dáng đi ngay lúc bước qua cổng xoay` (quá dài -> chắc chắn lỗi chữ!).
2. **Ưu tiên Nhãn Số Liệu & Ký Hiệu Kỹ Thuật (`Numeric & Iconic First`):**
   - Dùng con số và đơn vị quốc tế rõ ràng: `07:00`, `17:00`, `1.5s`, `< 1cm`, `50m`, `4KB`, `30x80px`, `100ms`, `24/7`, `BIM 4D`, `RTK`, `UWB`, `LiDAR`, `CC1`.
3. **Từ Điển Thuật Ngữ Ngành Xây Dựng Chuẩn (`vietnamese-real-estate-construction` `REA006`):**
   - Dùng `Trắc đạc` (không dùng *đo lường mặt đất*), `Cốt thép` (không dùng *thanh sắt*), `Cốp-pha / Ván khuôn`, `Cơ điện (MEP)`, `Bản vẽ hoàn công`, `Nghiệm thu`, `Thầu phụ`, `Ban chỉ huy`.

---

## 🧬 5. Reusable Meta-Prompt Schemas (2 Khuôn Mẫu Prompt Chuẩn Hóa)

### 5.1. Track A — Khuôn Mẫu Phối Cảnh Thực Chiến Điểm Tiếp Xúc (`Slides 01–20`)
> **Mục tiêu:** Hình ảnh hiện trường chân thực như ảnh chụp phóng sự tại đại công trường CC1 (`Cầu Cát Lái`, `Vành đai 3`, `Nhà ga T3`), đúng đồng phục CC1, kết hợp lớp phủ đồ họa AR/HUD mảnh, sạch, ít chữ.

```text
Photorealistic 16:9 high-key documentary architectural & construction photography of {SCENE_DESCRIPTION} at a major CC1 (Construction Corporation No.1) mega-project in Vietnam under bright tropical daylight.
Authentic CC1 Personnel & Equipment:
- CC1 Engineers wearing glossy WHITE hard hats (#FFFFFF) with the green-and-red CC1 logo on the front and blue rear ratchet dial, paired with light SILVER-GREY multi-pocket engineering vests (#E4E7EB) featuring two bright NEON LIME-YELLOW horizontal reflective strips (#C6FF00).
- Direct construction workers wearing ORANGE/YELLOW hard hats (#FF6B00) and ROYAL BLUE long-sleeve work shirts (#0F4C81) with reflective strips.
- Heavy machinery in authentic yellow/red SANY crane and white truck livery with deep emerald-green CC1 banners (#0D6A38).
Tactile AR Telemetry Overlay:
- Subtle, ultra-clean frosted glass HUD callout pills anchored directly to the subject with thin cyan (#00A8E8) and CC1 emerald green (#0D6A38) leader lines.
- Strict Vietnamese Microcopy Cap (design-os-vietnamese): ONLY {MAX_4_SHORT_VIETNAMESE_CHIPS} rendered in bold, large, crisp geometric sans-serif (Be Vietnam Pro Bold style) with generous padding and 100% accurate Vietnamese diacritics.
Avoid: Dark cyberpunk night scenes, purple/magenta neon, wall-of-text paragraphs, small unreadable text, Western worker uniforms, distorted Vietnamese characters.
```

### 5.2. Track B — Khuôn Mẫu Bản Vẽ Kỹ Thuật Blueprint 35° Isometric (`Slides 21–33`)
> **Mục tiêu:** Thống nhất 100% cùng một phong cách **Luminous Layered Precision (35° Isometric 3D Exploded View)** học từ [`Agent Teacher/ART-DIRECTION.md`](file:///Users/jangtrinh/Products/Agent%20Teacher/ART-DIRECTION.md) — nền Studio trắng sáng `#F4F7F5`, 4 mô-đun kính Borosilicate trong mờ trên đế nhôm phay xước trắng, cực ít chữ, không lỗi font.

```text
High-end 16:9 3D architectural exploded isometric technical blueprint visualization demonstrating {TOUCHPOINT_NAME} for CC1 Digital Construction Operating System (DESIGN:OS x CC1).
Style: Luminous Layered Precision (Strict 35-degree isometric 3D view).
Color Palette: High-key bright studio architectural mint-white background (#F4F7F5 to #FAFDFB), pearl-white satin-brushed aluminum base chassis (#EEF2F0), translucent frosted borosilicate glass wafers with crisp 1px white specular edges, accented with CC1 Heritage Emerald Green (#0D6A38), Telemetry Electric Cyan (#00A8E8), Safety Amber (#F59E0B), and Vermilion Alert Red (#FF2A00).
Composition: Strict 35-degree isometric architectural board featuring 4 clean modular glass zones hovering over the aluminum chassis:
- Zone 1 (Quy trình 4 bước): {ZONE_1_VISUAL_ICONS_AND_3D_MINIATURES}
- Zone 2 (Luồng xử lý AI): {ZONE_2_VISUAL_ICONS_AND_3D_MINIATURES}
- Zone 3 (Thiết bị phần cứng): {ZONE_3_3D_CAD_HARDWARE_MODELS}
- Zone 4 (Hạ tầng công trường): {ZONE_4_INFRASTRUCTURE_DIAGRAM}
Typography (Strict design-os-vietnamese Minimal Cap):
- Radical text minimization: NO paragraphs, NO long sentences, NO bullet lists.
- ONLY display these exact short bold Vietnamese labels (1-3 words each, Be Vietnam Pro Bold, large clear diacritics, high contrast #0F172A on white/glass pills): {EXACT_6_SHORT_VIETNAMESE_LABELS}.
Lighting: High-key daylight softbox illumination, soft caustic reflections, clean 8k industrial product design render.
Avoid: Dark blue/black backgrounds, cluttered text, long Vietnamese sentences, garbled diacritics, 2D flat posters, purple/magenta colors.
```

---

## 🗺️ 6. Master 33-Visual Roadmap & Pre-Audited Short Vietnamese Labels (`<= 14 chars`)

Toàn bộ 33 hình ảnh được khóa chặt danh sách nhãn chữ Tiếng Việt cực ngắn (đã kiểm duyệt theo `design-os-vietnamese` `UX001` & `UX006`) để đảm bảo **không bao giờ lỗi font**:

### Phần A: 20 Hình Phối Cảnh Điểm Tiếp Xúc (`01`–`20` — Track A: CC1 Documentary Photorealism)

| ID | File Name | Chủ đề Điểm tiếp xúc | Bộ Nhãn Ngắn Duy Nhất Trên Ảnh (`<= 4 nhãn`, `1–3 từ/nhãn`) |
|---|---|---|---|
| `01` | `01_GD1_CP1_Cong_Kiem_Soat_AI_PPE.jpg` | GĐ1 — Cổng kiểm soát AI & Đồ bảo hộ | `CC1` · `Cổng AI` · `Đủ bảo hộ` · `Mở cổng 1.5s` |
| `02` | `02_GD1_CP2_Camera_AI_Giam_Sat_An_Toan_24_7.jpg` | GĐ1 — Camera AI giám sát an toàn 24/7 | `Camera AI 24/7` · `Vùng nguy hiểm` · `Thiếu dây đai` · `Báo động đỏ` |
| `03` | `03_GD1_CP3_Drone_AI_Quet_3D_Doi_Soat_BIM.jpg` | GĐ1 — Drone AI quét 3D & đối soát BIM 4D | `Drone RTK` · `Quét 3D LiDAR` · `Mô hình BIM 4D` · `Đạt 94%` |
| `04` | `04_GD1_CP4_Smart_Gate_AI_OCR_Kiem_Soat_Xe.jpg` | GĐ1 — Cổng thông minh đọc biển số xe & rửa lốp | `Cổng thông minh` · `Đọc biển số` · `Soi thùng xe` · `Rửa lốp sạch` |
| `05` | `05_GD1_ReID_Tang1_Passthrough_3D_Skeleton_Gait_Gate.jpg` | Re-ID Tầng 1 — Quét khung xương 3D tại cổng | `07:00 Sáng` · `Camera 3D` · `Khung xương 3D` · `Dáng đi 1.5s` |
| `06` | `06_GD1_ReID_Tang2_Multi_Camera_3D_Pose_Tracking.jpg` | Re-ID Tầng 2 — Theo vết liên camera bằng dáng đi | `CAM 01 → CAM 04` · `Khung xương 3D` · `Mã #CC1-0842` · `Đúng vị trí` |
| `07` | `07_GD1_ReID_Tang3_Drone_50m_UWB_Helmet_Sensor_Fusion.jpg` | Re-ID Tầng 3 — Drone 50m + Chip mũ bảo hộ | `Drone 50m` · `Chip mũ UWB` · `Khớp chiều cao` · `Chống tráo mũ` |
| `08` | `08_GD1_ReID_Quy_Trinh_4_Buoc_Khep_Kin_07h_17h.jpg` | Re-ID — Quy trình 4 bước khép kín (07:00–17:00) | `1. Quét cổng 07:00` · `2. Đồng bộ AI` · `3. Theo vết 3D` · `4. Chấm công 17:00` |
| `09` | `09_GD1_ReID_Phu_Luc_Bac_Bo_3D_Avatar_vs_Edge_AI_Box.jpg` | Re-ID — Bác bỏ Avatar 3D tĩnh vs Máy chủ biên | `Avatar 3D: Lỗi` · `Khung xương 3D` · `Máy chủ biên` · `Nhẹ hơn 1000x` |
| `10` | `10_GD2_CP1_Tram_Can_AI_Quet_3D_LiDAR_Vat_Tu.jpg` | GĐ2 — Trạm cân AI & Quét 3D LiDAR vật tư | `Trạm cân AI` · `Quét 3D LiDAR` · `Thể tích 24.5m³` · `Khớp phiếu kho` |
| `11` | `11_GD2_CP2_Robot_In_Ban_Ve_BIM_Len_San_FieldPrinter.jpg` | GĐ2 — Robot tự hành in bản vẽ BIM lên sàn | `Robot in sàn` · `Máy toàn đạc` · `Bản vẽ BIM` · `Sai số <1.5mm` |
| `12` | `12_GD2_CP3_May_Xuc_Dan_Duong_3D_Machine_Guidance.jpg` | GĐ2 — Máy xúc dẫn đường 3D chống đào lố | `Máy xúc 3D` · `Định vị RTK` · `Cao độ chuẩn` · `Chống đào lố` |
| `13` | `13_GD2_CP4_AR_Mobile_BIM_Doi_Chieu_Nghiem_Thu_MEP.jpg` | GĐ2 — Máy tính bảng AR nghiệm thu cơ điện MEP | `Nghiệm thu AR` · `Ống cơ điện 3D` · `Sai lệch 45mm` · `Báo lỗi BIM` |
| `14` | `14_GD3_CP1_Robot_Bon_Chan_Tuan_Dem_Quet_3D_LiDAR.jpg` | GĐ3 — Robot 4 chân tuần đêm & quét 3D LiDAR | `Ca đêm 22:00` · `Robot tuần đêm` · `Quét LiDAR 3D` · `Cập nhật BIM` |
| `15` | `15_GD3_CP2_Cong_Nhan_Khung_Xuong_Tro_Luc_Exoskeleton.jpg` | GĐ3 — Công nhân đeo khung xương trợ lực | `Khung trợ lực` · `Giảm 70% tải` · `Bảo vệ cột sống` · `Năng suất x2` |
| `16` | `16_GD3_CP3_May_Cong_Trinh_Tu_Hanh_Hoan_Toan.jpg` | GĐ3 — Đội máy công trình tự hành hoàn toàn | `Đội xe tự hành` · `Radar 360°` · `Đầm nén chuẩn` · `An toàn 100%` |
| `17` | `17_GD3_CP4_Cau_Thap_Tu_Hanh_AI_Tower_Crane.jpg` | GĐ3 — Cẩu tháp tự hành AI & chống lắc tải | `Cẩu tháp AI` · `Cảm biến móc cẩu` · `Khử lắc 85%` · `Tránh va chạm` |
| `18` | `18_GD3_CP5_He_Dieu_Hanh_Da_Tac_Tu_Multi_Agent_Site_OS.jpg` | GĐ3 — Trung tâm chỉ huy Bản sao số & Đa tác tử AI | `Trung tâm CC1` · `Bản sao số 3D` · `Đa tác tử AI` · `Xử lý 3 giây` |
| `19` | `19_Vision2030_CP1_Nha_May_Vi_Mo_Container_OnSite.jpg` | 2030 — Nhà máy vi mô Container 40ft tại chỗ | `Xưởng Container` · `Robot hàn cắt` · `Mô-đun cơ điện` · `Lắp ghép ngay` |
| `20` | `20_Vision2030_CP2_Zero_UI_Smart_Contract_Payment.jpg` | 2030 — Kính bảo hộ AR & Thanh toán tức thời | `Kính AR bảo hộ` · `Nghiệm thu 3D` · `Hợp đồng số` · `Giải ngân 2 phút` |

---

### Phần B: 13 Bản Vẽ Kỹ Thuật Blueprint (`21`–`33` — Track B: 35° Isometric Luminous Layered Precision)

| ID | File Name | Chủ đề Bản vẽ Kỹ thuật 35° Isometric | Bộ Nhãn Ngắn Duy Nhất Trên Bản Vẽ (`<= 6 nhãn`, `1–3 từ/nhãn`) |
|---|---|---|---|
| `21` | `21_Blueprint_00_Ha_Tang_Nen_Tang_CC1_Site_Backbone.jpg` | Kiến trúc Hạ tầng 4 Tầng Công trường số CC1 | `1. Cảm biến` · `2. Mạng & RTK` · `3. Máy chủ biên` · `4. Đám mây CC1` |
| `22` | `22_Blueprint_GD1_TP1_1_Cong_AI_PPE_Quy_Trinh_BOM_Ha_Tang.jpg` | Blueprint 1.1 — Cổng kiểm soát AI & Bảo hộ | `1. Quy trình 1.5s` · `2. AI Khuôn mặt` · `3. Cổng xoay 3D` · `4. Mạng PoE+` |
| `23` | `23_Blueprint_GD1_TP1_2_CCTV_AI_24_7_Quy_Trinh_BOM_Ha_Tang.jpg` | Blueprint 1.2 — Camera AI giám sát 24/7 | `1. Giám sát 24/7` · `2. Lọc báo giả 3s` · `3. Trụ Camera AI` · `4. Sóng 5GHz` |
| `24` | `24_Blueprint_GD1_TP1_3_Drone_3D_BIM_Quy_Trinh_BOM_Ha_Tang.jpg` | Blueprint 1.3 — Drone RTK & Đối soát BIM 4D | `1. Bay tự động` · `2. Khớp BIM 4D` · `3. Drone LiDAR` · `4. Trạm RTK <1cm` |
| `25` | `25_Blueprint_GD1_TP1_4_Smart_Gate_OCR_Quy_Trinh_BOM_Ha_Tang.jpg` | Blueprint 1.4 — Cổng xe thông minh & Rửa lốp | `1. Quét xe ra vào` · `2. AI Đọc biển số` · `3. Cổng & Rửa lốp` · `4. Lưu điện UPS` |
| `26` | `26_Blueprint_GD1_TP1_5_3D_Spatial_ReID_UWB_Fusion_Chi_Tiet.jpg` | Blueprint 1.5 — Định danh 3D & Chip mũ bảo hộ | `1. Quét cổng 3D` · `2. Theo vết dáng đi` · `3. Chip mũ UWB` · `4. Chống tráo mũ` |
| `27` | `27_Blueprint_GD2_TP2_1_Tram_Can_3D_LiDAR_Quy_Trinh_BOM_Ha_Tang.jpg` | Blueprint 2.1 — Trạm cân AI & Cổng 3D LiDAR | `1. Cân & Quét 3D` · `2. Đo thể tích` · `3. Cổng LiDAR` · `4. Khớp kho ERP` |
| `28` | `28_Blueprint_GD2_TP2_2_Robot_In_San_BIM_Quy_Trinh_BOM_Ha_Tang.jpg` | Blueprint 2.2 — Robot in bản vẽ BIM lên sàn | `1. Nạp bản vẽ BIM` · `2. Khóa tia Laser` · `3. Robot in sàn` · `4. Sai số <1.5mm` |
| `29` | `29_Blueprint_GD2_TP2_3_May_Xuc_3D_Guidance_Quy_Trinh_BOM_Ha_Tang.jpg` | Blueprint 2.3 — Máy xúc dẫn đường 3D | `1. Nạp mặt cắt 3D` · `2. Định vị RTK` · `3. Cảm biến cần` · `4. Khóa thủy lực` |
| `30` | `30_Blueprint_GD2_TP2_4_iPad_AR_BIM_MEP_Quy_Trinh_BOM_Ha_Tang.jpg` | Blueprint 2.4 — Máy tính bảng AR nghiệm thu MEP | `1. Quét mốc tầng` · `2. Chồng khớp 3D` · `3. Máy tính bảng` · `4. Đồng bộ BIM` |
| `31` | `31_Blueprint_GD3_TP3_1_3_2_Robot_Tuan_Dem_va_Exoskeleton.jpg` | Blueprint 3.1 & 3.2 — Robot tuần đêm & Khung trợ lực | `1. Robot tuần đêm` · `2. Quét LiDAR 3D` · `3. Khung trợ lực` · `4. Giảm 70% tải` |
| `32` | `32_Blueprint_GD3_TP3_3_3_4_May_Tu_Hanh_va_Cau_Thap_AI.jpg` | Blueprint 3.3 & 3.4 — Xe tự hành & Cẩu tháp AI | `1. Đội xe tự hành` · `2. Đầm nén thông minh` · `3. Cẩu tháp AI` · `4. Khử lắc 85%` |
| `33` | `33_Blueprint_GD3_2030_SiteOS_MicroFactory_ZeroUI_SmartContract.jpg` | Blueprint 3.5 & 2030 — Đa tác tử, Xưởng Container & Hợp đồng số | `1. Đa tác tử AI` · `2. Xưởng Container` · `3. Kính bảo hộ AR` · `4. Giải ngân 2p` |
