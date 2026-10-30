# HUD JSON 02-21 report

Files: `/Users/jangtrinh/Products/cc1/video/hud/{02..21}.json`. All parse; canvas 1376x768 for every scene (sips-checked). Anchors/boxes were checked by overlaying them on gridded copies of the HUD images (scratchpad only, no source image touched). Extra files `22.json..26.json` in that folder belong to another worker, untouched.

Global notes
- No obvious typos found in any HUD image; no text corrections made. One diacritic judgement: scene 09 "VECTƠ 3D" (image renders it close to "VECTO"; wrote the Vietnamese form with ơ).
- Wrapped lines are kept as printed (e.g. 09 "...khi công nhân cúi" / "người"; 11 "... CỬA" / "900mm)").
- Icon-only items (05 "CC1" logo tile, 18 panel corner art) not included as text.
- Not labelled (decorative floor/UI text inside the image): 11 floor-projected "VÁCH TƯỜNG DÀY 200mm", "LỖ MỞ CƠ ĐIỆN 450x450mm", "CỬA ĐI D1...", "ỐNG MEP Ø160"; 12 the in-cabin screen inner panels (only its header kept); 07 "Actual Height vs Profile Height"/"1m74" vertical text; 10 red LED "39.200 kg".
- `rings` only hold circles; elliptical rings (02 ground mesh, 14 lidar rings, 16 roller ellipse, 17 red danger ring) were skipped. Rings kept: 11 prism lock, 13 red conflict ring, 15 robot target.

Per scene (label count | brackets/rings | uncertain anchors)
- 02 | 8 | 2 brackets | "VÙNG CẤM" and "LỌC BÁO GIẢ" have no object leader: anchored on the red floor mesh (approx). "KỸ SƯ" anchored on the head (no leader).
- 03 | 8 | 2 brackets | "KỸ SƯ BIM" leader ends in empty sky; anchored on his helmet. "DRONE" leader points to dashed arc; anchored on drone body.
- 04 | 6 | 1 bracket | none.
- 05 | 6 | none | "TẠO HỒ SƠ CA" panel has no leader: anchored on gait wave (900,690), approx. "TỶ LỆ KHUNG XƯƠNG" anchored on the height bar beside the body.
- 06 | 7 | 2 brackets | "VÙNG CẤM" is plain text on the red zone (no panel): box = text position, anchor = zone centre. "NGUYỄN VĂN A" / "BÁO ĐỘNG" anchors are body points near the panel.
- 07 | 6 | 2 brackets | inset panel (CHIP UWB TRONG MŨ) anchored on the chip on the white helmet; "KHỚP ĐÚNG" and "CHIP MŨ BÁO CAO" anchors are body points (no leader).
- 08 | 7 | none | "TỔ CỐT THÉP SỐ 1" anchored on the green model on the wall screen (no leader).
- 09 | 9 | 2 brackets | Image has 11 labels; dropped to fit cap 9: "KHỚP HÔNG Z = 0.96m" and "SWITCH CÁP QUANG PoE+ & LƯU ĐIỆN UPS". Anchors of "BÁC BỎ", "VECTOR KHUNG XƯƠNG", "XỬ LÝ TẠI CHỖ" are approximate (no leader).
- 10 | 6 | none | "KIỂM TRA TỶ TRỌNG" leader ends on the left roof camera; kept as drawn.
- 11 | 6 | 1 ring | "IN TRỰC TIẾP" has no leader (anchored on floor wall-line start); "GƯƠNG PHẢN XẠ" anchored on prism centre.
- 12 | 6 | 1 bracket | Cabin inset reduced to header label; anchor on the monitor in the cab (approx). "XÓA BỎ CẮM CỌC" anchored on the standing worker.
- 13 | 6 | 1 bracket, 1 ring | "ỐNG GIÓ & MÁNG CÁP" has no leader (anchored on duct, approx). "XUẤT PHIẾU LỖI" has no leader (anchored on the tablet, approx). "KIỂM TRA LỖ MỞ" anchored on the ceiling opening at the leader far end.
- 14 | 6 | none | "MÁY QUÉT 3D" anchored on the lidar on the robot (leader ends on the HUD ring). "TỰ ĐỘNG CẬP NHẬT" has no leader (robot front, approx).
- 15 | 6 | 1 ring | "ROBOT TỰ ĐỘNG BUỘC" anchored on robot body; ring = target at the tying spot.
- 16 | 6 | none | "ĐỒNG BỘ ĐỘI HÌNH" leader ends in the horizon mesh; anchored on the dozer instead (approx).
- 17 | 7 | none | Two "LỘ TRÌNH CẨU TỰ ĐỘNG" labels exist (line breaks differ); both kept. Anchors sit on the green path curve, not a physical object. "HẠ TẢI" anchor is the leader end near the second worker.
- 18 | 6 | none | Four agent panels: leaders end on abstract nodes (central panel, screen, table); anchors follow leader far ends: UNCERTAIN as to which physical object the video should highlight. "ĐÀM PHÁN" anchored on the middle engineer's head.
- 19 | 6 | 1 bracket | "GIẢM 80% PHẾ LIỆU" has no leader (anchored on the module, approx). "1. NHẬN DỮ LIỆU" anchor is the scan source on the building.
- 20 | 6 | none | Timeline panels 17:00/17:01/17:02 anchor on the vertical timeline bar (x=942), not a physical object; "CAMERA KÍNH" anchored on the wall junction box at the leader far end.
- 21 | 9 | none | Includes the title banner as a label (no leader, anchor under it at the bridge). All anchors are the green/blue leader dots at the layer edges. Each panel is 2 lines (bold heading + subtitle).

Unresolved questions
- Should elliptical rings be supported in the schema (02, 14, 16, 17)?
- Scene 09 over cap (11 labels): confirm dropping "KHỚP HÔNG" and "SWITCH CÁP QUANG".
- Scene 18/20: confirm leader-end anchors are acceptable for abstract nodes.
