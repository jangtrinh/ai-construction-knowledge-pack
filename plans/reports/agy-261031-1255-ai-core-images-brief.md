# Brief — Antigravity image worker: CC1 AI core (chapter VII) visuals

## 1. Task
Generate 4 new 16:9 field-style images for the CC1 digital-construction dossier, chapter "PHẦN VII — Lõi vận hành AI" and the plan B rollout.
Each image comes in TWO versions: Clean (no text, no HUD) and HUD (same camera/composition + short Vietnamese HUD chips).
Use your built-in `generate_image` tool. Make the HUD version by EDITING the Clean image (same scene, same camera), not by generating a new scene.

## 2. Files to read first
- /Users/jangtrinh/Products/cc1/ART-DIRECTION.md — sections 1–5 (CC1 uniforms, colours, Vietnamese text rules, Track A meta-prompt 5.1). Follow it exactly.
- /Users/jangtrinh/Products/cc1/CHAPTER_AI_CORE_OPERATING_PLATFORM.md — sections VII.3, VII.5, VII.6, VII.11 (what each image shows).
- Style references (look at them): /Users/jangtrinh/Products/cc1/39a_GD_Tuyen_L6_QA_Lu_Thong_Minh_Nhiet_May_Rai_Clean.jpg, /Users/jangtrinh/Products/cc1/39b_GD_Tuyen_L6_QA_Lu_Thong_Minh_Nhiet_May_Rai_HUD.jpg, /Users/jangtrinh/Products/cc1/references/ref_01_cc1_engineers_white_helmet_grey_vest.jpg.

## 3. Files you may create (nothing else; do not edit or delete any existing file)
All in /Users/jangtrinh/Products/cc1/ as JPEG, 16:9:
For each NN below: `NNa_<Slug>_Clean.jpg`, `NNb_<Slug>_HUD.jpg`, and `NN_<Slug>.jpg` (an exact copy of the HUD file — the dossier's convention).
Plus the report file in section 7.
If the tool saves PNG elsewhere, convert with `sips -s format jpeg <src> --out <dst>`.

## 4. The 4 images

Common rules (Track A, ART-DIRECTION 5.1): photorealistic 16:9 high-key documentary photography, bright daylight or bright white indoor lighting, Vietnam. CC1 engineers: light SILVER-GREY multi-pocket vests with two NEON LIME-YELLOW reflective strips and the CC1 logo; on site they wear glossy WHITE hard hats with the green-and-red CC1 logo (indoors: no hard hat, or the helmet resting on the table). Vietnamese people only. HUD: frosted-glass pills, thin cyan (#00A8E8) and emerald (#0D6A38) leader lines anchored to the subject, bold Be Vietnam Pro–style sans-serif, 100% correct Vietnamese diacritics.
Strictly avoid: dark rooms, night, cyberpunk, blue/purple neon, magenta, paragraphs of text. Paper documents, screens and monitors in the CLEAN image must show layout only (tables, stamps, bars, thumbnails) with NO legible words — slightly out of focus is fine. No real brand names of GPU or server vendors.

| NN | Slug (use exactly) | Scene (Clean) | HUD chips (exactly these 4) |
|---|---|---|---|
| 43 | `AI_Core_Cum_GPU_Trung_Tam_Du_Lieu` | Bright modern colocation data hall in Vietnam: white floor, white cold-aisle containment, daylight-balanced LED lighting (high-key, NOT dark). Two rows of server racks; one row holds 2 tall GPU server nodes (training), the other 2 nodes (inference); a small emerald CC1 asset tag on each rack door. A CC1 AI-infrastructure engineer (grey CC1 vest, no hard hat) checks a rack with a rugged tablet next to a data-centre technician. | `Cụm suy luận` · `Cụm huấn luyện` · `8 GPU/node` · `Dữ liệu ở VN` |
| 44 | `AI_Core_OCR_Doc_Ho_So_So_Hoa` | Bright CC1 site office / records room: a quantity surveyor (light-blue shirt, grey CC1 vest) feeds a stack of paper construction documents with red round stamps and signatures into a fast document scanner. A wide monitor shows the scanned page on the left and an extracted table on the right (no legible text). Behind: shelves of labelled archive boxes and binders (old project records), window with a construction site outside. | `Quét hồ sơ` · `Trích bảng` · `Khớp BOQ` · `QS xác nhận` |
| 45 | `AI_Core_Tro_Ly_Trich_Dan_Chi_Huy_Truong` | On a high-rise concrete deck with rebar and formwork, yellow tower crane behind, bright daylight: a CC1 site commander (white hard hat, grey vest) holds a rugged tablet showing a chat-style answer card with a small document thumbnail and a highlighted line (no legible text); a QS colleague (white hat) looks at the screen; workers in orange hats and royal-blue shirts tie rebar in the background. | `Trợ lý AI` · `Có trích dẫn` · `Số liệu gốc` · `Đúng dự án` |
| 46 | `AI_Core_Bo_De_Thi_Dau_Mo_Hinh` | Bright CC1 office meeting room with a glass wall and daylight: two site commanders and a QS (grey CC1 vests, white hard hats resting on the table) review printed question cards with an AI researcher (smart casual) standing at a large wall display showing a horizontal bar leaderboard of 4 anonymous models (no legible labels), one emerald bar clearly winning, other bars cyan/grey. | `Bộ đề 300+ câu` · `4 mô hình mở` · `Chấm tự động` · `Cổng G2 ≥80%` |

## 5. Acceptance criteria (each must be true; check them yourself)
1. 12 files exist: for each NN in 43–46 → `NNa_*_Clean.jpg`, `NNb_*_HUD.jpg`, `NN_*.jpg`. Command: `ls /Users/jangtrinh/Products/cc1/{43,44,45,46}*.jpg | wc -l` prints 12.
2. Every file is JPEG with aspect ratio 16:9 (±2%). Command: `for f in /Users/jangtrinh/Products/cc1/{43,44,45,46}*.jpg; do sips -g pixelWidth -g pixelHeight -g format "$f"; done`.
3. `NN_*.jpg` is byte-identical to `NNb_*_HUD.jpg`. Command: `cmp` each pair.
4. Clean files contain NO text and NO HUD overlay (CC1 logo on vests/helmets/tags is allowed).
5. HUD files show exactly the 4 listed chips, spelled exactly, with correct Vietnamese diacritics. Open each HUD image and read every chip; if any letter or diacritic is wrong, edit again (max 2 retries per image) and log it.
6. No existing file in /Users/jangtrinh/Products/cc1 was modified. Command: `find /Users/jangtrinh/Products/cc1 -maxdepth 1 -newer /Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1255-ai-core-images-brief.md -type f -name '*.jpg'` lists only the 12 new files.

## 6. Non-goals
Do not edit markdown, HTML, README or existing images. Do not run git. Do not install software. Do not create images other than the 4 specified.

## 7. Delegation preamble (es:fable-thinking v1.3)
Before acting, state what you predict each step will produce; after acting, compare. Mark claims FACT (checked), INFERENCE, or ASSUMPTION. A surprise means re-think, not patch. Two failed attempts on the same image → stop retrying that image and report it as FAILED with the reason.

Do not ask questions and do not stop to confirm. If something is not answered here, choose the reading the brief most directly supports, state it under ASSUMPTIONS, and continue.
Write the report to /Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1255-ai-core-images-report.md before your final message; the final message repeats the Status line only.
Your "done" is not evidence. End the report with the exact commands you ran for criteria 1, 2, 3 and 6 and their exact output, pasted, not summarized.

## 8. Pre-answered questions
- Where do files go? Repo root `/Users/jangtrinh/Products/cc1/`, names exactly as above.
- Format? JPEG, the highest resolution your tool gives at 16:9.
- If image editing for HUD is impossible? Generate the HUD image with the same prompt + HUD lines and note it under ASSUMPTIONS.
- If a chip renders wrong after 2 retries? Keep the best file, mark that image DONE_WITH_CONCERNS with the exact wrong text.
- Report format: per image: file names, prompt used (short), retries, chip check result (exact text read), then ASSUMPTIONS, then command outputs, then
  `Status: DONE | DONE_WITH_CONCERNS | BLOCKED | NEEDS_CONTEXT`
  `Summary: ...`
  `Concerns/Blockers: ...`
