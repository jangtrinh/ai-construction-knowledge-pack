# Audit index.html — đánh số, nội dung lệch, độ dài chữ (2026-10-30)

Phạm vi: `index.html` (2479 dòng), chỉ đọc, không sửa file nào khác.

Nguồn đối chiếu:
- `TECHNICAL_ARCHITECTURE_TOUCHPOINTS.md` (viết tắt TECH)
- `CHAPTER_OPEN_LINEAR_SITES_HIGHWAY_BRIDGE.md` (CHAPTER)
- `README.md`, `DIGITAL-CONSTRUCTION-OS-PROPOSAL.md`, `BRAINSTORMING_AND_FULL_ARCHITECTURE.md`, `ART-DIRECTION.md`
- `plans/261029-2322-open-linear-site-pending-work/plan.md` (PLAN)
- nhãn HUD trong `video/hud/NN.json` (HUD NN)

Đã kiểm trên đĩa:
- Mọi `src`, `href`, `poster` và đường dẫn `hud` trong CATALOG đều trỏ tới file có thật (0 file thiếu).
- Phim dài 205,3 s, khớp chú thích "3 phút 25 giây".
- `34`/`34b` và `37`/`37b` là cùng một file (`cmp`).
- Đã mở ảnh 37b và 34b để kiểm bằng mắt.

Tóm tắt:
- Lỗi nặng nhất: sân khấu đối chiếu ghép 8 điểm chạm tuyến (34–41) với bản vẽ của công trường khép kín, ví dụ L8 Cầu được ghép với "Bản vẽ 28 Robot in sàn".
- Số "28 điểm chạm" thực ra là số ảnh. Nguồn chỉ có 16 điểm chạm khép kín + 8 tuyến = 24.
- Có 9 con số trên trang lệch nguồn hoặc lệch HUD.
- Trang dùng song song 3 hệ đánh số.

---

## 1. Đánh số

| Dòng | Trích hiện tại | Vấn đề | Sửa |
|---|---|---|---|
| 2387 (CATALOG), 2398–2406 `renderHeroStage` | `"34": {… "bp": "21"}`, 35→22, 36→27, 37→23, 38→24, 39→32, 40→26, 41→28 | **Ghép sai bản vẽ.** Bấm ảnh L1–L8 ở lưới thì sân khấu nạp bản vẽ của công trường khép kín. Ví dụ bấm 41 (L8 Node Cầu) thì tiêu đề thành "Đối chiếu 28. Bản vẽ: Robot in bản vẽ BIM lên sàn"; bấm 35 (L2 Giấy phép mặt trận) thì nạp "22 Cổng PPE". Nút phóng to bên phải (`openHeroStageLightbox('right')`) sai theo. Thực tế chưa có bản vẽ nào cho tuyến: file 42 chưa gen (PLAN A1). | Đặt `bp: null` cho 34–41. Trong `renderHeroStage`: nếu không có `bp` thì ẩn ô phải hoặc hiện "Chưa có bản vẽ cho điểm chạm tuyến", và bỏ phần "· Đối chiếu …" khỏi tiêu đề. |
| 1037–1038 | "Bấm vào bất kỳ điểm chạm nào… để đối chiếu… với Bản vẽ kỹ thuật Isometric" | Câu hứa có bản vẽ cho mọi điểm chạm. Sai với 8/28 ảnh. | Viết lại (xem mục 3, ví dụ 1). |
| 7, 890, 1033 (comment), 1035 aria, 1036, 1038, 1067 (comment), 1069, 1072 aria | "28 điểm chạm" | Đây là số **ảnh hiện trường** (20 + 8), không phải số điểm chạm. TECH chỉ định nghĩa 16 điểm chạm khép kín (1.1–1.5, 2.1–2.4, 3.1–3.5, 4.1–4.2; bảng TECH:584–586, và TECH:592 ghi "ma trận áp dụng 16 touchpoint"). Riêng 1.5 có 5 ảnh (05–09). Tổng thật là 16 + 8 = 24 điểm chạm, 28 ảnh. | Khi nói điểm chạm: "24 điểm chạm". Khi nói ảnh: "28 ảnh hiện trường". |
| 1038 | "(20 điểm chạm nền tảng + 8 điểm chạm công trường tuyến)" | 20 là số ảnh 01–20. Ảnh 09 là "Phụ lục bác bỏ", không phải điểm chạm. (CHAPTER:11 cũng ghi "20 checkpoint", nên chính nguồn đang lệch với TECH.) | "(16 điểm chạm công trường khép kín + 8 điểm chạm tuyến)" |
| 920 | "8 Điểm chạm L1–L8" | CHAPTER định nghĩa **L1–L12** (L9–L12 là an ninh tuyến; ảnh 43–46 chưa gen, PLAN A3). Trang không nói còn 4 điểm chạm nữa. | "8 điểm chạm L1–L8 (L9–L12 an ninh tuyến: đang bổ sung)", hoặc giữ nguyên nếu chủ dự án muốn ẩn phần chưa xong (cần quyết). |
| 1745 | "Chuyên đề đặc biệt · Định danh không gian 3D…" | **Lỗ trong dãy số:** 1.1 → 1.4 → (không số) → 2.1. Nguồn đặt tên là **Điểm chạm 1.5** (TECH:207, TECH:584, CHAPTER VI.5 "vector dáng đi (TP1.5)"), và tên file bản vẽ 26 cũng là `TP1_5`. | "Giai đoạn 1 · Điểm chạm 1.5 (chuyên đề ReID)" |
| 1462–1472 | Hàng "Nền tảng hạ tầng" ghép ảnh 09 với bản vẽ 21; `data-cat="reid"` | Ảnh 09 là phụ lục của 1.5 (tên file `GD1_ReID_Phu_Luc`) nhưng nằm ở hàng hạ tầng, đứng trước 01–08. Bộ lọc "Hạ tầng & ReID" gộp hai chủ đề khác nhau. | Giữ cặp 09↔21 nếu muốn, nhưng gắn nhãn "1.5 · Phụ lục" cho 09. Hoặc chuyển 09 vào hàng 1.5 và để 21 đứng một mình. |
| 2249–2252 vs 2387 | Hàng chứa ảnh 18 có `data-cat="v2030"`; CATALOG `"18": {"cat": "gd3"}` | Ảnh 18 là điểm chạm 3.5, thuộc Giai đoạn 3. Bấm lọc "Giai đoạn 3" thì 3.5 biến mất; bấm "Tầm nhìn 2030" thì 3.5 lại hiện ra. | Tách 18 thành hàng `gd3`, hoặc đổi tên bộ lọc thành "GĐ3 (3.5) & 2030". |
| 1044 vs 2401 | Tiêu đề tĩnh "Đối chiếu Bản vẽ 22"; JS dựng "Đối chiếu 22. Bản vẽ: Cổng kiểm soát…" | Hai định dạng khác nhau trước và sau lần bấm đầu tiên. | Dùng chung một định dạng. |
| 1053, 2402 | "Phối cảnh hiện trường · Điểm chạm 01" (JS: "Điểm chạm ${tp.id}") | Đang dùng số ảnh làm mã điểm chạm, nên mới có "Điểm chạm 34", "Điểm chạm 07"… Trong khi hàng đối chiếu bên dưới dùng mã "Điểm chạm 1.1 / L1". | Dùng mã điểm chạm (mục 4). |
| 1248, 1271, … (41 khối `unit-title`), 1250…, 1254… | "Phối cảnh thực địa · **Mã 34**" + "**34.** Tuyến **L1**:" + "Phóng to **34**" + aria "Phóng to hình **34**" | Mỗi khối lặp số 3–4 lần, và mỗi điểm chạm tuyến có 2 mã (34 và L1). | Chỉ để một mã hiển thị. Bỏ "Mã NN" ở `unit-role`. Nút chỉ ghi "Phóng to". |
| 927–962, 1076–1211, 2387 `short` | "**34.** Tuyến L1: …", "**05.** ReID Tầng 1: …" | Chú thích lấy số file làm số thứ tự. Trang hiện 34–41 **trước** 01, nên người xem thấy dãy số đi ngược. | Đổi sang mã điểm chạm (L1…, 1.1…, 1.5·T1…). |
| 1220 (h2), 1222, 1245/1268… (`aria-label` "Cột trái/phải") | "Thực địa (Trái) và Bản vẽ kỹ thuật (Phải)" | **Sai ở 6/17 hàng** (đã kiểm DOM): 4 hàng tuyến có cả 2 cột là ảnh hiện trường; hàng sbs-05 có cột phải = 07 (hiện trường), 26 (bản vẽ), 08 (hiện trường); hàng sbs-12 có cột phải = 20 (hiện trường), 33. Trên màn hình hẹp (CSS dòng 850) lưới gập thành 1 cột, nên "Trái/Phải" mất nghĩa. | Bỏ "(Trái)/(Phải)" khỏi tiêu đề. Nhãn vai trò của từng ảnh ("Hiện trường"/"Bản vẽ") đã đủ. |
| 2432–2436 `stepLightbox` | Bước theo số 01→41 | Thứ tự xem trước/sau khác thứ tự trên trang (trang đi 34–41 → 09/21 → 01…), và nhảy cả sang bản vẽ không liên quan. | Bước theo thứ tự `.visual-unit` trong DOM. |
| 2387 | Nhóm `cat` gồm `gd1/reid/gd2/gd3/v2030/blueprint/linear` | Nhóm "blueprint" không có nút lọc. Ảnh 05–09 vừa là `reid` vừa là GĐ1. | Không bắt buộc sửa. Chỉ cần thống nhất khi đổi sang mã điểm chạm. |
| 1238…2249 `id="sbs-L12"…"sbs-12"` | sbs-05 chứa 05–08; sbs-06 chứa ảnh 10 (2.1) | ID nội bộ không khớp số ảnh hay mã điểm chạm. Không hiện ra màn hình. | Mức thấp. Đổi thành `sbs-1-1`, `sbs-L1-L2`… khi áp lược đồ mới. |
| 889–891 | "1. Mở & Khép kín · 2. 28 Điểm chạm · 3. Đối chiếu Bản vẽ" | Số "28" sai như đã nêu. Các số "1./2./3." trên thanh điều hướng không xuất hiện ở tiêu đề phần nào. | "Mô hình · Toàn cảnh · Đối chiếu" (bỏ số), hoặc giữ 1/2/3 nhưng sửa "28". |
| 6, 2356 | "Bộ 41 Phối cảnh và Bản vẽ Kỹ thuật" | 41 = 28 ảnh hiện trường + 13 bản vẽ: đúng. Chú ý 41 cũng là số của file cuối, dễ đọc nhầm thành "41 điểm chạm". | Giữ, hoặc ghi rõ "28 ảnh hiện trường · 13 bản vẽ". |
| 9 | og: "28 phối cảnh hiện trường + 13 bản vẽ" | Đúng số ảnh. | Giữ. |
| 1046, 1227 | "Cuộn xuống 17 hàng", "Tất cả 17 hàng (41 hình)" | Đúng: đã đếm được 17 `sbs-band` và 41 `visual-unit`. | Giữ. |

## 2. Nội dung sai lệch / chưa cập nhật

### 2a. Con số lệch nguồn hoặc lệch HUD

| Dòng | Trích hiện tại | Vấn đề (nguồn) | Sửa |
|---|---|---|---|
| 1927, 1950, 2387 (chip 11) | "nhanh gấp 8 lần" | TECH:585, README:188, BRAINSTORMING:30 ghi "5–10 lần"; HUD 11 ghi "gấp 10 lần". Số 8 không có ở nguồn nào. | "gấp 5–10 lần" |
| 1410, 1456, 2387 (chip 41) | "đốt dầm (0.3mm)", "Sai số đốt dầm 0.3mm" | HUD 41 ghi "< 0.8 mm". CHAPTER chỉ nói "1 phần mm". Số 0,3 không có nguồn. | "< 0,8 mm" (UNVERIFIED: số này chỉ có trên HUD, không có nguồn tài liệu) |
| 1466 | "Xử lý tại biên dưới 10ms" | Đọc nhầm. Số `< 10ms` trong TECH:247 và BRAINSTORMING:162 là **độ lệch đồng bộ giờ PTP**, không phải thời gian xử lý. Thời gian xử lý: HUD 21 ghi "< 50ms", HUD 09 ghi "< 100ms"; TECH:66 ghi so khớp 5.000 khuôn mặt "< 50ms". | "Phản hồi tại biên < 50 ms" |
| 1601, 2387 (chip 02) | "Cảnh báo < 1s" | TECH:93 ghi cảnh báo "< 2 giây" (sau bộ lọc 3 giây). | "Cảnh báo < 2 s" |
| 1489, 2387 (chip 09) | "Avatar tĩnh: Lỗi 45%" | Không có trong tài liệu nào. HUD 09 chỉ ghi "che khuất 60%". | UNVERIFIED: bỏ, hoặc đổi thành "Che khuất 60%: avatar tĩnh thất bại" |
| 1713, 2387 (chip 04) | "Biển số 99.4%" | Không có trong tài liệu nào; HUD 04 chỉ ghi "0.2s". | UNVERIFIED: bỏ, hoặc thay bằng "Đọc biển số 0,2 s" |
| 2118, 2387 (chip 14) | "Ca đêm 22:00" | Nguồn tự mâu thuẫn: TECH:390 và HUD 14 ghi **20:00**; HUD 31 và ART-DIRECTION:140 ghi 22:00. | Chủ dự án chọn một giờ (đề xuất 20:00 theo TECH), rồi sửa ảnh còn lại. |
| 1690 vs ảnh 04 | "tuổi bê tông tươi dưới 90 phút" | Trang khớp TECH:160 (> 90 phút thì giữ barrier). Ảnh HUD 04 lại ghi "42/120 PHÚT". Ảnh lệch, không phải trang. | Giữ chữ trên trang; ghi lỗi để sửa ảnh 04. |
| 970, 1298, 1344 | "còi hú và vòng đeo tay rung cho công nhân trong 6 giây", "Phản ứng <= 6 giây" | Đọc nhầm. CHAPTER L4: **6 giây là thời gian phản ứng mục tiêu của công nhân** (Oregon DOT). Còi và đèn tự kích hoạt < 0,5 s (HUD 37). | "Báo tại chỗ < 0,5 s, công nhân có ≤ 6 s để rời vùng" |
| 2174 | "Xe lu tự hành gắn radar 77GHz xuyên bụi đo độ chặt nền K98" | Gán sai chức năng. Radar 77GHz dùng để nhận diện vật cản và phanh khẩn (TECH:456, HUD 16 "phanh khẩn cấp 0.1s"). Độ chặt đo bằng cảm biến độ cứng nền (HUD 16). | "Xe lu tự hành: radar 77 GHz phanh khẩn, cảm biến nền đạt K98" |
| 2141, 2387 (chip 15) | "Năng suất gấp đôi" | Nguồn tự lệch: TECH:586 và DIGITAL-CONSTRUCTION-OS-PROPOSAL:145 ghi "tăng 200%" (tức gấp 3); HUD 15 và ART-DIRECTION ghi "gấp 2". | Chủ dự án chọn một con số. |

### 2b. Mục còn tồn (PLAN) hoặc chưa xác minh nhưng trang ghi như sự thật

| Dòng | Trích hiện tại | Vấn đề | Sửa |
|---|---|---|---|
| 926, 1175, 1256, 2387 (`hud` 34) | Ảnh `34b_…_HUD.jpg` | **Đã mở ảnh để kiểm:** biển vẫn có chữ tiếng Anh "4 LANES TO 2", xe trắng vẫn có logo VinFast. PLAN A2 chưa xong; theo PLAN F v2, chỉ bản Clean dùng cho phim đã được sửa ("Deck stills 34/34b still show the English sign"). | Sửa 34b (và bản sao 34) giống cách đã sửa 34a, hoặc tạo lại HUD từ 34a mới. |
| 941, 1335 (ảnh 37b) | — | PLAN A2 báo lỗi "Còi + đènlen". **Đã kiểm ảnh: nay ghi đúng "CÒI + ĐÈN CHỚP 110 dB".** | Đã xong; đánh dấu trong PLAN. |
| 921 | "Áp dụng cho: Cầu Cát Lái · Cầu Long Hưng · Vành đai 3 · Cao tốc Dầu Giây đi Tân Phú (60 km) · Hậu Giang đi Cà Mau (24 cầu)" | Cát Lái, Long Hưng, Hậu Giang–Cà Mau (12 km + 24 cầu) có nguồn [F] ở CHAPTER:119. **Dầu Giây–Tân Phú** chỉ là tuyến demo; vai trò của doanh nghiệp trên tuyến này chưa rõ (PLAN C9). **Vành đai 3** chỉ xuất hiện trong ART-DIRECTION như bối cảnh vẽ hình. | UNVERIFIED: đổi thành "Ví dụ áp dụng" và bỏ 2 tên chưa xác minh, hoặc đợi doanh nghiệp xác nhận. |
| 977 | "Nhà ga T3 Tân Sơn Nhất · Sân bay Long Thành · Bệnh viện Đa khoa · Tổ hợp Cao tầng…" | Chỉ có trong ART-DIRECTION:22/84 (gợi ý bối cảnh vẽ), không có tài liệu nào xác nhận đây là dự án doanh nghiệp. | UNVERIFIED: đổi thành "Loại công trình: nhà ga, sân bay, bệnh viện, cao tầng, nhà máy" |
| 1024, 1528–1545, 1745–1862 | Face ID, vector dáng đi, chip UWB ghi như mặc nhiên triển khai được | CHAPTER VI.5 và PLAN C12: phải rà soát pháp lý theo NĐ 356/2025 trước khi triển khai, chỉ theo dõi trong ca, có đồng ý bằng văn bản; trên tuyến thì dùng QR/NFC thay Face ID. Trang không có câu nào về điều kiện này (grep "356" = 0). | Thêm 1 dòng ở Mô hình B: "Sinh trắc học triển khai sau rà soát NĐ 356/2025; chỉ trong ca; có đồng ý bằng văn bản." |
| 970, 1298 | Cảnh báo xâm nhập L4 ghi như giải pháp đã có hiệu quả | CHAPTER L4: "chưa có số giảm tai nạn đáng tin; nhiều DOT bỏ vì báo giả" và bắt buộc ghi log báo giả 3 tháng đầu. | Thêm "thí điểm 3 tháng có ghi log báo giả". |
| 1456 | "Rút ngắn 5 ngày căng cáp" | CHAPTER L8: "Idaho: rút 5–10 ngày **[V]**", tức số do nhà cung cấp tự công bố. | "Rút 5–10 ngày (số nhà cung cấp)" |
| 1400, 1354 | "Độ chặt nền K98" (L6) | CHAPTER L6: dữ liệu lu thông minh chỉ để **sàng lọc**; nghiệm thu vẫn dùng khoan lõi hoặc đo trực tiếp. (Riêng HUD 39 ghi "K98 (94.6%)", tự mâu thuẫn; đây là lỗi ảnh.) | "Sàng lọc độ chặt K98" |
| 1288 | "Chạy Offline 100%" | CHAPTER L2 chỉ ghi "offline-first; đối soát sau". | "Chạy khi mất sóng" |
| 1815 | "Chống tráo mũ 100%" | Tuyệt đối hóa. Chỉ có câu tóm tắt ROI ở TECH:584 ("Triệt tiêu 100%"), không có số đo. | "Phát hiện tráo mũ" |
| 1023 | "kiểm soát tuyệt đối quân số" | Tuyệt đối hóa. | "kiểm soát người và xe tại cổng" |
| 1578 | "Tận dụng 100% camera CCTV hiện hữu" | DIGITAL-CONSTRUCTION-OS-PROPOSAL:24 chỉ ghi "tận dụng camera hiện hữu", không có "100%". | "Dùng camera sẵn có" |
| 969 | "Cân LiDAR một lần tại mỏ → Phát phiếu eTicket" | CHAPTER L3 và HUD 36 ghi cân tại nguồn, tức trạm trộn hoặc mỏ. Chính tả lệch: "eTicket" ở đây, "e-Ticket" ở mọi chỗ khác. | "Cân một lần tại nguồn (trạm trộn/mỏ) → phiếu điện tử" |
| 967 | "Cấu trúc không gian (L1, L5, L8)" | L1 là tổ chức giao thông (TTM), không thuộc cấu trúc không gian; nên xếp cùng nhóm với L4. | "(L5, L8)", chuyển L1 sang dòng "Bảo vệ làn xe (L1, L4)" |
| 2359–2362 | Liên kết chân trang tới `./README.md`, `./CHAPTER_…md`… | Các file có trên đĩa. Chưa kiểm GitHub Pages hiển thị `.md` ra sao (bản thô hay Jekyll). | UNVERIFIED: mở thử trên Pages. |
| README.md:5 | "28 điểm chạm hiện trường… 13 Bản vẽ… 41 hình" | Ngoài phạm vi trang, nhưng lặp lại cùng lỗi "28 điểm chạm". | Sửa cùng đợt. |

Các mục khác trong PLAN, đã kiểm: số 277 triệu, QCVN 18:2021, Liên Khương **không xuất hiện** trên trang (grep = 0), nên không có gì để sửa.

### 2c. Quy ước viết số

- Trang dùng dấu chấm thập phân (1.5, 18.4, 24.5, 0.3), nhưng lại viết "1.000 lần" với dấu chấm là dấu nghìn (1466, 1489). Hai cách lẫn nhau, nên "1.000" có thể bị đọc thành 1,0.
- Ảnh HUD dùng dấu chấm và không đổi được.
- Cần chủ dự án chọn: (a) giữ dấu chấm thập phân và viết "1000 lần", hoặc (b) chuẩn tiếng Việt "1,5 / 1.000" và chấp nhận lệch với chữ trong ảnh.
- Đơn vị: "m3" (1871) nên viết "m³". "<=" (1344) nên viết "≤". "1.5s" và "1.5 giây" đang dùng lẫn nhau.

## 3. Chữ dài, lặp ý, chữ "AI flop"

**Đếm được:**
- 42 khối vượt ngưỡng (tiêu đề > 12 từ, đoạn > 22 từ; đếm bằng script): 17 dòng tóm tắt hàng (25–31 từ), 8 dòng ledger (30–36 từ), 3 đoạn dẫn (36–45 từ), 2 dòng "Áp dụng cho", title và meta, cùng các tiêu đề h2/h3.
- Thêm 17 tiêu đề hàng (nhãn giai đoạn + câu tiêu đề ≈ 20–30 từ).
- Tổng ≈ **59 khối**.
- Ngoài ra có 41 nhãn lặp "Phối cảnh thực địa · Mã NN" / "Bản vẽ kỹ thuật Isometric · Mã NN" và 41 nút "Phóng to NN".

**Lỗi cấu trúc chính:** mỗi hàng nói cùng một ý 3–4 lần. Ví dụ hàng 1.1:
- tiêu đề 1521 "Cổng… chấm công khuôn mặt… PPE"
- tóm tắt 1522 "Mở cổng trong 1.5 giây · khóa nếu thiếu mũ…"
- chip ảnh 1545 "Mở cổng 1.5s · Face ID + PPE · Khóa khi thiếu mũ"
- chip bản vẽ 1568 "1. Quy trình 1.5s…"

Ledger ở Mô hình A/B (967–970, 1023–1026) lại chép đúng các dòng tóm tắt hàng (1242, 1298, 1746). Đề xuất:
- giữ **tiêu đề ngắn + 1 dòng chip** cho mỗi hàng;
- bỏ dòng `sbs-band-summary`, hoặc bỏ chip ảnh;
- ledger rút còn 1 dòng cho mỗi nhóm.

**Trộn tiếng Anh khi đã có từ tiếng Việt:**
- "Side by Side" (1046, 1220) → đối chiếu song song.
- "Isometric" (1038, 1059, 1222, 13 nhãn bản vẽ) → bản vẽ trục đo.
- Lặp nghĩa: "Cổng thông minh Smart Gate" (1689), "khung xương trợ lực Exoskeleton" (1146, 2133), "Khung xương Exoskeleton" (2095), "Phiếu điện tử e-Ticket" (936…), "đồ bảo hộ PPE" (983, 1044…).
- "Gantry" (1870) → khung cổng.
- "Checklist" (1265) → danh mục kiểm.
- "Offline" (1288).
- "Site Backbone" (1465, 1495) → hạ tầng nền.
- "QA lu thông minh" (952…) → kiểm định lu thông minh.
- "Corridor và Node" (920): giữ được vì đây là tên mô hình trong CHAPTER, nhưng nên ghi "Nút + Hành lang (Node + Corridor)" một lần.

**Lời quảng cáo, tuyệt đối hóa:**
- "Xóa sổ ghi tay bảo vệ" (1690)
- "Giải bài toán Face ID = 0%" (1745)
- "Chạy Offline 100%" (1288)
- "Chống tráo mũ 100%" (1815)
- "kiểm soát tuyệt đối" (1023)
- "Tận dụng 100%" (1578)
- "hoàn toàn" (1151, 2180)

### 10 khối tệ nhất, kèm câu viết lại (đã dùng số đúng)

| # | Dòng | Hiện tại (rút gọn) | Viết lại (≤ 1 câu) |
|---|---|---|---|
| 1 | 1038 | "Bấm vào bất kỳ điểm chạm nào trong 28 hình bên dưới (20 điểm chạm nền tảng + 8…) để đối chiếu tức thời Phối cảnh hiện trường (Bên trái) song song với Bản vẽ kỹ thuật Isometric (Bên phải)." (45 từ) | Bấm một ảnh để xem cạnh bản vẽ kỹ thuật; 16 điểm chạm khép kín có bản vẽ, 8 điểm chạm tuyến L1–L8 chưa có. |
| 2 | 1222 | "Mỗi hàng đặt song song hình ảnh vận hành thực tế ngoài công trường bên cạnh bản vẽ bóc tách Isometric giải thích quy trình 4 bước, thuật toán AI, thiết bị BOM và hạ tầng." (36 từ) | Mỗi hàng gồm ảnh hiện trường và, với công trường khép kín, bản vẽ trục đo: quy trình 4 bước, thuật toán, thiết bị, hạ tầng. |
| 3 | 913 | "Đặt cạnh nhau hai mô hình tổ chức công trường đặc thù của doanh nghiệp: Dự án hạ tầng giao thông trải dài hàng chục kilômét và dự án dân dụng, nhà ga, công nghiệp có tường rào khép kín." (39 từ) | Hai mô hình công trường của doanh nghiệp: tuyến giao thông dài hàng chục km và công trường có tường rào. |
| 4 | 1220 | "Đối chiếu trực quan Side by Side: Thực địa (Trái) và Bản vẽ kỹ thuật (Phải)" | Đối chiếu ảnh hiện trường và bản vẽ kỹ thuật |
| 5 | 1745–1746 | "Chuyên đề đặc biệt · Định danh không gian 3D Spatial ReID và chip mũ UWB / Giải bài toán Face ID = 0% ngoài công trường…" + tóm tắt 27 từ | 1.5 · Định danh 3D (ReID) khi không thấy mặt: khung xương 3D tại cổng (1,5 s), dáng đi liên camera, chip mũ UWB 8 g. |
| 6 | 1689–1690 | "Cổng thông minh Smart Gate AI OCR đọc biển số xe bồn, soi thùng xe và rửa lốp / Xóa sổ ghi tay bảo vệ · Kiểm soát tuổi bê tông tươi dưới 90 phút · …" | 1.4 · Cổng xe: đọc biển số, giữ barrier nếu bê tông xuất trạm quá 90 phút, soi thùng và rửa lốp khi ra. |
| 7 | 970 | "Bảo vệ làn xe đang khai thác (L4): Camera AI và Radar di động quét ngược dòng xe 250m, kích hoạt còi hú và vòng đeo tay rung cho công nhân trong 6 giây." (34 từ, sai nghĩa 6 s) | L1, L4 · Làn đang khai thác: camera AI và radar nhìn ngược dòng 250 m, còi và vòng tay rung báo tại chỗ < 0,5 s để công nhân rời vùng trong 6 s. |
| 8 | 1466 | "Xử lý tại biên dưới 10ms · Hoạt động độc lập khi đứt cáp quang · Nhẹ hơn 1.000 lần so với quét 3D Avatar tĩnh" | Máy chủ biên phản hồi < 50 ms, chạy khi đứt cáp quang; dữ liệu khung xương 4 KB/người. |
| 9 | 1927 | "Máy toàn đạc tự động khóa tia laser 50Hz dẫn đường cho robot in vách tường, hốc cửa và lỗ mở cơ điện nhanh gấp 8 lần búng mực tay" | Máy toàn đạc khóa laser 50 Hz dẫn robot in tường, cửa, lỗ mở cơ điện, nhanh gấp 5–10 lần búng mực. |
| 10 | 6–7 | `<title>` 21 từ + meta 50 từ "Bản trình chiếu trực quan dành cho Chủ tịch và Ban lãnh đạo… Toàn cảnh 28 điểm chạm và đối chiếu Side by Side với 13 Bản vẽ kỹ thuật Isometric." | Title: "doanh nghiệp · Công trường số: 24 điểm chạm, 13 bản vẽ". Meta: "Giải pháp công trường số cho công trường tuyến (L1–L8) và khép kín: 28 ảnh hiện trường, 13 bản vẽ kỹ thuật." |

Ngoài 10 khối trên, nên làm theo cùng mẫu:
- 1578 → "Dùng camera sẵn có; lọc báo giả 3 s; truyền 5 GHz từ đỉnh cẩu tháp."
- 1023 → "Quản lý theo tầng, phân khu, mã cấu kiện BIM; kiểm soát người và xe tại cổng."
- 2174 (xem mục 2a).

## 4. Đề xuất một lược đồ đánh số duy nhất

**Đề xuất: mã điểm chạm là số hiển thị duy nhất. Số ảnh NN chỉ dùng làm khóa kỹ thuật, ẩn khỏi người xem.**

Lược đồ:
- Công trường khép kín: `1.1–1.5 · 2.1–2.4 · 3.1–3.5 · 4.1–4.2`.
- Công trường tuyến: `L1–L8` (sau này L9–L12).
- Các ảnh con của 1.5: `1.5 · Tầng 1`, `1.5 · Tầng 2`, `1.5 · Tầng 3`, `1.5 · Quy trình`, `1.5 · Phụ lục` (tương ứng 05–09).
- Bản vẽ gọi theo điểm chạm mà nó minh họa: `Bản vẽ 1.1` … `Bản vẽ 3.1–3.2`, `Bản vẽ 3.5–4.2`. Riêng 21 là `Bản vẽ hạ tầng nền`.
- Số đếm dùng: "24 điểm chạm (16 khép kín + 8 tuyến) · 28 ảnh hiện trường · 13 bản vẽ".

Vì sao (đã kiểm từng ràng buộc):
1. **Khớp mọi tài liệu nguồn.** TECH, CHAPTER, BRAINSTORMING và DIGITAL-CONSTRUCTION-OS-PROPOSAL đều đánh số 1.1…4.2 và L1–L12. Không tài liệu nào gọi một điểm chạm là "34".
2. **Khớp tên file sẵn có.** Tên ảnh hiện trường đã mã hóa vị trí: `GD1_CP1` = 1.1, `GD3_CP5` = 3.5, `Vision2030_CP1` = 4.1, `GD_Tuyen_L1` = L1. Tên bản vẽ có mã TP: `TP1_1`, `TP1_5`, `TP3_1_3_2`. Như vậy không phải đổi tên file nào.
3. **NN không diễn đạt được cấu trúc thật:** 1.5 trải trên 5 ảnh (05–09); bản vẽ 31, 32, 33 mỗi bản phủ 2–3 điểm chạm. Mã điểm chạm thì diễn đạt được.
4. **NN phải giữ làm khóa.** Tên file, `video/hud/NN.json`, phim và CATALOG đều dựa vào NN. File 42–46 (bản vẽ tuyến, L9–L12) sẽ nối tiếp NN mà không phá mã hiển thị.
5. **Hết dãy số đi ngược** (34 trước 01) và hết cảnh một ảnh mang 2 mã ("34. Tuyến L1").

Sửa tối thiểu (ước ~1–1,5 giờ nếu sửa tay; ~30 phút nếu viết script sinh lại các khối lặp):
1. **CATALOG (2387):**
   - thêm trường `code` ("1.1", "1.5 · Tầng 1", "L1", "Bản vẽ 1.1"…);
   - đổi `short` thành `code + tên`, bỏ "NN.";
   - `bp: null` cho 34–41;
   - `cat` của 18 phải khớp với hàng chứa nó.
2. **JS:**
   - `renderHeroStage` (2401–2403): dùng `tp.code`; khi không có `bp` thì ẩn ô phải;
   - `stepLightbox` (2432): bước theo thứ tự DOM.
   - Sửa tiêu đề tĩnh 1044 và nhãn 1053/1059 theo đúng định dạng JS.
3. **Chú thích ảnh:** thay `<strong class="num-inline">NN.</strong>` bằng mã. Gồm 16 chú thích mosaic (927–1018), 28 ô lưới (1076–1211) và alt tương ứng.
4. **41 `unit-title` trong phần đối chiếu:**
   - `unit-role` chỉ còn "Hiện trường" hoặc "Bản vẽ" (bỏ "Mã NN");
   - tiêu đề bỏ "NN.", dùng mã;
   - nút "Phóng to NN" thành "Phóng to".
5. **Nhãn hàng:** 1745 thành "Giai đoạn 1 · Điểm chạm 1.5"; nhãn ảnh 09 thành "1.5 · Phụ lục". Bỏ "(Trái)/(Phải)" ở 1220.
6. **Số đếm:** đổi "28 điểm chạm" thành "24 điểm chạm" hoặc "28 ảnh" theo đúng nghĩa ở các dòng 7, 890, 1035, 1036, 1038, 1069, 1072, và README:5. "20 điểm chạm nền tảng" thành "16 điểm chạm khép kín".

---

## Câu hỏi còn mở (cần chủ dự án quyết)
1. Ca đêm robot tuần tra: 20:00 (TECH, HUD 14) hay 22:00 (HUD 31, ART-DIRECTION)?
2. Năng suất khung trợ lực: "gấp 2" hay "tăng 200%"?
3. Nguồn cho "99.4%" (biển số) và "Lỗi 45%" (avatar): bỏ hay có nguồn?
4. Danh sách dự án "Áp dụng cho": Vành đai 3, Dầu Giây–Tân Phú, T3, Long Thành, bệnh viện có phải dự án doanh nghiệp không (PLAN C9)?
5. Quy ước số: dấu chấm thập phân (giống HUD) hay chuẩn tiếng Việt "1,5 / 1.000"?
6. L1–L8 không có bản vẽ: ẩn ô bản vẽ, hay chờ gen file 42 (Node + Corridor) trước khi công bố?
7. Có ghi rõ trên trang rằng L9–L12 còn thiếu không?

Status: DONE
Summary: Đã audit index.html. Lỗi nặng nhất: CATALOG ghép 34–41 với bản vẽ công trường khép kín. Số "28 điểm chạm" thực ra là số ảnh (đúng là 24 điểm chạm). 9 con số lệch nguồn hoặc HUD. Ảnh 34b vẽ chưa sửa. Đề xuất lấy mã điểm chạm (1.1…4.2, L1…) làm số hiển thị, NN làm khóa ẩn.
