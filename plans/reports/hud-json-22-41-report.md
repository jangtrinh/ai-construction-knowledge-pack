# HUD JSON 22-41 report

Files: /Users/jangtrinh/Products/cc1/video/hud/22.json ... 41.json (20 files, all parse, canvas 1376x768 for all, hudStart 3.3, duration 6).
Verification: parse loop passes; anchors/boxes overlaid on each HUD image (scratchpad only) and spot-checked on 23, 31, 34, 38.

## Per scene
| NN | labels | text corrections | uncertain anchors |
|----|--------|------------------|-------------------|
| 22 | 9 | none | label 2 anchor on gate (no leader); "1."/"2."/"3."/"4." section anchors approximate |
| 23 | 9 | none | label 1 (section header, no leader), label 3 |
| 24 | 7 | none | label 4 (container), label 5 (header anchor on tripod) |
| 25 | 9 | none | headers 1/4 and last chip have no leader |
| 26 | 9 | none | label 1, label 6/7 anchors approximate |
| 27 | 9 | none | headers 1/3/4 anchors approximate |
| 28 | 9 | none | label 2 leader ends under chip; label 8 anchor on instrument |
| 29 | 9 | none | all anchors approximate (card-style illustrations) |
| 30 | 9 | none | all anchors approximate (card-style illustrations) |
| 31 | 9 | none | panels sit on photos, anchors on subject centre |
| 32 | 8 | none | anchors approximate |
| 33 | 8 | none | anchors approximate |
| 34 | 6 | none | label 1 leader runs ~700 px (anchor at its far end, 823,534) |
| 35 | 6 | none | label 1 leader ends in translucent road overlay (405,300) |
| 36 | 6 | none | ring is a wide ellipse in the image (rx~445, ry~65); ring r=330 chosen because player uses ry=0.32r |
| 37 | 6 | none (see note) | none |
| 38 | 6 | none | none |
| 39 | 6 | none | none |
| 40 | 6 | none | none |
| 41 | 6 | none | none |

## Notes
- Scene 37 typo "Còi + đènlen": NOT present in 37b HUD image. Zoomed crop reads "BÁO ĐỘNG TẠI CHỖ: CÒI + ĐÈN CHỚP 110 dB"; written as printed.
- Scenes 22-33 (blueprint/card style) contain 10-20 text blocks (titles, section headers, chips, captions). Capped at 9 per instruction: kept section headers and callout chips, dropped the top title banner and secondary captions/step chips. Dropped items are visible printed text, not invented.
- Wrapped lines are kept as printed (e.g. scene 29 "...ĐẦU" / "CA", scene 30 "...XUẤT" / "PHIẾU LỖI", scene 33 "...CHUYỂN" / "KHOẢN"). If the SVG renderer wraps by width, join them.
- Numbered badge icons (circled 1/2/A/B) are not text and are omitted.
- Brackets added: 34 (cone boxes), 35 (phone scan), 36 (plate), 37 (car boxes), 40 (worker box). Ring added: 36, 39.
- Labels with no leader (blueprint headers) have anchor placed on the described object.

Status: DONE_WITH_CONCERNS
