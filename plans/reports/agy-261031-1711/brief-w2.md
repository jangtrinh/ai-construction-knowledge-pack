# Brief — Antigravity image worker w2: CC1 AI core component-spec set (78–82)

## 1. Task
Generate 3 new 16:9 images for the CC1 digital-construction dossier, chapter "PHẦN VII — Lõi vận hành AI". Each image comes in TWO versions: Clean (no text, no HUD/labels) and HUD (same camera/composition + the short Vietnamese labels listed). Use your built-in `generate_image` tool. Make the HUD version by EDITING the Clean image, not by generating a new scene.
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
Strictly avoid: dark rooms, night, cyberpunk, blue/purple neon, magenta, paragraphs. Screens, monitors and paper in BOTH versions show layout only (bars, boxes, tables, stamps, thumbnails) with NO legible words or numbers — the only readable text allowed is the listed HUD labels in the HUD version and the CC1 logo. No real vendor brand names. Devices (scanners, tablets, cameras, edge computers, laser scanners, excavators, GPU servers) are GENERIC: no vendor logos, no wordmarks, no model numbers on any device. Do not draw a big CC1 logo in other colours than green #0D6A38 with the red-orange top of the 1.
Labels: short; bold Be Vietnam Pro–style sans-serif, large, 100% correct Vietnamese diacritics, spelled exactly as listed.

## 5. The images
| NN | kind | Slug (use exactly) | Content | Labels (HUD version only, exactly these) |
|---|---|---|---|---|
| 78 | blueprint | `AI_Core_Blueprint_Back_End_OCR` | The software back end behind document OCR, as a left-to-right flow across the four zones. Zone 1 (intake): a rugged tablet and a document scanner sending pages into an API gateway box. Zone 2 (store + queue): object-storage drums, and a short conveyor of job cards (queue). Zone 3 (compute): one GPU server node with a glowing chip running a document model; a shield icon checking a curly-bracket data block (schema check, no legible text). Zone 4 (review + record): a QS review monitor with a few amber-highlighted cells, then a database cylinder linked to a small ontology graph (nodes and links) and a BOQ grid tile. | `1. Nhận file` · `2. Kho file` · `3. Hàng đợi` · `4. Mô hình OCR` · `5. QS duyệt` · `6. Ghi CSDL` |
| 81 | scene | `AI_Core_Quet_Laser_So_BIM` | Inside a building under construction, bright daylight from open facade: exposed ductwork and pipes under a concrete ceiling; a compact terrestrial laser scanner on a tripod in the middle of the floor (generic, no logo); a CC1 MEP engineer (white hard hat, grey CC1 vest) holds a rugged tablet showing a coloured point cloud overlaid on a grey BIM model with a few red and green deviation spots (no text). | `Quét laser` · `Đám mây điểm` · `So lệch BIM` |
| 82 | scene | `AI_Core_Dan_Huong_May_Dao_3D` | Highway earthwork in Vietnam, bright daylight: a yellow excavator (no brand) trims a road embankment slope; two GNSS antennas on the counterweight; view over the operator's shoulder inside the cab shows an in-cab display with a 3D design surface in green/blue cut-fill colours and the bucket position (no text); outside, a CC1 surveyor (white hard hat, grey CC1 vest) holds a GNSS rover pole. | `Dẫn hướng 3D` · `Mặt thiết kế` · `Hoàn công về lõi` |

## 6. Acceptance criteria (check them yourself)
1. 9 files exist. Command: `ls /Users/jangtrinh/Products/cc1/{78,81,82}_*.jpg /Users/jangtrinh/Products/cc1/{78,81,82}[ab]_*.jpg | wc -l` prints 9.
2. Every file is JPEG 16:9 (±2%): `for f in /Users/jangtrinh/Products/cc1/{78,81,82}*_AI_Core_*.jpg; do sips -g pixelWidth -g pixelHeight -g format "$f"; done`.
3. `NN_*.jpg` is byte-identical to `NNb_*_HUD.jpg` (`cmp` each pair).
4. Clean files contain NO labels and NO HUD; no legible words, numbers, vendor logos or model numbers on screens, paper or devices in either version.
5. HUD files show exactly the listed labels with correct diacritics. Open each HUD image and read every label; if any letter or diacritic is wrong, edit again (max 2 retries per image) and log it.
6. No existing file was modified.

## 7. Delegation preamble (es:fable-thinking v1.3)
Before acting, state what you predict each step will produce; after acting, compare. Mark claims FACT (checked), INFERENCE, ASSUMPTION. Two failed attempts on the same image → stop retrying it, keep the best file, report it as DONE_WITH_CONCERNS with the exact wrong text.
Generate images ONE AT A TIME, sequentially: never run image generations or image subagents in parallel (the image quota is shared and was exhausted earlier today). If generate_image returns 429 QUOTA_EXHAUSTED, wait the stated reset delay once, then retry; if it fails again, stop and report BLOCKED with the reset time.
Do not ask questions and do not stop to confirm. Do not edit markdown/HTML, do not run git, do not install software.
Write the report to /Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1711/report-w2.md before your final message; the final message repeats the Status line only. Report per image: file names, short prompt, retries, exact label text read; then ASSUMPTIONS; then the exact commands for criteria 1–3 with their pasted output; then
`Status: DONE | DONE_WITH_CONCERNS | BLOCKED`
`Summary: ...`
`Concerns/Blockers: ...`
