# Brief — Antigravity image worker w1: CC1 AI core deep set (47–54)

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
| 47 | blueprint | `AI_Core_Blueprint_Cum_GPU_TTDL` | GPU infrastructure. Zone 1 (process, 4 mini tiles): rented domestic GPU cloud for the first 3 months → a gate barrier marked G2 → ordering 2 training nodes → 24/7 operation. Zone 2 (data flow): internal data store → rented domestic GPU → internal inference cluster, inside a Vietnam-map outline shield (data stays in Vietnam). Zone 3 (hardware, 3D CAD): 2 GPU server nodes with 8 GPUs each (inference), 2 taller 8-GPU nodes (training), a storage array, a high-speed network switch. Zone 4 (infrastructure): rented colocation hall with racks, UPS, fibre line, encrypted link to a small construction-site icon. | `Cụm suy luận` · `Cụm huấn luyện` · `Sau cổng G2` · `Lưu trữ` · `Mạng nhanh` · `Dữ liệu ở VN` |
| 48 | scene | `AI_Core_GPU_B1_Nhan_May_Lap_Tu` | Bright data-centre loading bay and hall: opened shipping crates of heavy GPU servers; a CC1 AI-infrastructure engineer (grey CC1 vest, no hard hat) and two data-centre technicians slide an 8-GPU server into a white rack using a server lift. | `Nhận máy` · `Lắp vào tủ` · `Đúng cấu hình` |
| 49 | scene | `AI_Core_GPU_B2_Chay_Kiem_Thu` | Bright glass-walled operations room next to the data hall: a CC1 AI engineer at a workstation; the monitor shows two almost identical descending curves overlapping (abstract chart, no text); through the glass, white racks. | `Chạy kiểm thử` · `Khớp GPU thuê` · `Nghiệm thu cụm` |
| 50 | scene | `AI_Core_GPU_B3_Giam_Sat_Van_Hanh` | Bright operations room at CC1 headquarters: a wall display with abstract tiles of GPU load (emerald/cyan/amber squares) and a latency line (no text); two CC1 engineers, one pointing at an amber tile. | `Giám sát 24/7` · `Tải GPU` · `Độ trễ` · `Cảnh báo lỗi` |
| 51 | blueprint | `AI_Core_Blueprint_Tro_Ly_Trich_Dan` | AI assistant with citations. Zone 1 (4 steps): a spoken question on a rugged tablet → a permission lock check → a magnifier over stacked documents (retrieval) → an answer card with a document thumbnail (citation). Zone 2 (AI flow): keyword index + vector index merging into a reranker, then a language-model chip. Zone 3 (hardware): rugged tablet, smartphone with chat app, inference server. Zone 4 (data): document store, ontology graph (nodes and links), ERP database cylinder. | `1. Câu hỏi` · `2. Đúng quyền` · `3. Truy xuất` · `4. Có trích dẫn` · `Truy vấn ERP` · `Cụm suy luận` |
| 52 | scene | `AI_Core_Tro_Ly_B1_Hoi_Giong_Noi` | On a building site (concrete frame, yellow tower crane, bright day): a CC1 site commander (white hard hat, grey vest) speaks into a rugged tablet held near his mouth; the screen shows a simple sound-wave bar (no text). | `Hỏi giọng nói` · `Tiếng Việt` · `Không cần gõ` |
| 53 | scene | `AI_Core_Tro_Ly_B2_Doc_Nguon_Trich_Dan` | Over-the-shoulder close-up of a rugged tablet held by a CC1 engineer on a rebar deck: left half an answer card, right half a scanned stamped document page with one highlighted band (layout only, no legible text); site blurred behind. | `Câu trả lời` · `Tài liệu gốc` · `Đoạn trích` |
| 54 | scene | `AI_Core_Tro_Ly_B3_So_Lieu_Tu_ERP` | CC1 site office: a quantity surveyor (light-blue shirt, grey CC1 vest) with laptop and tablet; the tablet shows a small table with one highlighted row linked by a dotted line to a database icon (no legible text). | `Truy vấn ERP` · `Số liệu gốc` · `Không đoán số` |

## 6. Acceptance criteria (check them yourself)
1. 24 files exist. Command: `ls /Users/jangtrinh/Products/cc1/{47,48,49,50,51,52,53,54}_*.jpg /Users/jangtrinh/Products/cc1/{47,48,49,50,51,52,53,54}[ab]_*.jpg | wc -l` prints 24.
2. Every file is JPEG 16:9 (±2%): `for f in /Users/jangtrinh/Products/cc1/{47,48,49,50,51,52,53,54}*_AI_Core_*.jpg; do sips -g pixelWidth -g pixelHeight -g format "$f"; done`.
3. `NN_*.jpg` is byte-identical to `NNb_*_HUD.jpg` (`cmp` each pair).
4. Clean files contain NO labels and NO HUD; no legible words on screens or paper in either version.
5. HUD files show exactly the listed labels with correct diacritics. Open each HUD image and read every label; if any letter or diacritic is wrong, edit again (max 2 retries per image) and log it.
6. No existing file was modified.

## 7. Delegation preamble (es:fable-thinking v1.3)
Before acting, state what you predict each step will produce; after acting, compare. Mark claims FACT (checked), INFERENCE, ASSUMPTION. Two failed attempts on the same image → stop retrying it, keep the best file, report it as DONE_WITH_CONCERNS with the exact wrong text.
Do not ask questions and do not stop to confirm. Do not edit markdown/HTML, do not run git, do not install software.
Write the report to /Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1346/report-w1.md before your final message; the final message repeats the Status line only. Report per image: file names, short prompt, retries, exact label text read; then ASSUMPTIONS; then the exact commands for criteria 1–3 with their pasted output; then
`Status: DONE | DONE_WITH_CONCERNS | BLOCKED`
`Summary: ...`
`Concerns/Blockers: ...`
