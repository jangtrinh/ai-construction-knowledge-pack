# Brief — Antigravity: fix 6 CC1 AI-core images (edit only)

Edit existing images in /Users/jangtrinh/Products/cc1 with your `generate_image` tool in edit mode (same scene, same camera, same people). For each NN: fix BOTH `NNa_*_Clean.jpg` and `NNb_*_HUD.jpg` (keep the HUD labels exactly as they are now, same text and positions), then `cp NNb_*_HUD.jpg NN_*.jpg` so the copy is byte-identical. Overwrite the same file names; touch no other file.

| NN | Files | Defect to fix |
|---|---|---|
| 47 | 47a/47b_AI_Core_Blueprint_Cum_GPU_TTDL | Small tile in the top-left zone shows the English word "STAGE" (and a "24/7" glyph tile). Replace those tiles with plain icon tiles without any letters (a cloud icon and a clock icon). |
| 48 | 48a/48b_AI_Core_GPU_B1_Nhan_May_Lap_Tu | Wooden crates show the printed words "AI CORE". Remove all printed text from the crates (plain wood). |
| 52 | 52a/52b_AI_Core_Tro_Ly_B1_Hoi_Giong_Noi | The logo on the white hard hat and on the vest is malformed ("C1"). Replace both with the correct CC1 logo: the letters "CC1" in emerald green #0D6A38 with the red-orange tip on the top of the "1", same as on other images (for example 45a_AI_Core_Tro_Ly_Trich_Dan_Chi_Huy_Truong_Clean.jpg). Remove the small name text on the vest. |
| 57 | 57a/57b_AI_Core_OCR_B2_Trich_Truong_Bang | The scanned document on the monitor has legible fake Vietnamese text. Make every line of text on the document illegible: soft grey placeholder lines and blocks only, keeping the coloured field boxes, the red round stamp, the signature scribbles and the table grid. |
| 63 | 63a/63b_AI_Core_Bo_De_B3_Chay_Tren_GPU_Thue | The left monitor shows the English title "Visual model benchmarking execution dashboard". Remove the title and any legible words; keep the 4 bars and the red marker. The right monitor: illegible code lines only. |
| 76 | 76a/76b_AI_Core_Tac_Tu_B3_Nhat_Ky_Kiem_Toan | The standing man's vest shows a green "X" logo. Replace it with the correct CC1 logo as above. |

Check after each edit by opening both files: defect gone, nothing else changed, HUD labels unchanged and spelled correctly. Verify `sips -g pixelWidth -g pixelHeight` (16:9) and `cmp NN_*.jpg NNb_*_HUD.jpg` (no output) for each NN.
Max 2 retries per image; if still wrong, keep the best and report the exact remaining defect. Do not ask questions, no git, no other files.
Write the report to /Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1346/report-fix.md (per image: what changed, retries, check result; pasted command outputs), ending with
`Status: DONE | DONE_WITH_CONCERNS | BLOCKED` and `Summary: ...`.
