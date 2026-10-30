# Việc còn tồn — Chương VI Công trường tuyến (cập nhật 2026-10-29 23:22)

> Bối cảnh: chương [`CHAPTER_OPEN_LINEAR_SITES_HIGHWAY_BRIDGE.md`](../../CHAPTER_OPEN_LINEAR_SITES_HIGHWAY_BRIDGE.md) (L1–L12) đã viết xong; nghiên cứu nguồn trong `plans/reports/` (synthesis + 6 báo cáo researcher). Owner sẽ tự giao Antigravity gen thêm hình.

## Trạng thái hiện tại (đã kiểm trên đĩa)
- Worker Antigravity chạy trong Orca terminal "agy · CC1 ảnh L1–L8" (handle `term_b9b6143d-57e2-4feb-97ae-e312caf9ca90`), brief [`agy-261029-2225-open-site-images-brief.md`](../reports/agy-261029-2225-open-site-images-brief.md), log `agy-261029-2225-open-site-images.log`.
- Lúc 23:22: **22/27 file** đã có (34–40 đủ bộ; 41a). Đang làm 41b, còn 42 (blueprint). Báo cáo worker chưa ghi.

## A. Hình ảnh (owner giao Antigravity)
1. [ ] **Worker đã dừng lúc 23:27 do hết thời gian 60 phút** (`AGY_EXIT=0`, KHÔNG có báo cáo): có đủ 34–41 (24 file); **thiếu toàn bộ 42 (blueprint NODE+CORRIDOR)** → giao Antigravity làm 42 theo mục 4 của brief gốc.
2. [ ] **Sửa lỗi đã thấy** (controller đã xem):
   - `37b` (+ copy `37`): nhãn `Còi + đènlen` → phải là **`Còi + đèn`**.
   - `34a/34b/34`: biển trong cảnh có tiếng Anh `4 LANES TO 2` → chỉ tiếng Việt (vd `THU HẸP 2 LÀN`) hoặc bỏ dòng đó; xe trắng có logo **VinFast** → xóa logo thương hiệu trên xe dân.
3. [ ] **Gen hình cho L9–L12** (an ninh tuyến) — brief dán cho Antigravity ở mục D bên dưới. Số file 43–46 (+ a/b), tiếp nối quy ước 34–42.
4. [ ] **Kiểm từng ảnh HUD** (controller, không tin báo cáo worker): đọc từng nhãn, đúng dấu tiếng Việt; bản Clean không có chữ; 16:9 (±2%); `NN_*.jpg` giống hệt `NNb_*_HUD.jpg` (`cmp`).
5. [ ] **Gắn hình vào chương**: thêm ảnh HUD dưới từng L1–L12 trong CHAPTER; thêm mục 34–46 vào README (danh mục hình) và BRAINSTORMING PHẦN 5 (+ bản `.brv`).

## B. Nội dung chương
6. [ ] Kiểm lại 2 điểm chưa xác nhận: con số **~277 triệu** vụ Biên Hòa–Vũng Tàu 8/2026 (bài vietnamplus mở được nhưng chưa thấy số); **QCVN 18:2021 mục 2.1.7** (vùng sâu xa dùng biển cấm nhưng phải có người bảo vệ) — đọc nguyên văn.
7. [ ] Kiểm vùng hạn chế bay quanh **sân bay Liên Khương** cho đoạn demo; phủ sóng NB-IoT/LTE-M theo km tuyến Dầu Giây–Liên Khương.
8. [ ] (Tùy owner) Blueprint Track B riêng cho L1–L12 như bộ 21–33.

## C. Câu hỏi cần CC1 / owner trả lời
9. [ ] Vai trò CC1 trên tuyến TP.HCM–Đà Lạt (chưa tìm thấy) → demo năng lực hay pilot thật?
10. [ ] Số liệu mất mát/hao hụt nội bộ CC1 (loại, giá trị, giờ) — để thay số báo chí.
11. [ ] Nhà bảo hiểm của CC1 có giảm phí khi có tracker + VSOC + sổ đăng ký máy?
12. [ ] Rà soát pháp lý NĐ 356/2025 cho Face ID / gait / GNSS tag (điều kiện đã ghi ở VI.5).
13. [ ] BQP có cấp phép bay định kỳ cho tuần tra công trình giao thông không (quyết định số phận drone dock).

## D. Brief dán cho Antigravity — hình L9–L12 (cùng chuẩn với brief 34–42)
Đọc và làm theo y hệt `plans/reports/agy-261029-2225-open-site-images-brief.md` (ART-DIRECTION Track A, quy tắc nhãn tiếng Việt, bản Clean = không chữ, bản HUD = sửa từ Clean, file `NN_` = copy HUD, JPEG 16:9, không sửa file cũ), chỉ thay bảng hình bằng:

| NN | Slug | Cảnh (Clean) | Nhãn HUD (đúng y, ≤4) |
|---|---|---|---|
| 43 | `GD_Tuyen_L9_An_Ninh_May_Moc_Nhien_Lieu` | Bãi đỗ máy ban chiều tối (vẫn đủ sáng, không cyberpunk) cạnh nền cao tốc: máy xúc, máy lu, xe bồn dầu; kỹ sư CC1 xem điện thoại thấy máy nằm trong vùng đỗ; hộp tracker nhỏ gắn kín trong khoang máy; cảm biến trên nắp bồn dầu | `Sổ đăng ký máy` · `Tracker ẩn` · `Khóa khởi động` · `Hao hụt dầu` |
| 44 | `GD_Tuyen_L10_An_Ninh_Vat_Tu_Cap_Rao` | Đoạn cao tốc sắp hoàn thiện gần nút giao: hàng rào lưới B40, cột đèn chiếu sáng, cuộn cáp và bó thép trong kho bãi có tem mã; cảm biến nhỏ gắn trên hàng rào và hộp trụ đèn; gateway LoRa trên cột solar | `Cảm biến rung` · `Đánh dấu cáp` · `LoRa 25mW` · `Km 21+300` |
| 45 | `GD_Tuyen_L11_Nguoi_Ra_Vao_Ho_Nguy_Hiem` | Hố đào có nước cạnh nền đường và đường đất dân sinh; hố đã được rào, có biển cảnh báo tiếng Việt và đèn chớp; cột camera nhỏ nhìn lối vào; bảo vệ CC1 đang đóng lối tạm bằng dải bê tông (KHÔNG vẽ trẻ em gặp nguy hiểm) | `Sổ hố nước` · `Đã rào kín` · `Lối dân sinh` · `Còi + đèn` |
| 46 | `GD_Tuyen_L12_VSOC_Thap_Camera_Solar` | Tháp camera solar (nhiệt + thường) tại nút giao công trường; trong ô cửa sổ nhỏ góc ảnh: phòng giám sát VSOC, nhân viên xác minh cảnh báo trên màn hình bản đồ lý trình; drone nhỏ bay thấp trong tầm nhìn người điều khiển | `Tháp camera` · `Xác minh 24/7` · `Gói bằng chứng` · `Công an xã` |

Tiêu chí: 12 file mới (43–46 × 3), kiểm như mục 5 của brief gốc; ghi báo cáo `plans/reports/agy-<thời gian>-l9-l12-images-report.md`.

## E. Kênh tạo hình thay thế: Google Flow qua gflow-cli (kiểm 2026-10-29 23:30)
- `gflow-cli` 0.92.0 đã cài (`uv tool install gflow-cli --with pillow`); mọi lệnh/cờ mà `es:gflow` dùng vẫn còn. **Chưa đăng nhập** → owner chạy `gflow auth login` (đăng nhập Google bằng tay).
- Ảnh tĩnh: `gflow image t2i ... --model nano-pro` (Nano Banana Pro) — ứng viên tốt cho nhãn tiếng Việt; cần chạy thử 1 ảnh sau khi đăng nhập.

## F. Video giới thiệu proposal (owner chốt 2026-10-29 23:40)
- Mục tiêu: clip video ngắn cho **toàn bộ touchpoint** (01–46) bằng Google Flow, tài khoản `jangtrinhsg@gmail.com`; sau đó thuyết minh + nhạc bằng ElevenLabs.
- Đã đăng nhập: profile gflow `jangtrinhsg` (mặc định), số dư lúc 23:36 = **24.948 credit**.
- Chuyển cảnh Clean → HUD: **thử 1 video rồi quyết** (owner). Thử cảnh 01 (Cổng AI), `video/test-01/`: A = Veo làm chuyển động bản Clean, ghép HUD gốc bằng ffmpeg ở cuối (chữ đúng 100%); B = Veo nội suy khung đầu Clean → khung cuối HUD.
- Giọng: **nam miền Nam** (ElevenLabs). Key: owner tự lưu `ELEVENLABS_API_KEY=...` vào `~/.config/elevenlabs/.env`; không in key ra.
- Kết quả thử (23:41): A (veo-fast) camera đi xuyên cổng → khung cuối lệch HUD, ghép bị bóng chồng. B (omni-flash, khung đầu Clean + khung cuối HUD) HUD hiện dần, khung cuối khớp HUD gốc; giữa đoạn có chữ bóng/ô trống. veo-fast không nhận khung cuối (WireFormatError). Tốn tổng ~32 credit cho 3 lần chạy (còn 24.916).
- Owner: **clip ngắn, không cần 8 giây** → dùng 4–6 giây.
- Chạy ngầm: `video/tools/gflow-bg.sh <lệnh gflow>` (Chrome ngoài màn hình + trả focus cho owner).
- **Owner chốt hướng (23:48): Veo chỉ làm chuyển động (hoàn toàn không HUD) → HUD dựng bằng code.** Prototype cảnh 01 = `video/test-01/01_codeHUD_6s.mp4`:
  - Veo: omni-flash 4 giây, khung đầu = khung cuối = ảnh Clean (camera quay về đúng bố cục để neo nhãn), sau đó giữ khung cuối đến 6 giây.
  - HUD: `video/tools/render-hud-overlay.py` + `video/hud/<NN>.json` (chữ, vị trí hộp, điểm neo, khung mặt) → chuỗi PNG trong suốt, ghép bằng ffmpeg.
  - Đã thử và bỏ: ghép ảnh HUD tĩnh bằng crossfade (bóng chồng, vì Veo không giữ bố cục); tách lớp HUD theo pixel (ảnh HUD do AI vẽ lại cả nền, lệch 13% điểm ảnh).
- **Owner 23:50: "làm Veo cho tất cả, xong cái nào dựng HUD cái đó"; HUD dùng DESIGN:OS SVG animation; 23:53: "làm hết, gen thêm voice over"; nhạc = `video/audio/music-visionary-sunrise.mp3` (60 giây, owner đưa).**
- Pipeline chạy ngầm (đêm 29→30/10):
  1. `video/tools/veo-batch-clean-motion.sh 01 41` → `video/veo/NN/` (omni-flash 4 giây, khung đầu = khung cuối = Clean), log `video/veo/batch.log`.
  2. 2 agent Sonnet đọc ảnh HUD → `video/hud/NN.json` (02–21, 22–41), báo cáo ở `plans/reports/hud-json-*.md`.
  3. `video/tools/export-ready-scenes.sh` → `video/hud-player/` (SVG, seek contract DESIGN:OS) + `exportPage` của `~/Products/design-os-svg-animation` → `video/out/NN_*.mp4` (1920×1080, 60 fps, 6 giây). Server tĩnh `127.0.0.1:4105` (cổng cc1 đã đăng ký).
  4. Thuyết minh: ElevenLabs `eleven_v4`, giọng **Quang Toan – Deep Vietnamese Storyteller** (nam miền Nam, có sẵn trong workspace) → `video/vo/NN.mp3`; ~15 credit ElevenLabs/giây.
  5. `video/tools/assemble-proposal-film.py` → `video/film/cc1-proposal.mp4`: thẻ mở đầu → 01–20 → tuyến 34–41 → blueprint 21–33 → thẻ kết; nhạc lặp, tự hạ khi có giọng.
- Tiến độ 00:05 ngày 30/10:
  - **Thuyết minh xong 43/43 câu** (`video/vo/NN.mp3`, kịch bản `video/vo/script.json`, đã qua kiểm tra calque 0 lỗi). Thu theo 9 đoạn, mỗi đoạn 4–6 câu ngăn bằng `[long pause]`, rồi cắt ở khoảng lặng dài (0,84–1,6 giây, tách hẳn khỏi khoảng ngắt trong câu ≤0,51 giây). Tổng ~5.700 credit ElevenLabs.
  - HUD JSON đủ 41/41 (2 báo cáo agent ở `plans/reports/hud-json-*.md`).
  - Veo: 41/41 xong (30/10 01:05). 03 hết giờ lần 1; 21, 27 lỗi rc=7 lần 1; tất cả qua ở lần 2. Credits còn 24.598.
  - HUD: 41/41 cảnh đã xuất ra `video/out/`, đã soát bằng contact sheet (`video/film/qa/sheet_1..5.jpg`, `41.jpg`).
  - Phim: `video/film/cc1-proposal.mp4`, 6:42, 1080p60, AAC 48 kHz, -16.3 LUFS / -1.5 dBTP (loudnorm sau khi ghép). Bản xem trên điện thoại: `cc1-proposal-preview-720p.mp4`. Ảnh chứng minh: `video/film/qa/film-evidence.jpg`, `film-titles.jpg`.
  - Còn lại: cảnh 34 còn chữ tiếng Anh "4 LANES TO 2" và logo VinFast trong ảnh Clean; khung cuối đứng yên lâu với câu thuyết minh dài (tối đa khoảng 12 giây/cảnh).
- Còn làm: owner duyệt prototype → JSON nhãn cho 46 cảnh → script thuyết minh tiếng Việt theo từng touchpoint (qua kiểm tra calque) → render toàn bộ clip → voice + nhạc → dựng phim.

- 2026-10-30 v2 (owner feedback): film rebuilt — `video/film/cc1-proposal.mp4` 3:26, 1080p60, -16.0 LUFS; preview `cc1-proposal-preview-720p.mp4`; evidence `video/film/qa/film-v2-evidence.jpg`.
  - Structure: intro → PHẦN 1 Công trường khép kín (01–20) → PHẦN 2 Công trường mở (34–41) → outro. Blueprints 21–33 dropped (owner).
  - VO: script `video/vo/script.json` (1 câu/cảnh ≤ 6,7 s, linted with design-os-vietnamese: 0 issues), voice Tony Dang (Southern, MU9FiBvipGB47QbhcMfM), "CC1" spoken "C C One". Old VO in `video/vo/v1-long/`.
  - HUD: vector layer `video/hud-player/hud-vector-shapes.mjs` + `vectors` in `video/hud/NN.json` (28 scenes); brief `video/plans/vector-hud-brief.md`; per-scene compares `video/plans/reports/cmp-NN.jpg`.
  - Scene 34 Clean fixed (sign → "THU HẸP 2 LÀN", VinFast badge removed) via `video/tools/fix-scene-34-clean-still.py`; original in `video/originals/`. Deck stills 34/34b still show the English sign.

## Nguồn tham chiếu
- Synthesis: `plans/reports/research-261029-2130-open-linear-site-management-synthesis.md`
- Nghiên cứu an ninh: `plans/reports/researcher-261029-2250-remote-site-security-world-tech.md`, `plans/reports/researcher-261029-2250-remote-site-security-vietnam-context.md`
- Bằng chứng render: `plans/reports/evidence/chapter-open-linear-sites.pdf`, `plans/reports/evidence/synthesis-full.pdf`
