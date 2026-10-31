# Site edit 2026-10-30: numbering + concise copy

Scope: `index.html` only. Not committed. Hero film figure and its CSS byte-identical (checked). Figures untouched except the two decimal separators flagged by the lint (below).

Method: copy and data sections regenerated from one data model by a one-off script (scratchpad `build_site.py`, not in the repo). CSS change: one rule `.sbs-pair-grid.is-single` (full-width row for the single blueprint 42).

## What changed

| Section | Change |
|---|---|
| head | title `doanh nghiệp · Công trường số: 24 điểm chạm, 14 bản vẽ`; description and og tags: 24 điểm chạm, 28 ảnh hiện trường, 14 bản vẽ |
| nav | "Hai mô hình" / "24 điểm chạm" / "Đối chiếu bản vẽ" (was "1. … 2. 28 Điểm chạm 3. …") |
| Mô hình A/B | headings "8 điểm chạm L1–L8" and "16 điểm chạm"; "Áp dụng cho" generic (cao tốc, cầu, vành đai / nhà ga, dân dụng, công nghiệp); no project names left; ledgers 4 lines each, shorter; node/corridor defined once ("nút (node)", "hành lang (corridor)"); L1 moved to the L4 line (audit 86) |
| mosaic + 28-thumb grid | captions use touchpoint codes: 1.1…4.2, `1.5 (Tầng 1/2/3, Quy trình, Phụ lục)`, L1…L8. No image numbers |
| stage | static and JS use one format: `Đang chọn: L1 · … · đối chiếu Bản vẽ tuyến (L1–L8)`; left label `Hiện trường · Điểm chạm L1`; right label = blueprint code. 34–41 now load blueprint 42 (was 21/22/27/… wrong pairings) |
| 18 rows | role label `Hiện trường` / `Kỹ thuật`; blueprint titles `Bản vẽ 1.1` … `Bản vẽ 3.1–3.2`, `Bản vẽ 3.3–3.4`, `Bản vẽ 3.5, 4.1–4.2`, `Bản vẽ nền tảng`, `Bản vẽ tuyến (L1–L8)`; "(Trái)/(Phải)", "Side by Side", "Isometric", "Mã NN", "Phóng to NN" removed; zoom buttons keep a distinct aria-label; new row `sbs-l-ban-ve` pairs nothing, shows blueprint 42 alone (18 rows, 42 figures) |
| filters | "Tất cả (18 hàng)", "Tuyến L1–L8", "Nền tảng và ReID 1.5", "Giai đoạn 1: 1.1–1.4", …, "3.5–4.2: Site OS, hợp đồng số"; image 18 now filtered with its row (cat v2030) |
| JS | `CATALOG` gets `code`; `bp:"42"` for 34–41; entry `42` added ("Bản vẽ tuyến (L1–L8): mô hình NODE + Hành lang"); `stepLightbox` follows DOM order of visible rows (was numeric 01→41 loop) |
| footer | "28 ảnh hiện trường, 14 bản vẽ" |

Counts shown: 24 điểm chạm (16 + 8), 28 ảnh hiện trường, 14 bản vẽ (13 + 42), 18 rows. Image numbers 01–42 survive only in file names, `id="item-NN"`, `data-id`, `pair-for-NN`, `openLightboxById('NN')`, CATALOG keys.

## Before / after

| Where | Before | After |
|---|---|---|
| lead | "Bấm vào bất kỳ điểm chạm nào trong 28 hình bên dưới (20 điểm chạm nền tảng + 8 …) để đối chiếu tức thời Phối cảnh hiện trường (Bên trái) song song với Bản vẽ kỹ thuật Isometric (Bên phải)." (45 từ) | "Bấm một ảnh để xem cạnh bản vẽ của nó. Gồm 16 điểm chạm khép kín (1.1–4.2) và 8 điểm chạm tuyến (L1–L8)." |
| h2 | "Đối chiếu trực quan Side by Side: Thực địa (Trái) và Bản vẽ kỹ thuật (Phải)" | "Đối chiếu ảnh hiện trường và bản vẽ kỹ thuật" |
| row 1.4 title | "Cổng thông minh Smart Gate AI OCR đọc biển số xe bồn, soi thùng xe và rửa lốp" | "Cổng xe AI đọc biển số, soi thùng, rửa lốp" |
| row 1.4 summary | "Xóa sổ ghi tay bảo vệ · Kiểm soát tuổi bê tông tươi dưới 90 phút · Camera đỉnh soi thùng xe rỗng khi rời công trường" | "Thay sổ ghi tay; kiểm soát tuổi bê tông tươi dưới 90 phút; camera đỉnh soi thùng xe rỗng khi ra." |
| row 1.5 title | "Giải bài toán Face ID = 0% ngoài công trường khi công nhân bịt mặt hoặc nhìn từ Drone 50m" | "Định danh 3D (ReID) khi không thấy mặt" + summary keeps "Face ID = 0%" |
| image caption | "34. Tuyến L1: TTM số và kiểm tra tổ chức giao thông" + label "Phối cảnh thực địa · Mã 34" + "Phóng to 34" | "L1 · TTM số, kiểm tra tổ chức giao thông" + "Hiện trường" + "Phóng to" |
| blueprint | "22. Bản vẽ: Cổng kiểm soát AI và bảo hộ PPE", chips "1. Quy trình 1.5s" … | "Bản vẽ 1.1", chips "Quy trình mở cổng", "AI khuôn mặt", … |
| chips | "Không nhận phiếu trên làn xe", "Geofence Km 8+200 – 9+000" (5-6 từ) | all <= 4 syllables (about 3 words); long facts moved into the row sentence |
| Áp dụng cho | "Cầu Cát Lái · Cầu Long Hưng · Vành đai 3 · Cao tốc Dầu Giây đi Tân Phú (60 km) · Hậu Giang đi Cà Mau (24 cầu)" | "cao tốc, cầu, vành đai" |

Visible text: 19 829 B / 3 488 words -> 13 776 B / 2 313 words (-31% bytes, -34% words). File: 164 109 B -> 160 720 B (markup and SVG dominate the file).

## Verification

```
js ok                                    # node new Function over every <script>
49 local refs; missing: []               # src/href/poster + CATALOG hud
42_...Corridor.jpg                       exists, not referenced by page
42a_...Corridor_Clean.jpg                exists, not referenced by page
42b_...Corridor_HUD.jpg                  exists, referenced (stage, lightbox, row)
```
(The page only ever references the `b_HUD` file of each image; 42 and 42a exist on disk because the controller created them.)

Image numbers in visible text (`\b(0[1-9]|[1-3][0-9]|4[0-2])\.`): one hit, `Cân 18.4 tấn`, a decimal figure (decision 2), not an image number. Same regex with `(\s|$)` after the dot: none. `Bản vẽ [0-9][0-9]`: none. `Mã NN`, `Phóng to NN`, Isometric, Side by Side, Checklist, Gantry, Exoskeleton, Backbone, project names (Vành đai 3, Dầu Giây, Tân Phú, Hậu Giang, Cà Mau, Cát Lái, Long Hưng, T3, Long Thành, Tân Sơn Nhất, bệnh viện): none.

Vietnamese lint (`validate_copy.py --domain vietnamese-real-estate-construction,tech --register press`, text in scratchpad `site-text.md`): first run 2 errors NUM003 (`99.4%`, `24.5 m³`), fixed to `99,4%` and `24,5 m³`; final: `0 error(s) · 1 warning(s)`. The warning is LAW001 on "một tập đoàn xây dựng Việt Nam (bối cảnh giả định)", the company's legal name, not a claim.

Figures: every number token of the old visible text still exists in the new text except `60` (removed with the "Dầu Giây–Tân Phú (60 km)" project line, decision 3) and `99.4`/`24.5` (now `99,4`/`24,5`, same value). 28 other tokens (1, 3, 145, 250, K98, 85, …) appear fewer times because duplicates across title, summary and chip were merged; each still appears at least once.

Behaviour (browser at 127.0.0.1:4105, server stopped after): selecting L1 gives stage title "Đang chọn: L1 · TTM số, kiểm tra tổ chức giao thông · đối chiếu Bản vẽ tuyến (L1–L8)", right pane = 42b; lightbox stepping 41 -> 42 -> 09 -> back 41; 33 +1 wraps to 34; filter gd2 steps 10 -> 27 -> 11 -> 28 -> 12; 18 rows visible after "all". Screenshots seen in the Browser pane: modes + mosaic, stage with L1 + blueprint 42, 42 row, 1.5 row.

Responsive 375/768/874/971 checks: SKIPPED (owner default).

## Not changed on purpose (decision 2) and open for the owner

- All audit-flagged figures kept: "nhanh gấp 8 lần", "0.3mm", "dưới 10ms", "< 1s", "99,4%", "45%", "22:00", "gấp đôi", "6 giây", radar 77GHz on the road roller, "100%" (ngoại tuyến, camera, chống tráo), "K98", "5 ngày".
- Decimal separator: only the two values the lint flagged use a comma; the rest still use a dot (1.5s, 1.5mm, 18.4 tấn, 0.3mm), matching the HUD images. Needs one global choice (audit open question 5).
- Blueprint 42 chips ("Nút (node)", "Hành lang (corridor)", "Lý trình Km+m") were written from the CHAPTER model and match the labels in the generated image (NODE kín, Hành lang mở, Lý trình Km).
- 34b/34 image still shows English sign and logo (audit 2b); image fix, not page copy.
- Biometric legal note (NĐ 356/2025) and L4 pilot-log note not added: new claims, not requested.

Status: DONE_WITH_CONCERNS
Summary: Numbering is touchpoint codes everywhere (1.1–4.2, L1–L8, Bản vẽ x.y, nền tảng, tuyến), counts true (24/28/14, 18 rows), blueprint 42 wired into CATALOG, stage and a new row, real project names removed, copy cut ~31%, all figures kept; JS, links and lint pass.
Concerns/Blockers: decimal separator mixed (comma in 2 values, dot elsewhere) pending owner choice; LAW001 warning on the company name "Số 1" is a false positive; remaining unverified figures from the audit are intentionally untouched.
