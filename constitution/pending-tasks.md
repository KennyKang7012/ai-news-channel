# Pending Tasks

_Managed by: Librarian_
_Updated: 2026-07-30_

---

## 🔴 Blocked

_None_

---

## 🟡 In Progress

_None — cycle #001 complete, awaiting cycle #002 PM brief_

---

## 🟢 Queue (next up)

| Priority | Task | Assigned to | Notes |
|---|---|---|---|
| 1 | **CTO clarification: First-mention gloss scope** | CTO | Supervisor flagged gap: 中文譯名(English original) rule applied in article but not in 4 social posts or newsletter. CTO brief says rule "governs every deliverable" — does this mean apply to all platforms, or is article-only the intended scope? Clarify for cycle #002. |
| 2 | **Researcher: Capture EUR-Lex URL for decisive regulatory facts** | Researcher | Regulation (EU) 2026/1744 lacked direct EUR-Lex link in source table (listed only as "Official Journal" without working URL). For cycle #002 and beyond, ensure any newly-adopted instrument that is the decisive fact has a direct EUR-Lex link captured for citation. |
| 3 | **Developer: Fix verify_build.sh Twitter/X extraction bug** | Developer | Script reports 138 chars for Twitter/X; true count is 135. Root cause: awk exit pattern does not stop at `---` divider before `## LinkedIn` heading. Low priority (no impact on cycle #001 verdict) but should fix before a Twitter post approaches the 280 limit. |
| 4 | **Developer: Add first-mention gloss to social posts and newsletter (pending CTO decision)** | Developer | Conditional on CTO's clarification (Task 1 above). If CTO confirms the gloss rule applies globally, Developer should add `中文譯名(English original)` on first mention in `social-posts.md` and `newsletter.md` for cycle #002. |
| 5 | Configure .env with API keys | PM (human) | Required before live publish (cycle #003 and beyond). Cycle #001 was dry-run; no live keys needed yet. |
| 6 | First live publish | All agents | PM approval required. Cycle #002 will also be dry-run status; live publish is cycle #003 at earliest. |

---

## ✅ Completed

| Date | Task | Agent | Notes |
|---|---|---|---|
| 2026-07-30 | First daily cycle (dry run) | All agents | Cycle #001: researched EU AI Act 2 August 2026 milestone, produced article, 4 social posts, image prompts, newsletter digest. Supervisor verified all outputs; dry-run status respected (no live publish). |
| 2026-07-30 | Test Gemini API connection | Developer | Ran as part of cycle #001; Researcher used Gemini Pro for findings; connection functional. |
| 2026-07-30 | Test publishing scripts | Developer | `verify_build.sh` ran successfully; `run_daily.sh` stepped through verification (PASS) and halted at Step 2 on missing `MEDIUM_TOKEN` (expected, credentials not configured). Script flow nominal. |
