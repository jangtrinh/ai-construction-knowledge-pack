# Brief — Antigravity image worker w3: CC1 AI core deep set (64–68)

## 1. Task
Generate 5 new 16:9 images for the CC1 digital-construction dossier, chapter "PHẦN VII — Lõi vận hành AI". Each image comes in TWO versions: Clean (no text, no HUD/labels) and HUD (same camera/composition + the short Vietnamese labels listed). Use your built-in `generate_image` tool. Make the HUD version by EDITING the Clean image, not by generating a new scene.
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
| 64 | blueprint | `AI_Core_Blueprint_Ontology_6_Nguon` | Ontology and six quantity sources. Zone 1 (ontology chain of linked 3D blocks): structural element → BOQ line → norm code → material → acceptance record. Zone 2: six source pillars converging into one reconciliation node: BIM design, BOQ estimate, delivered (weighbridge), built (drone survey), accepted (signed record), paid (ERP). Zone 3 (hardware): weighbridge, truck LiDAR scan gantry, RTK drone, QS tablet. Zone 4: ERP, graph database, an alert card with evidence thumbnails (weigh ticket, photo). | `Cấu kiện` · `Dòng BOQ` · `6 nguồn` · `Gắn cờ lệch` · `Kèm bằng chứng` · `QS xác nhận` |
| 65 | scene | `AI_Core_KL_B1_Can_Quet_Thung_Xe` | A white sand-dump truck with a CC1 banner on a weighbridge, passing under a LiDAR scanning gantry at the site gate; a CC1 engineer watches a tablet at the booth. | `Cân xe` · `Quét thùng` · `Tỷ trọng lệch` |
| 66 | scene | `AI_Core_KL_B2_Drone_Do_Bai_Tap_Ket` | A survey drone flies over aggregate stockpiles in a site yard; a CC1 engineer (white hard hat) holds an RTK controller; a GNSS base station on a tripod nearby. | `Drone RTK` · `Thể tích đống` · `So sổ kho` |
| 67 | scene | `AI_Core_KL_B3_Xe_Bon_So_BIM` | Concrete slab pour on a high-rise deck, mixer trucks queued below, pump boom; a CC1 engineer with a tablet showing a 3D BIM slab element (layout only). | `Phiếu xe bồn` · `Thể tích BIM` · `Hao hụt BT` |
| 68 | scene | `AI_Core_KL_B4_Canh_Bao_Kem_Bang_Chung` | CC1 site office: a QS and a site commander look at a large screen with an alert card and three evidence thumbnails (weigh ticket, site photo, coloured point cloud) and one highlighted BOQ row (no legible text). | `Cảnh báo lệch` · `Phiếu cân` · `Ảnh hiện trạng` · `Dòng BOQ` |

## 6. Acceptance criteria (check them yourself)
1. 15 files exist. Command: `ls /Users/jangtrinh/Products/cc1/{64,65,66,67,68}_*.jpg /Users/jangtrinh/Products/cc1/{64,65,66,67,68}[ab]_*.jpg | wc -l` prints 15.
2. Every file is JPEG 16:9 (±2%): `for f in /Users/jangtrinh/Products/cc1/{64,65,66,67,68}*_AI_Core_*.jpg; do sips -g pixelWidth -g pixelHeight -g format "$f"; done`.
3. `NN_*.jpg` is byte-identical to `NNb_*_HUD.jpg` (`cmp` each pair).
4. Clean files contain NO labels and NO HUD; no legible words on screens or paper in either version.
5. HUD files show exactly the listed labels with correct diacritics. Open each HUD image and read every label; if any letter or diacritic is wrong, edit again (max 2 retries per image) and log it.
6. No existing file was modified.

## 7. Delegation preamble (es:fable-thinking v1.3)
Before acting, state what you predict each step will produce; after acting, compare. Mark claims FACT (checked), INFERENCE, ASSUMPTION. Two failed attempts on the same image → stop retrying it, keep the best file, report it as DONE_WITH_CONCERNS with the exact wrong text.
Do not ask questions and do not stop to confirm. Do not edit markdown/HTML, do not run git, do not install software.
Write the report to /Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1346/report-w3.md before your final message; the final message repeats the Status line only. Report per image: file names, short prompt, retries, exact label text read; then ASSUMPTIONS; then the exact commands for criteria 1–3 with their pasted output; then
`Status: DONE | DONE_WITH_CONCERNS | BLOCKED`
`Summary: ...`
`Concerns/Blockers: ...`
