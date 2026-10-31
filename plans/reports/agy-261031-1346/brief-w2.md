# Brief — Antigravity image worker w2: CC1 AI core deep set (55–63)

## 1. Task
Generate 9 new 16:9 images for the CC1 digital-construction dossier, chapter "PHẦN VII — Lõi vận hành AI". Each image comes in TWO versions: Clean (no text, no HUD/labels) and HUD (same camera/composition + the short Vietnamese labels listed). Use your built-in `generate_image` tool. Make the HUD version by EDITING the Clean image, not by generating a new scene.
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
| 55 | blueprint | `AI_Core_Blueprint_OCR_So_Hoa` | Document OCR and digitisation. Zone 1 (4 steps): scan → sort by form type → extract fields and tables → QS review. Zone 2 (AI flow): layout/table model and handwriting model feeding a confidence gate that splits into a straight-through path and a human-review path. Zone 3 (hardware): high-speed document scanner, overhead book scanner, QS workstation with two monitors. Zone 4 (data): object storage, ontology graph, BOQ spreadsheet tile, ERP cylinder. | `1. Quét` · `2. Phân loại` · `3. Trích bảng` · `4. QS duyệt` · `Khớp BOQ` · `Hồ sơ cũ` |
| 56 | scene | `AI_Core_OCR_B1_Phan_Loai_Mau` | Close view of a wide monitor in a bright CC1 records room: scanned page thumbnails grouped into 4 coloured stacks (layout only); a QS hand on the mouse; stacks of stamped paper beside it. | `Phân loại mẫu` · `Biên bản` · `Phiếu nhập kho` · `Nhật ký` |
| 57 | scene | `AI_Core_OCR_B2_Trich_Truong_Bang` | Monitor close-up: a scanned acceptance record with coloured boxes around fields, a red round stamp, signatures and a table region, next to an extracted grid (layout only, no legible words). | `Khung trường` · `Dấu đỏ` · `Chữ viết tay` · `Trích bảng` |
| 58 | scene | `AI_Core_OCR_B3_QS_Duyet_Do_Tin_Thap` | A QS (grey CC1 vest) compares the paper original in one hand with amber-highlighted cells on the screen and corrects one cell with the keyboard. | `Độ tin thấp` · `QS sửa` · `Lưu để học` |
| 59 | scene | `AI_Core_OCR_B4_So_Hoa_Ho_So_Cu` | Bright archive warehouse with rows of shelves of old project boxes with barcode labels; a staff member in a grey CC1 vest at an overhead book scanner digitises a thick bound project dossier. | `Hồ sơ cũ` · `Mã thùng` · `Quét sách` · `Hoàn công` |
| 60 | blueprint | `AI_Core_Blueprint_Bo_De_Thi_Dau` | Golden question set and model bake-off. Zone 1 (4 steps): question cards coming from white hard hats → answer key with check mark and document → 4 model cubes running → a podium choosing one model. Zone 2: 4 groups of question cards in 4 colours. Zone 3 (hardware): rented domestic GPU cloud nodes, an automatic grader box. Zone 4: a locked, versioned question vault. | `Bộ đề ≥300 câu` · `4 nhóm câu` · `Câu bẫy` · `Chấm tự động` · `Cổng G2 ≥80%` · `Khóa bộ đề` |
| 61 | scene | `AI_Core_Bo_De_B1_Thu_Cau_Hoi_That` | CC1 site container office: a site commander (white hard hat on the desk, grey vest) writes question cards; a pin board full of cards behind him; site visible through the window. | `Câu hỏi thật` · `Chỉ huy trưởng` · `Từ công trường` |
| 62 | scene | `AI_Core_Bo_De_B2_QS_Viet_Dap_An` | A QS at a desk with a BOQ printout, drawings, a calculator and a laptop writes an answer key, marking a reference on a drawing. | `Đáp án chuẩn` · `QS xác nhận` · `Có trích dẫn` |
| 63 | scene | `AI_Core_Bo_De_B3_Chay_Tren_GPU_Thue` | Bright office: an AI researcher at a workstation; the monitor shows 4 abstract progress bars and one row flagged with a red marker (no text). | `GPU thuê` · `4 mô hình` · `Câu bẫy` · `Bịa số = loại` |

## 6. Acceptance criteria (check them yourself)
1. 27 files exist. Command: `ls /Users/jangtrinh/Products/cc1/{55,56,57,58,59,60,61,62,63}_*.jpg /Users/jangtrinh/Products/cc1/{55,56,57,58,59,60,61,62,63}[ab]_*.jpg | wc -l` prints 27.
2. Every file is JPEG 16:9 (±2%): `for f in /Users/jangtrinh/Products/cc1/{55,56,57,58,59,60,61,62,63}*_AI_Core_*.jpg; do sips -g pixelWidth -g pixelHeight -g format "$f"; done`.
3. `NN_*.jpg` is byte-identical to `NNb_*_HUD.jpg` (`cmp` each pair).
4. Clean files contain NO labels and NO HUD; no legible words on screens or paper in either version.
5. HUD files show exactly the listed labels with correct diacritics. Open each HUD image and read every label; if any letter or diacritic is wrong, edit again (max 2 retries per image) and log it.
6. No existing file was modified.

## 7. Delegation preamble (es:fable-thinking v1.3)
Before acting, state what you predict each step will produce; after acting, compare. Mark claims FACT (checked), INFERENCE, ASSUMPTION. Two failed attempts on the same image → stop retrying it, keep the best file, report it as DONE_WITH_CONCERNS with the exact wrong text.
Do not ask questions and do not stop to confirm. Do not edit markdown/HTML, do not run git, do not install software.
Write the report to /Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1346/report-w2.md before your final message; the final message repeats the Status line only. Report per image: file names, short prompt, retries, exact label text read; then ASSUMPTIONS; then the exact commands for criteria 1–3 with their pasted output; then
`Status: DONE | DONE_WITH_CONCERNS | BLOCKED`
`Summary: ...`
`Concerns/Blockers: ...`
