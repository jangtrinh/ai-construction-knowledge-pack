# Brief — Antigravity image worker: CC1 open linear site (L1–L8) visuals

## 1. Task
Generate 9 new 16:9 images for the CC1 digital-construction dossier, chapter "PHẦN VI — Công trường tuyến" (highway / bridge / road sites):
- 8 field scenes (Track A), one per touchpoint L1–L8, each in TWO versions: Clean (no text, no HUD) and HUD (same camera/composition + short Vietnamese HUD chips).
- 1 technical blueprint (Track B) summarising the NODE + CORRIDOR model.

Use your built-in `generate_image` tool. Make the HUD version by EDITING the Clean image (same scene, same camera), not by generating a new scene.

## 2. Files to read first
- /Users/jangtrinh/Products/cc1/ART-DIRECTION.md — sections 2–5 (colours, CC1 uniforms, Vietnamese text rules, Track A and Track B meta-prompts). Follow it exactly.
- /Users/jangtrinh/Products/cc1/CHAPTER_OPEN_LINEAR_SITES_HIGHWAY_BRIDGE.md — what each touchpoint L1–L8 does.
- Style references (look at them): /Users/jangtrinh/Products/cc1/01a_GD1_CP1_Cong_Kiem_Soat_AI_PPE_Clean.jpg, /Users/jangtrinh/Products/cc1/01b_GD1_CP1_Cong_Kiem_Soat_AI_PPE_HUD.jpg, /Users/jangtrinh/Products/cc1/21_Blueprint_00_Ha_Tang_Nen_Tang_CC1_Site_Backbone.jpg, /Users/jangtrinh/Products/cc1/references/ref_04_cc1_highway_overpass_pier_sany_crane.jpg, /Users/jangtrinh/Products/cc1/references/ref_01_cc1_engineers_white_helmet_grey_vest.jpg.

## 3. Files you may create (nothing else; do not edit or delete any existing file)
All in /Users/jangtrinh/Products/cc1/ as JPEG, 16:9:
For each scene NN below: `NNa_<Slug>_Clean.jpg`, `NNb_<Slug>_HUD.jpg`, and `NN_<Slug>.jpg` (an exact copy of the HUD file — this is the dossier's convention).
For 42: `42a_<Slug>_Clean.jpg` (no labels), `42b_<Slug>_HUD.jpg` (with labels), `42_<Slug>.jpg` (copy of HUD).
Plus the report file in section 8.
If the tool saves PNG elsewhere, convert with `sips -s format jpeg <src> --out <dst>`.

## 4. The 9 images

Common scene rules (Track A, from ART-DIRECTION 5.1): photorealistic 16:9 high-key documentary photography, bright tropical daylight, Vietnam expressway construction. CC1 engineers: glossy WHITE hard hats with green-and-red CC1 logo, light SILVER-GREY multi-pocket vests with two NEON LIME-YELLOW reflective strips. Workers: ORANGE/YELLOW hard hats, ROYAL BLUE long-sleeve shirts with reflective strips. Machinery yellow/red SANY or white trucks with emerald-green CC1 banners (#0D6A38). HUD: frosted-glass pills, thin cyan (#00A8E8) and emerald (#0D6A38) leader lines, bold Be Vietnam Pro–style sans-serif, 100% correct Vietnamese diacritics. NO night/cyberpunk, NO purple/magenta, NO paragraphs.

| NN | Slug (use exactly) | Scene (Clean) | HUD chips (exactly these, ≤4) |
|---|---|---|---|
| 34 | `GD_Tuyen_L1_TTM_So_Kiem_Tra_To_Chuc_Giao_Thong` | Expressway widening lane closure (4 lanes narrowing to 2) with live cars passing; orange traffic cones, arrow-board trailer with flashing amber, steel barrier; CC1 engineer with rugged tablet photographing each sign and barrier | `TTM số` · `QCVN 41:2024` · `Đủ biển báo` · `Km 12+400` |
| 35 | `GD_Tuyen_L2_Giay_Phep_Mat_Tran_So_Chi_Huy_Ca` | Morning shift briefing on a long expressway embankment; site commander (white hat) scans a worker's QR ID card with a tablet; crew of 10 workers in a line; chainage marker post "Km 8+200" visible; the embankment stretches to the horizon | `Giấy phép số` · `Km 8+200→9+000` · `12/12 có mặt` · `Chỉ huy ca` |
| 36 | `GD_Tuyen_L3_E_Ticket_Geofence_Diem_Do` | White asphalt dump truck with CC1 banner reversing to a paver on a new expressway section; a CC1 engineer at the roadside (not on the live lane) confirms on a phone; faint circular geofence ring on the ground | `Phiếu điện tử` · `Vùng đổ` · `18.4 tấn` · `Khớp phiếu` |
| 37 | `GD_Tuyen_L4_Canh_Bao_Xam_Nhap_Cuoi_Hang_Cho` | Truck-mounted crash attenuator with a small AI camera and amber strobe at the start of a lane taper, cars approaching from upstream; one car drifting toward the cones; worker in the closure wearing a wristband, looking up alerted | `Camera AI` · `Xe lấn làn` · `Còi + đèn` · `250m` |
| 38 | `GD_Tuyen_L5_Xuong_Song_Ly_Trinh_Tien_Do` | High aerial drone view of a long expressway corridor under construction through farmland and forest, different segments at different layers (earth, base, asphalt), some segments idle; a CC1 engineer in the foreground holding a tablet showing a time–chainage chart | `Lý trình Km` · `Đủ mặt bằng` · `Không có máy` · `Lớp móng` |
| 39 | `GD_Tuyen_L6_QA_Lu_Thong_Minh_Nhiet_May_Rai` | Asphalt paving train: paver with a thermal sensor bar at the rear, intelligent-compaction roller behind it, pickup truck with roof-mounted mobile LiDAR scanner on the finished lane | `Lu thông minh` · `Nhiệt 145°C` · `Điểm yếu` · `LiDAR xe` |
| 40 | `GD_Tuyen_L7_Man_Down_Nguoi_Lam_Don_Doc` | Single worker on a steep mountain-pass cut slope (green forested hills, Lâm Đồng highlands style) inspecting drainage; small GNSS tag clipped on the vest shoulder; distant solar-powered 4G mast | `Thẻ GNSS` · `Bất động 180s` · `Báo trung tâm` · `SOS` |
| 41 | `GD_Tuyen_L8_Node_Cau_So_Dot_Dam_Maturity` | Precast segment casting yard next to a river bridge: a concrete box-girder segment in its mould, surveyor with total station measuring it; in front, a pier pour with a wired concrete-maturity sensor and an engineer reading strength on a phone | `Đốt dầm đúc` · `Sai số 0.3mm` · `Cảm biến BT` · `Đạt cường độ` |

Image 42 — Track B blueprint (follow ART-DIRECTION 5.2 meta-prompt exactly: 35° isometric exploded view, mint-white studio background #F4F7F5, frosted borosilicate glass modules on brushed aluminium base, emerald/cyan/amber accents):
- Slug: `Blueprint_GD_Tuyen_Mo_Hinh_Node_Corridor`
- Zone 1: small closed NODE miniatures (precast yard, batching plant, workers' camp, bridge pier pad) each with a mini gate.
- Zone 2: a long open CORRIDOR strip of expressway with chainage ticks and one moving work-front section highlighted.
- Zone 3: hardware: rugged tablet, GNSS tag, solar AI-camera trailer, intelligent-compaction roller.
- Zone 4: infrastructure: 4G dual-SIM router, Starlink dish, national RTK base-station icon, cloud sync arrow.
- Labels (exactly these 6, HUD version only): `NODE kín` · `Hành lang mở` · `Giấy phép số` · `Lý trình Km` · `4G + Starlink` · `Trạm RTK`.

## 5. Acceptance criteria (each must be true; check them yourself)
1. 27 files exist: for each NN in 34–42 → `NNa_*_Clean.jpg`, `NNb_*_HUD.jpg`, `NN_*.jpg`. Command: `ls /Users/jangtrinh/Products/cc1/{34,35,36,37,38,39,40,41,42}*.jpg | wc -l` prints 27.
2. Every file is JPEG with aspect ratio 16:9 (±2%). Command: `for f in /Users/jangtrinh/Products/cc1/{34,35,36,37,38,39,40,41,42}*.jpg; do sips -g pixelWidth -g pixelHeight -g format "$f"; done`.
3. `NN_*.jpg` is byte-identical to `NNb_*_HUD.jpg`. Command: `cmp` each pair.
4. Clean files contain NO text and NO HUD overlay (CC1 logo on helmets/banners is allowed).
5. HUD files show exactly the listed chips, spelled exactly, with correct Vietnamese diacritics. Open each HUD image and read every chip; if any letter or diacritic is wrong, regenerate/edit (max 2 retries per image) and log it.
6. No existing file in /Users/jangtrinh/Products/cc1 was modified. Command: `find /Users/jangtrinh/Products/cc1 -maxdepth 1 -newer /Users/jangtrinh/Products/cc1/plans/reports/agy-261029-2225-open-site-images-brief.md -type f` lists only the new files and your report.

## 6. Non-goals
Do not edit markdown files, README, the chapter, or existing images. Do not commit (this is not a git repo). Do not install software. Do not create images other than the 9 specified.

## 7. Delegation preamble (es:fable-thinking v1.3)
Load the skill es:fable-thinking if your runtime lists it; otherwise operate from this preamble alone. Before acting, state what you predict each step will produce; after acting, compare. Mark claims FACT (checked), INFERENCE, or ASSUMPTION. A surprise means re-think, not patch. Two failed attempts on the same image → stop retrying that image and report it as FAILED with the reason.

Do not ask questions and do not stop to confirm. Every question you might ask is answered below; if one is not, choose the reading the brief most directly supports, state it under ASSUMPTIONS, and continue.
Write the report to /Users/jangtrinh/Products/cc1/plans/reports/agy-261029-2225-open-site-images-report.md before your final message; the final message repeats the Status line only.
Your "done" is not evidence. End the report with the exact commands you ran for criteria 1, 2, 3 and 6 and their exact output, pasted, not summarized.

## 8. Pre-answered questions
- Where do files go? Repo root `/Users/jangtrinh/Products/cc1/`, names exactly as above.
- Format? JPEG. Resolution: the highest your tool gives at 16:9.
- If image editing for HUD is impossible? Generate the HUD image with the same prompt + HUD lines and note it under ASSUMPTIONS.
- If a chip renders wrong after 2 retries? Keep the best file, mark that image DONE_WITH_CONCERNS with the exact wrong text.
- Commit/push? No.
- Report format: per image: file names, prompt used (short), retries, chip check result (exact text read), then ASSUMPTIONS, then command outputs, then
  `Status: DONE | DONE_WITH_CONCERNS | BLOCKED | NEEDS_CONTEXT`
  `Summary: ...`
  `Concerns/Blockers: ...`
