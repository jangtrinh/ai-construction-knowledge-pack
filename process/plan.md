# Plan: Knowledge pack "Ứng dụng AI vào ngành xây dựng"

- Ngày: 2026-10-29 · Controller: Claude (Fable, session nghiên cứu) · Tool: design-os-knowledge-builder (UKMC.v2)
- Pack root: `ai-nganh-xay-dung` · Run: `ai-xay-dung-261029` (budget 400)
- Researcher runtime: claude-code · Reviewer runtime (R12): gemini/agy (fallback grok) — OWNER 2026-10-29: KHÔNG dùng Codex cho đến khi owner request

## Mục tiêu
Pack trả lời: tập đoàn xây dựng (bối cảnh giả định, Việt Nam) nên ứng dụng AI vào đâu, bằng công nghệ gì
(robotics, IoT, LLM, OCR, xe tự hành, công trường số), với bằng chứng triển khai thực tế và hạ tầng cần có.
Mọi fact có quote verbatim từ nguồn đã freeze; gate dừng theo ledger.

## Decision ledger (owner, AskUserQuestion 2026-10-29)
1. Schema: duyệt đề xuất — starter + entity.entity_kind enum [technology, organization, standard]; 6 tài liệu.
2. Ngôn ngữ: thân bài tiếng Việt; thuật ngữ + quote giữ nguyên gốc.
3. Case study: toàn cầu + Việt Nam.

## Bộ tài liệu (đã duyệt)
| id | type |
|---|---|
| tong-quan-ai-nganh-xay-dung | concept |
| robotics-va-thiet-bi-tu-hanh | concept |
| llm-va-ocr-tai-lieu-xay-dung | concept |
| cong-truong-so-iot-giam-sat | concept |
| ai-vong-doi-du-an-xay-dung | concept |
| ha-tang-ai-va-ap-dung-tap-doan | guide |

## Required claims (khóa tại pack init)
ai-adoption-construction-industry · autonomous-equipment-production-deployment ·
llm-document-ai-construction · digital-construction-site-deployment · enterprise-ai-construction-corporation

## Phases
| # | Phase | Ai làm | Trạng thái |
|---|---|---|---|
| 1 | Scout tool + scaffold pack + duyệt schema | Controller | DONE 2026-10-29 |
| 2 | Research 4 nhánh (R1 robotics/AV, R2 LLM/OCR, R3 công trường số, R4 vòng đời/hạ tầng/tập đoàn) → `research/r*.md` | 4× researcher Sonnet (nền) | DONE |
| 3 | Freeze nguồn, record atoms round 1, promote claims | Sonnet pack-engineer | DONE |
| 4 | Viết 6 tài liệu + entities + links (anchor ease:claim = cites) | Sonnet pack-engineer | DONE |
| 5 | Rounds 2–7 (claims vá, execution proof, bão hòa, CDE/QC/camera VN), đóng probe theo luật dừng | Pack engineer | DONE |
| 6 | Review độc lập → `_evidence/<run>/review.json` (R12) | grok-4.7 ask --lean (Gemini bị classifier chặn; owner chọn Grok; codex cấm) | DONE — passed, 0 blocking |
| 7 | Gates + look-sheet + hand-over | Controller (rerun chính tay) | DONE — STOP_SUFFICIENT, xem hand-over.md |

## Quy ước Stage A (chốt 2026-10-29 sau khi R3 nạp xong — áp cho mọi nhánh)
- Gate đếm required claim qua LEDGER: atom chính của finding map required claim PHẢI mang `"claim":"<required-id>"` trong metadata ngay lần record đầu (phát hiện của engineer R3, đã thí nghiệm xác nhận; R3 vá bằng atom backfill r3-f01r — chấp nhận).
- Confidence: official/academic = HIGH; vendor/practitioner = MEDIUM.
- CONTRADICTION: atom bị trỏ (trong metadata.contradicts) phải nằm TRƯỚC trong batch promote, với claim id curated; sau đó resolve-contradiction với resolution trung thực.
- Execution proof gate: round 2 làm 1 thực nghiệm first-party thật đúng chủ đề (pdftotext trên PDF quy chuẩn xây dựng công khai, ghi metadata.command, kind=first-party); không được thì để DEEPEN và báo đúng (R15).
- Title claim bị tool cắt 90 ký tự: cosmetic, chấp nhận.
- Gap ledger (cuối session, es:librarian record): tool doc "Atom shape" thiếu rule metadata.claim cho required claims.

## Quyết định controller cho R4 Stage A (2026-10-29)
1. Không chạy script kiểm riêng trước freeze — engineer grep quote trong freeze thật ngay sau freeze (quy trình chuẩn); trang đổi → FAILED/swap.
2. Chấp nhận vắng McKinsey/Gartner (không freeze được); Eurostat/Fed Richmond/RICS đủ mạnh.
3. Khoảng trống chưa đo được (CDE/ISO 19650, data lake, MLOps, QC, bảo trì dự đoán): guide ghi thẳng "chưa có bằng chứng đo được"; round 2 thử nhanh backup, không ép.
4. Số lệch nhau (adoption, quy mô thị trường): tài liệu nêu TẤT CẢ các số kèm định nghĩa/mẫu số; CONTRADICTION F2 resolve bằng giải thích khác mẫu số/khác câu hỏi khảo sát.
5. FECON (Báo Đầu tư, đã pass quote gate): THÊM thành finding F25 (atom round 1, novel=true) — case VN quý với doanh nghiệp.
6. Nguồn gov VN lỗi SSL/403: chấp nhận báo lớn (F17); bỏ lead thuvienphapluat.
7. Required claim enterprise-ai-construction-corporation: mặc định gán F10 (Skanska Sidekick, >1.000 users/500 dự án); engineer được chọn F11 (VINCI + HEC độc lập) nếu đánh giá evidence tốt hơn, ghi lý do. Corroborate cùng-gốc của F10 giữ nguyên nhưng ghi chú trong claim evidence.

## Stage C — rounds 2–5 (thiết kế chốt sau Stage B, 2026-10-29)
- Round 2 (novel, từ capture ĐÃ freeze + 1 thực nghiệm):
  1. Claim mới `brg-double-digit-savings-widespread` (BENCHMARK, BRG/practitioner) — quote từ r4-brg capture L82-87; vá chiều lạc quan ROI. KHÔNG record CONTRADICTION với Kahua: hai khảo sát khác mẫu, không phủ định logic — tài liệu nêu song song + Derived giải thích (đổi quyết định cũ).
  2. Claim mới `submittals-agent-bounded-llm-extraction` (FACT, UNF/academic) — quote kiến trúc từ r2-flairs capture L37.
  3. Execution proof first-party: tải PDF công khai (ưu tiên DEVB Technical Circular 3/2023; fallback PDF arXiv đã cite), chạy pdftotext, output thực nghiệm thành file trong _evidence/<run>/sources/, atom verified_by_code=true + metadata.command, promote kind=first-party (publisher local).
  4. Cập nhật 2 doc (tong-quan ROI 2 chiều; llm-ocr bounded + benchmark trích xuất) + anchors + cites + index + verify.
- Rounds 3–5 (sweep bão hòa, corroborate-only, novel=false, --into claim có sẵn): r3 Komatsu AHS page + mining-technology Rio Tinto (+37%/người); r4 Inside Unmanned Systems TyBot / viact case-studies; r5 buildots.com / CIC 4S. Mỗi vòng: freeze → record (novel=false, round đúng) → promote --into → measure --material --write-state TUẦN TỰ. Kỳ vọng low-delta 1/3 → 2/3 → 3/3.
- Sau r5, khi sweep xác nhận hết hướng tra khả thi: `run state set has_viable_probe_remaining=false` (kèm bằng chứng sweep trong report).
- Review (R12): gemini (agy) viết _evidence/<run>/review.json — controller điều phối sau Stage C. (Owner 2026-10-29: bỏ qua Codex hoàn toàn cho đến khi owner request; fallback thứ hai: grok.)

## Luật dừng probe (controller, 2026-10-29 sau Stage C2)
- Mỗi khoảng trống đã khai cần MỘT mốc có số đo, không phải vendor (học thuật mức abstract được chấp nhận, ghi rõ "abstract-level"). Paper cùng loại thêm vào = corroborate, KHÔNG tính là hướng tra mới.
- Round 7 nạp đúng Lead Q (ISARC 2024 rebar spacing, sai số 2,65 mm) + Lead C (VJSTE 2026 helmet detection, tác giả VN, precision >97% mAP@0.5). Tối đa 2 novel material (2/125 = 1,6%).
- Sau round 7: set has_viable_probe_remaining=false dưới luật này; LIMITS ghi: MLOps/data lake, case production VN = chưa có mốc đo được sau sweep 27 query; EVNCPC 2021 bỏ (không có số kết quả).
- Entity `cde-iso-19650` (standard), about-link từ 2 doc cite claim CDE. NBS = vendor; Istanbul Technical University = academic.

## Ràng buộc vận hành
- Chỉ MỘT writer đụng pack root tại một thời điểm (actions lock + evidence.jsonl append) — researchers KHÔNG ghi vào pack.
- Publisher = tổ chức tác giả, không bao giờ là hosting host; mỗi publisher 1 kind.
- Gate báo đúng như in (R15); không ép state.
- version_applicability: not_applicable (concept pack — đã set kèm lý do).

## Visual evidence
`look.py --sheet` PNG + terminal capture của `pack check`/`validate.py` — gửi owner ở bước 7.
