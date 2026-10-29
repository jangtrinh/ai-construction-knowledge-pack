# Hand-over — knowledge pack "Ứng dụng AI vào ngành xây dựng" (2026-10-29)

```text
PACK: ai-nganh-xay-dung   RUN: ai-xay-dung-261029
APPROVAL: owner duyệt ontology.proposal.yaml qua AskUserQuestion 2026-10-29 ("Duyệt đề xuất": 6 tài liệu +
  entity_kind; thân bài tiếng Việt; case study toàn cầu + Việt Nam). Ghi trong ontology.proposal.yaml + plan.md.
VALIDATE: exit 0 — "ok" / "gate: STOP_SUFFICIENT - All hard gates satisfied, semantic saturation reached
  (<=2% across >=3 rounds), independent review passed." (chạy sau lần sửa cuối)
LOOK: exit 0, sheet plans/261029-ai-xay-dung-knowledge-pack/review/look-sheet-final.png
  L1 ok: sheet PNG width 1440, 163523 bytes | L2 ok: sheet objects 226 vs index.json entries 226
  L3 ok: index cites reach 92 claims vs status claims - uncited = 92 | L4 ok: 0 external reference(s)
  L5–L8 (controller đọc PNG): chữ/số rõ, không cắt; 6 docs/92 claims/109 sources/19 entities khớp pack status;
  19 entity mỗi cái ≥2 tài liệu; banner STOP_SUFFICIENT + warnings none khớp validate và gate.
GATE: STOP_SUFFICIENT — certificate: verified_claims 5/5, independent_sources 89, saturation_rounds 5,
  last_delta 0.016, independent_review true. K gate exit 0; pack check exit 0; verify --claims exit 0
  (files 226, anchors 229, failures 0).
REVIEW: reviewer_runtime "grok-4.7 (grok-run ask --lean)" vs researcher_runtime "claude-code".
  passed true, 0 blocking, 8 non-blocking; C1–C6 pass; 229/229 anchors entailment, 18 claims quote-checked.
LIMITS:
  - review.json do controller (runtime Claude) lưu NGUYÊN VĂN khối JSON của Grok, vì Grok ask-mode không ghi file
    (owner chọn phương án này 2026-10-29). Output gốc: review/grok-review-output.txt + review/grok-ask-*.json.
    Hash pack trước/sau review trùng 350/350 file.
  - Sau review, controller áp 4/8 finding non-blocking đúng text Grok gợi ý (thêm "có thể" ×3, sửa câu alert
    fatigue, thì FECON ×2, cỡ mẫu BRG) — chỉ làm câu YẾU đi, không thêm fact; các sửa này CHƯA được re-review.
  - 3 finding non-blocking còn lại ĐÃ SỬA (owner "Sửa luôn", round 8, chưa re-review):
    BRG — một cách diễn đạt ở tong-quan + ai-vong-doi (bỏ "người trả lời", bỏ nhãn "suy luận" cho tỷ lệ theo giai đoạn);
    NĐ 288 — khôi phục "thông qua bộ điều khiển trung tâm" ở 4 câu + claim mới
    `vietnam-decree-288-2025-visual-licence-025kg` (atom rd8, novel, quote nguyên văn khoản 3) cite ở robotics + công trường số;
    IBM — claim riêng `ibm-ceo-study-ai-roi-25-percent-scaled-16-percent` (atom rd8 backfill, cùng quote r4-f18c), anchor tong-quan chuyển sang.
    Sau sửa: measure r8 delta 0.0079, low-delta 6; verify 232 anchors 0 failures; gate STOP_SUFFICIENT; validate ok.
    `rejected actions: 3` = 3 lệnh add-link hỏng do lỗi tách từ của zsh, tool từ chối, không thay đổi gì.
    Rollback trước đợt sửa: scratchpad/followup/pack-before-followup.tgz.
  - Codex KHÔNG dùng (owner cấm tới khi request). Gemini (agy) bị auto-mode classifier chặn vì cờ
    --dangerously-skip-permissions; không lách.
  - Số hiệu quả đa phần do vendor tự công bố (viAct, OpenSpace, ALICE, Komatsu, Buildots, Bentley...) — tài liệu
    ghi "theo <vendor>". Claim bắt buộc autonomous-equipment = số Komatsu tự công bố; enterprise = Skanska (2 nguồn
    cùng gốc), có VINCI/Bouygues/Coteccons song song.
  - Bão hòa: rounds 3–5 corroborate-only (delta 0 do thiết kế); test khám phá thật là sweep cuối (27 query).
    Probe đóng theo luật dừng "một mốc có số đo cho mỗi khoảng trống" (plan.md).
  - Khoảng trống còn mở: MLOps/data lake có số đo; case production robot/công trường số tại Việt Nam (pack có khung
    pháp lý NĐ 288/2025, Coteccons chuyển đổi số, FECON mức giới thiệu, 1 nghiên cứu học thuật VN về mũ bảo hộ).
  - Nhãn treo "F13/F15/F19" trong 3 statement claim (owner chấp nhận); title claim bị tool cắt 90 ký tự.
  - Một số publisher học thuật suy từ PDF/Acknowledgements (arXiv); một số trang chỉ mức abstract.
  - K lint (grammar UKMC.v1) fail đồng loạt trên tài liệu v2 — không áp dụng, không chạy.
```

## Nội dung pack

| Tài liệu | Loại | Claims cite | Câu hỏi trả lời |
|---|---|---|---|
| tong-quan-ai-nganh-xay-dung | concept | 22 | AI có đáng đầu tư vào ngành xây dựng không (adoption, năng suất, ROI 2 chiều, khoảng trống VN) |
| robotics-va-thiet-bi-tu-hanh | concept | 20 | Robot / xe tự hành / drone nào đã dùng thật (production ở vận tải mỏ; máy xây dựng mới thương mại sơ khởi) |
| llm-va-ocr-tai-lieu-xay-dung | concept | 22 | LLM / OCR xử lý hồ sơ tới đâu (bounded extraction, hallucination, thực nghiệm pdftotext) |
| cong-truong-so-iot-giam-sat | concept | 23 | Công trường số gồm gì (4S Hồng Kông, camera AI, IoT bê tông, capture 360°) |
| ai-vong-doi-du-an-xay-dung | concept | 26 | AI áp vào khâu nào của vòng đời dự án (thiết kế, tiến độ, QC, CDE) |
| ha-tang-ai-va-ap-dung-tap-doan | guide | 28 | Tập đoàn cần hạ tầng gì; Skanska, VINCI, Bouygues, Coteccons, FECON làm thế nào |

Tổng (sau round 8): 94 claims (đều được cite) · 109 sources · 19 entities · 130 atoms · 8 rounds · 232 anchors.
Look-sheet cuối: review/look-sheet-final-v2.png.

## Quy trình đã chạy

Research 4 nhánh (Sonnet) → Stage A freeze/record/promote từng nhánh (Sonnet, một writer mỗi lúc) → Stage B viết 6
tài liệu + entities + links → Stage C rounds 2–7 (claims vá, execution proof pdftotext trên DEVB Technical Circular
3/2023, bão hòa, CDE, QC, camera AI VN) → review độc lập Grok → controller áp 4 sửa nhỏ, dựng index, chạy lại toàn
bộ gate. Báo cáo từng stage: research/, stage-a/, stage-b/, stage-c/, review/.
