# Brief — Antigravity image worker w4: CC1 AI core deep set (69–76)

## 1. Task
Generate 8 new 16:9 images for the CC1 digital-construction dossier, chapter "PHẦN VII — Lõi vận hành AI". Each image comes in TWO versions: Clean (no text, no HUD/labels) and HUD (same camera/composition + the short Vietnamese labels listed). Use your built-in `generate_image` tool. Make the HUD version by EDITING the Clean image, not by generating a new scene.
Two kinds of image:
- **scene** = Track A field photo (ART-DIRECTION 5.1), HUD = frosted-glass chips with thin cyan/emerald leader lines.
- **blueprint** = Track B 35° isometric exploded technical board (ART-DIRECTION 5.2): mint-white studio background #F4F7F5, four frosted borosilicate glass zones on a pearl-white brushed-aluminium base, emerald #0D6A38 / cyan #00A8E8 / amber #F59E0B accents, 3D CAD miniatures, NO dark background. HUD version adds exactly the 6 labels as clean pills.

## 2. Files to read first
- /Users/jangtrinh/Products/cc1/ART-DIRECTION.md — sections 1–5. Follow it exactly.
- Style references (look at them): /Users/jangtrinh/Products/cc1/45a_AI_Core_Tro_Ly_Trich_Dan_Chi_Huy_Truong_Clean.jpg, /Users/jangtrinh/Products/cc1/45b_AI_Core_Tro_Ly_Trich_Dan_Chi_Huy_Truong_HUD.jpg, /Users/jangtrinh/Products/cc1/42a_Blueprint_GD_Tuyen_Mo_Hinh_Node_Corridor_Clean.jpg, /Users/jangtrinh/Products/cc1/42b_Blueprint_GD_Tuyen_Mo_Hinh_Node_Corridor_HUD.jpg, /Users/jangtrinh/Products/cc1/references/ref_01_cc1_engineers_white_helmet_grey_vest.jpg.

## 3. Files you may create (nothing else; do not edit or delete any existing file)
All in /Users/jangtrinh/Products/cc1/ as JPEG, 16:9: for each NN below `NNa_<Slug>_Clean.jpg`, `NNb_<Slug>_HUD.jpg`, and `NN_<Slug>.jpg` (exact copy of the HUD file, `cp`). Plus the report in section 7. If the tool saves PNG elsewhere, convert with `sips -s format jpeg <src> --out <dst>`.

## 4. Common rules
CC1 people are Vietnamese. Engineers: light SILVER-GREY multi-pocket vests with two NEON LIME-YELLOW reflective strips and the CC1 logo; on site, glossy WHITE hard hats with the green-and-red CC1 logo; indoors no hard hat (or resting on the table). Workers: ORANGE/YELLOW hard hats, ROYAL-BLUE long-sleeve shirts. Bright daylight or bright white indoor light.
Strictly avoid: dark rooms, night, cyberpunk, blue/purple neon, magenta, paragraphs. Screens, monitors and paper in BOTH versions show layout only (bars, boxes, tables, stamps, thumbnails) with NO legible words or numbers — the only readable text allowed is the listed HUD labels in the HUD version and the CC1 logo. No real vendor brand names. Do not draw a big CC1 logo in other colours than green #0D6A38 with the red-orange top of the 1.
Labels: bold Be Vietnam Pro–style sans-serif, large, 100% correct Vietnamese diacritics, spelled exactly as listed.

## 5. The images
| NN | kind | Slug (use exactly) | Content | Labels (HUD version only, exactly these) |
|---|---|---|---|---|
| 69 | blueprint | `AI_Core_Blueprint_Huan_Luyen_Mo_Hinh` | Domain model training. Zone 1 (a ladder of 6 ascending glass steps): retrieval → fine-tune → preference tuning → verifiable-reward training → distillation → continued pre-training. Zone 2 (data flow): CC1 project records → cleaning and anonymisation filter → training dataset. Zone 3 (hardware): rented GPU cloud first, then the CC1 training cluster (2 nodes). Zone 4 (release): question-set test → gate barrier G4 → serving to users. | `Dữ liệu CC1` · `Ẩn danh hóa` · `SFT LoRA` · `RLVR` · `Cổng G4` · `CC1 v1` |
| 70 | scene | `AI_Core_Huan_Luyen_B1_Gan_Nhan` | Bright labelling room: 6–8 Vietnamese annotators at dual monitors draw boxes on scanned forms (layout only); a QS lead in a grey CC1 vest checks one screen. | `Gán nhãn` · `10–15 người` · `QS kiểm mẫu` |
| 71 | scene | `AI_Core_Huan_Luyen_B2_Chay_Huan_Luyen` | Bright CC1 AI office: a researcher watches an abstract descending curve on a large monitor; a small inset camera view of white data-centre racks on a second screen (no text). | `Huấn luyện` · `Cụm CC1` · `Sai số giảm` |
| 72 | scene | `AI_Core_Huan_Luyen_B3_Cong_Phat_Hanh` | Release review meeting: an AI researcher and a CC1 chief engineer compare grouped bars on a wall screen, each group a grey bar and a taller emerald bar (no text). | `CC1 v1` · `Mô hình nền` · `Không nhóm tụt` · `Cổng G4` |
| 73 | blueprint | `AI_Core_Blueprint_Tac_Tu_Site_OS` | AI agents in Site OS. Zone 1 (4 steps): read-only → propose an action → a person approves → write to ERP. Zone 2: three agent cubes (schedule, materials, safety) connected to a tool API gateway with an audit-log tape. Zone 3 (hardware): Site OS wall screen, rugged tablet with an approve button, phone. Zone 4: ERP database, document system, audit-log archive, gate barrier G3. | `Chỉ đọc trước` · `Đề xuất lệnh` · `Người duyệt` · `Nhật ký` · `Cổng G3` · `Ghi ERP` |
| 74 | scene | `AI_Core_Tac_Tu_B1_Soan_Nhap_Nhat_Ky` | End of day in a CC1 site office: a site engineer reviews an auto-drafted daily log on a laptop (layout with photo thumbnails, no legible text), pen in hand. | `Nháp nhật ký` · `Chỉ đọc` · `Kỹ sư sửa` |
| 75 | scene | `AI_Core_Tac_Tu_B2_Nguoi_Duyet_Lenh` | On site, a CC1 site commander (white hard hat) holds a rugged tablet showing a proposal card and two large buttons, green and grey (no text); his thumb is on the green one. | `Đề xuất lệnh` · `Người duyệt` · `Tạo phiếu` |
| 76 | scene | `AI_Core_Tac_Tu_B3_Nhat_Ky_Kiem_Toan` | CC1 headquarters: a compliance officer at a screen with a long list of log rows and time stamps (no legible text); a senior manager stands behind reviewing. | `Nhật ký` · `Ai duyệt` · `Lúc nào` · `Bằng chứng` |

## 6. Acceptance criteria (check them yourself)
1. 24 files exist. Command: `ls /Users/jangtrinh/Products/cc1/{69,70,71,72,73,74,75,76}_*.jpg /Users/jangtrinh/Products/cc1/{69,70,71,72,73,74,75,76}[ab]_*.jpg | wc -l` prints 24.
2. Every file is JPEG 16:9 (±2%): `for f in /Users/jangtrinh/Products/cc1/{69,70,71,72,73,74,75,76}*_AI_Core_*.jpg; do sips -g pixelWidth -g pixelHeight -g format "$f"; done`.
3. `NN_*.jpg` is byte-identical to `NNb_*_HUD.jpg` (`cmp` each pair).
4. Clean files contain NO labels and NO HUD; no legible words on screens or paper in either version.
5. HUD files show exactly the listed labels with correct diacritics. Open each HUD image and read every label; if any letter or diacritic is wrong, edit again (max 2 retries per image) and log it.
6. No existing file was modified.

## 7. Delegation preamble (es:fable-thinking v1.3)
Before acting, state what you predict each step will produce; after acting, compare. Mark claims FACT (checked), INFERENCE, ASSUMPTION. Two failed attempts on the same image → stop retrying it, keep the best file, report it as DONE_WITH_CONCERNS with the exact wrong text.
Do not ask questions and do not stop to confirm. Do not edit markdown/HTML, do not run git, do not install software.
Write the report to /Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1346/report-w4.md before your final message; the final message repeats the Status line only. Report per image: file names, short prompt, retries, exact label text read; then ASSUMPTIONS; then the exact commands for criteria 1–3 with their pasted output; then
`Status: DONE | DONE_WITH_CONCERNS | BLOCKED`
`Summary: ...`
`Concerns/Blockers: ...`
