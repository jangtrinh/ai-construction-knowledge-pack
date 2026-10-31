# Brief — read-only Vietnamese wording review of the CC1 dossier

You are a senior Vietnamese editor reviewing a published proposal dossier for Tổng Công ty Xây dựng Số 1 – CTCP (CC1).
Read-only: do not edit anything. Read the files with your read tool and return findings in your final message.

## Files (all under /Users/jangtrinh/Products/cc1)
Priority 1 (published on the website, read fully):
- index.html (only the visible Vietnamese text; ignore CSS, scripts, attribute values, percentages inside style rules)
- CHAPTER_AI_CORE_OPERATING_PLATFORM.md
- plans/261031-0940-ai-core-plan-a-b/plan.md and phase-00 … phase-10 files
- plans/261031-0940-ai-core-plan-a-b/options-a-b-analysis.md
Priority 2 (read fully if you have budget, otherwise skim):
- CHAPTER_OPEN_LINEAR_SITES_HIGHWAY_BRIDGE.md, README.md, TECHNICAL_ARCHITECTURE_TOUCHPOINTS.md, BRAINSTORMING_AND_FULL_ARCHITECTURE.md, CC1-README.md

## Project rules to check against
1. Register: formal press register, third person. No "bạn", "mình", "chúng ta" addressing the reader; no chat tone; no marketing hype.
2. No unverified superlatives or absolute claims: "nhất", "hàng đầu", "đứng đầu", "tuyệt đối", "100% chính xác", "số 1" as a ranking. The company's legal name "Tổng Công ty Xây dựng Số 1" is NOT a superlative.
3. Construction terminology per Vietnamese practice (Nghị định 37/2015/NĐ-CP): no machine-translated calques. Examples of correct terms: trắc đạc, cốt thép, ván khuôn, cơ điện (MEP), bản vẽ hoàn công, nghiệm thu, thầu phụ, ban chỉ huy, bảng khối lượng (BOQ).
4. English: flag English words where a normal Vietnamese term exists (e.g. "quick-win", "touchpoint", "rework", "edge case", "pipeline" in running text). Keep standard acronyms and product names (BIM, LiDAR, RTK, GNSS, OCR, BOQ, GPU, LLM, LoRA, SFT, ERP, CDE, UWB, QS).
5. Clarity: one idea per sentence; flag sentences over ~35 words, unclear subjects, vague words ("một số", "nhiều", "khá") where a number already exists elsewhere, and terms used before they are explained.
6. Consistency with the owner's decisions (31/10/2026) — flag any text that contradicts them:
   - Plan B "theo cổng" is chosen; plan A is kept only for comparison.
   - Scope: under 30 active projects; coverage in 6–9 months (10–15 projects per quarter). "~12 tháng" for coverage is stale.
   - Steering committee lead: Tổng giám đốc. M0 = approval month, no calendar date. The 2 pilot projects are unnamed (demo).
   - Cost: year 1 55–90 tỷ, year 2 23–40 tỷ, year 3 27–48 tỷ, 3 years 105–180 tỷ; training cluster 25–36 tỷ; inference cluster 5–8 tỷ.
   - Gates G1 (M1), G2 (M3–M4), G3 (M8), G4 (M10), G5 (M12).
   - Also flag naming drift: the company is "Tổng Công ty" (not "Tập đoàn") — report each place it says "tập đoàn" for CC1 and how often, but mark it "owner decision" rather than "must".
7. Do NOT flag: dot as decimal separator (project convention, e.g. 1.5s, 24.5 m³); month labels M0–M24, M2, M3; numbers themselves (do not propose new figures).
8. Formatting: units m², m³ with superscript; ranges with en dash (55–90); Vietnamese diacritics correct and in NFC.

## Output (final message only, Vietnamese for suggested text)
A markdown table, most important first, at most 80 rows:
| # | file:line | rule (1–8) | severity (must / should / owner decision) | current text (exact, short) | suggested text |

Then a short section "Nhận xét chung" (≤ 8 bullets): patterns that repeat across files.
Then: `Status: DONE | DONE_WITH_CONCERNS` and `Summary:` one line.
Quote the current text exactly so it can be found with grep. Do not invent line numbers: if unsure, give the file only.
