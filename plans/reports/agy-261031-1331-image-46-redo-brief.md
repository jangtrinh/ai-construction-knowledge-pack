# Brief — redo image 46 only (CC1 AI core)

Fix two existing files in /Users/jangtrinh/Products/cc1 with your `generate_image` tool (edit mode, same scene and camera):
- 46a_AI_Core_Bo_De_Thi_Dau_Mo_Hinh_Clean.jpg
- 46b_AI_Core_Bo_De_Thi_Dau_Mo_Hinh_HUD.jpg
and then copy the new HUD file byte-for-byte to 46_AI_Core_Bo_De_Thi_Dau_Mo_Hinh.jpg (`cp`).

Defects to fix (both versions):
1. The wall display shows legible English text ("AI EVALUATION LEADERBOARD", "OPEN MODEL 1", "Top Bar 1", "Bar 2", "Bar 3", "Rank") and percentages. Replace the display content with 4 horizontal bars only, sorted longest at top to shortest at bottom: top bar emerald green #0D6A38, the other three cyan #00A8E8, light grey, light grey. NO text, NO numbers, NO labels anywhere on the display (abstract chart only).
2. The large "CC1" letters on the wall are in the wrong colours (blue/orange). Remove them: plain light wall panel.
Keep everything else identical (people, vests, white CC1 helmets on the table, room, light).
For 46b, keep exactly these 4 HUD chips and their positions: `Bộ đề 300+ câu` · `4 mô hình mở` · `Chấm tự động` · `Cổng G2 ≥80%`. Chip leader lines may point at the bars.

Read back both images after editing. Acceptance: no legible text on the display or wall in 46a or 46b; the 4 chips in 46b spelled exactly with correct diacritics; 16:9 JPEG (`sips -g pixelWidth -g pixelHeight -g format`); `cmp 46_AI_Core_Bo_De_Thi_Dau_Mo_Hinh.jpg 46b_AI_Core_Bo_De_Thi_Dau_Mo_Hinh_HUD.jpg` prints nothing.
Max 2 retries; do not touch any other file; no git. Do not ask questions.
Write a short report to /Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1331-image-46-redo-report.md (what you changed, retries, exact chip text read, the command outputs pasted), ending with
`Status: DONE | DONE_WITH_CONCERNS | BLOCKED` and `Summary: ...`.
