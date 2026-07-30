# Project State — AI News Channel Daily Auto Post

_Last updated by: Librarian_
_Updated at: 2026-07-30_

---

## Current Status

| Item | Status |
|---|---|
| Project phase | 🟡 Setup / Initial run |
| Last published date | 2026-07-30 (dry-run, not live) |
| Next scheduled run | Daily at 08:00 UTC |
| Pipeline health | 🟢 Ready |

---

## Active Task

> Cycle #002 awaiting PM brief for 2026-07-31.

---

## Recent Completions (last 7 days)

| Date | Topic | Status |
|---|---|---|
| 2026-07-30 | EU AI Act 2 August 2026 general-application milestone | ✅ Completed (dry-run, verified by Supervisor) |

---

## Known Issues

1. **First-mention `中文譯名(English original)` gloss rule missing from social posts and newsletter.** CTO brief states rule "governs every deliverable," and it is correctly applied in the article body (e.g., 《歐盟人工智慧法》(EU AI Act), 《數位簡化包裹法案》(Digital Omnibus, Regulation (EU) 2026/1744) on first mention). None of the four social posts (Twitter/X, LinkedIn, Threads, Instagram) or the newsletter body include the English gloss on first mention of key terms. This is not in the Supervisor's binding Acceptance Criteria checklist, and headlines/subject lines are exempt by CTO precedent — so not a fail condition. However, it is a systematic gap against a stated credibility directive. **Action:** CTO to explicitly scope the rule to article-only, or Developer to add gloss to social/newsletter in next cycle if intended to apply globally.

2. **Regulation (EU) 2026/1744 (Digital Omnibus) lacks direct EUR-Lex URL in Researcher source table.** The formal-adoption fact determining Set A vs. B is corroborated by 2 primary sources (EC policy page, EC statement), but Researcher's source table lists the amending regulation only as "Official Journal of the European Union" without a working EUR-Lex link, so Developer could not cite it per citation rules ("each with working URL"). Does not affect this cycle's PASS (≥2 primary, ≥3 total, all cited sources have working URLs). **Action:** Researcher to capture direct EUR-Lex link for newly-adopted instruments that are decisive facts in future cycles.

3. **`verify_build.sh` Twitter/X character-count extraction off-by-3 bug.** Script reports 138 chars for Twitter/X post; true raw content is 135 chars. Root cause: awk extraction does not stop at section closing `---` before reaching next `## LinkedIn` heading, so the 3-character divider gets concatenated. Did not affect cycle #001 verdict (135 or 138 both ≪ 280) but could produce false ❌ on a future Twitter post close to 280 chars. **Action:** Developer to fix exit condition to stop on lines that are exactly `---`.

4. **Historical note: Headline Set B used per Researcher's Q2 verdict.** Cycle #001 confirmed formal adoption of Regulation (EU) 2026/1744 (entered force 27 July 2026). Developer applied Set B contingency — headline is B1, and Section 2 (延後 / delayed obligations) moved ahead of Section 1 (如期適用 / binding on schedule). CTO's contingency clause explicitly authorized this reordering. For completeness in archive: default Set A (delay as background) was not used because the Researcher verified the delay is now binding law, not provisional.

---

## Platform Publishing Status

| Platform | Connected | Last Post |
|---|---|---|
| Medium | ⬜ Not configured | — |
| Substack | ⬜ Not configured | — |
| Twitter/X | ⬜ Not configured | — |
| LinkedIn | ⬜ Not configured | — |
| Threads | ⬜ Not configured | — |
| Email (newsletter) | ⬜ Not configured | — |
