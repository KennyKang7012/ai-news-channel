# Editorial Decision — 2026-07-30

_Decided by: CTO_
_Cycle: #001 (first cycle) — **DRY RUN, no live publish**_
_Status: Handed off to Researcher_
_Revision: **rev-3 (2026-07-30)** — revised after the PM answered all five open escalations from rev-2. Scope-and-governance changes only: social posts 3 → **4** (Instagram caption added), cycle confirmed as **dry run**, length conversion **accepted**, brand tag **stays English**, audience **confirmed Taiwan / Greater China**. **Topic, angle, structure, sourcing bar, language, register and rationale are unchanged.**_

_Revision history: rev-1 (English, 3 social posts) → rev-2 (zh-TW + professional register) → rev-3 (PM decisions applied)._

---

## Decision

**Today's topic:** The EU AI Act's general-application milestone on **2 August 2026**, published at T-3 days.

**Angle:** "The compliance deadline nobody can agree is still real" — the gap between what is legally scheduled to switch on and what is operationally true, given the Commission's own Digital Omnibus push to postpone parts of the same tranche.

**Publish status (rev-3):** **DRY RUN.** Confirmed by PM. This is queue item 4 in `pending-tasks.md` ("First daily cycle (dry run) — no actual publish, verify outputs only"), not item 5. All deliverables are produced and verified to full publication standard; **no agent invokes a publishing script or sends anything.** Supervisor's PASS certifies readiness to publish, not publication.

**Output language (rev-2):** **繁體中文 / Traditional Chinese, Taiwan usage (zh-TW)** for all reader-facing deliverables — article, social posts, newsletter, image-card text overlay. Internal working documents remain English/bilingual per PM instruction.

**Register (rev-2):** **Professional (專業語調)** — formal, restrained, authoritative written Chinese, layered on top of the constitution's clear / insightful / non-hype baseline. Applies to **every** platform, Threads and Instagram included.

**Deliverable set (rev-3):** 1 long-form article + **4 social posts (Twitter/X, LinkedIn, Threads, Instagram caption)** + 1 image card + 1 newsletter digest.

**Audience (rev-3, confirmed by PM):** **Taiwan / Greater China readership** — 產品主管、法務、創辦人、AI 產品開發者, predominantly **outside** the EU. Section 3 therefore leads with 域外效力 (extraterritorial reach), as written in rev-2.

**Primary headline (zh-TW):** 《歐盟人工智慧法》真正的期限在本週日:8 月 2 日起,哪些義務正式適用
_(rev-1 English original, retained for the record: "The EU AI Act's Real Deadline Is Sunday — Here's What Actually Becomes Illegal")_

---

## Rationale

1. **Calendar-forced, not speculative.** Genuinely T-3 days. No competing story this week has a hard trigger date, which removes the risk of committing to an unverifiable product rumour on cycle #001.
2. **Broadest audience overlap.** Affects every organisation placing AI on the EU market, including non-EU builders via extraterritorial reach — larger addressable readership than any single-vendor release.
3. **Real informational asymmetry.** The delay fight means most readers do not actually know what binds them on Monday. Resolving that is where a news channel earns trust.
4. **Format gap.** Existing coverage splits between unreadable law-firm memos and inaccurate hot takes. A "what is true on Sunday" explainer occupies the middle.
5. **Evergreen tail.** Remains useful and searchable through August and into the 2 August 2027 milestone, unlike a launch post.
6. **Fits house tone.** Non-hype, source-heavy, respects reader intelligence — a good tone-setting piece for the channel's first publication.
7. **[rev-2, confirmed rev-3] The zh-TW requirement strengthens rather than weakens the pick.** Chinese-language coverage of the AI Act is largely machine-translated wire copy or vendor marketing. A precise, professionally written zh-TW explainer of the Act's **extraterritorial obligations** — which bind non-EU vendors placing AI systems on the EU market — is genuinely underserved. **The PM has now confirmed the readership is Taiwan / Greater China, i.e. mostly outside the EU**, which validates the rev-2 assumption; Section 3's extraterritorial framing leads that section rather than closing it, and no re-weighting is needed.
8. **[rev-3] Also a sound topic for a dry run.** A regulatory explainer with hard dates, article numbers and fine figures is the most demanding possible test of the sourcing, translation, citation and length-checking machinery. If the pipeline holds on this, it holds on a product-launch story.

---

## Alternatives Considered and Rejected

| Alternative | Why rejected |
|---|---|
| Latest frontier model release (any lab) | CTO has no live news access; committing to an unverified launch on cycle #001 risks a factual failure. Also decays within 48 hours. |
| AI chip / compute supply story | Real, but no date trigger this week; better as a scheduled analysis piece than a daily news lead. |
| Funding round / M&A | Narrow reader relevance; reads as press-release amplification, which conflicts with the non-hype tone rule. |
| AI safety research paper | High value, low urgency — better suited to a slower cycle. Kept in backlog. |
| Broad "AI regulation roundup" | Violates the single-angle rule; diffuse pieces underperform and are hard for the Researcher to source precisely. |
| **[rev-2] Switching topic to something more "local" for a zh-TW audience** | Rejected, and now confirmed correct by the PM's audience answer. The language instruction changes the *rendering*, not the news judgement. The AI Act's extraterritorial reach makes it directly relevant to Taiwanese and other non-EU vendors, so no substitution is warranted. |
| **[rev-3] Simplifying the deliverable set because it is only a dry run** | Rejected. The dry run's purpose is to exercise the full pipeline; a reduced set would leave the Instagram path, the CJK counting logic and the alt-text step untested before the first live publish. |

---

## Key Structural Choices

- **Contingency, not hedge.** One binary fork only: if the Researcher confirms a delay instrument was formally adopted (Q2), the Developer switches to headline set B (also zh-TW) and leads with the postponement. Topic, sources, and structure are unchanged.
- **Sourcing bar raised above constitution minimum.** 5 sources with ≥2 primary/official, max 2 per outlet. Legal-status claims may not rest on secondary reporting. **Not relaxed for the dry run** — these findings become the reference set for the first live cycle.
- **Date-stamping mandated.** Every legal-status assertion must read 「截至 2026 年 7 月 30 日」 — the situation is live and the article must age honestly.
- **No legal advice.** Orientation map only, with a Chinese disclaimer line. Protects the channel on a regulatory topic.
- **Image direction constrained.** No EU flag rendering, no baked-in text, no AI-cliché imagery. Typography composited separately.

**Carried from rev-2:**

- **Research language decoupled from output language.** Sourcing stays English/EU-primary — the EU publishes no Chinese version of the Regulation or of EUR-Lex records. Chinese-language secondary coverage may supply reaction colour only, never authority for a legal fact, and must be flagged as such. Researcher must supply **verbatim original-language quotes**, not paraphrases, so the Developer can translate responsibly.
- **Translation-integrity rules.** Deliverables are written in Chinese from English findings, not machine-translated from an English draft. Quotes appear as marked translations with the original retained; the article states once that its renderings of the Regulation are the publication's own translation, since no official Chinese text exists. Source titles and URLs stay in the original language.
- **Standing zh-TW glossary issued** (17 terms) to keep terminology consistent across the deliverable set. Researcher Q6 (time-boxed to 15 minutes) checks these against Taiwanese government and legal-press usage and reports divergences only.
- **Taiwan-usage constraint made explicit and testable.** Mainland-Chinese vocabulary is banned and Supervisor-checkable (人工智能 / 信息 / 网络 / 视频 / 数据 / 算法 → 人工智慧 / 資訊 / 網路 / 影片 / 資料 / 演算法).
- **Threads repositioned.** rev-1 specified a casual, conversational Threads post; that contradicts the professional-register instruction. Threads is now **「簡潔的專業短評」** — concise professional commentary: single point, plain sentence structure, no jargon stacking, no casual particles, slang, or emoji.
- **Emoji allowance withdrawn.** rev-1 permitted one emoji on Twitter/X; emoji are banned on all platforms, along with exclamation marks outside quotations.
- **Length metric converted for Chinese.** 800–1,200 words → **1,400–2,100 中文字 (target 1,600)** at ≈1.75 characters per English word; newsletter 180–250 words → **320–450 中文字**. Both `char_count_zh` and `word_count_en_equiv` required in front matter so the constitutional range stays auditable.
- **CJK character-counting conversion supplied to Developer.** Twitter/X weights CJK at 2 characters, so the real budget is ≈120 中文字 plus a 23-weighted link. LinkedIn and Threads count CJK at 1.
- **Designer constraint hardened for CJK.** No baked-in text at all; all overlay strings composited in Noto Sans TC / 思源黑體, verified glyph-by-glyph as Traditional forms, with headline point size raised ~10–15% over the English equivalent for 200×200px thumbnail legibility.

**Added in rev-3:**

- **Fourth social post: Instagram caption (≤2,200 characters).** Specified in the same zh-TW professional register as the other three, with a hard division of labour against the image card — **the card carries the date and statute name; the caption carries the substance** (obligations, figures, delay status, extraterritorial implication). Structure fixed as 鉤子句 → 脈絡段 → CTA → 連結說明 → 標籤區.
- **Instagram-specific constraints derived from platform behaviour, not guesswork.** The feed truncates at roughly 125 characters, so the hook must be a self-contained line of ≤40 中文字 carrying a date anchor plus one verifiable specific. In-caption links are not clickable, so a `[LINK]` placeholder plus an explicit 連結見個人簡介 note is mandated and bare URLs are banned. Hashtags count toward the 2,200 limit and are capped at 8. Decorative separator glyphs (▬▬ ✦ •••) are banned as a register violation, alongside the existing emoji ban.
- **Alt text made a required deliverable** (60–100 中文字, objective description of the card and its overlay text, excluded from the caption character count). Accessibility, and it also forces the Designer/Developer handoff to be explicit about what the card actually shows.
- **Anti-duplication rule across four posts.** Each post opens differently and leads with a different specific; the Instagram hook may not repeat the Twitter/X opener or the card's overlay text. With four posts sharing one source set, near-duplicate copy was the obvious failure mode.
- **Researcher Q7 added (low effort).** Two candidate self-contained numeric specifics, sourced, so the Instagram post — the only deliverable with no clickable link — can stand alone without cannibalising the Twitter/X fact.
- **Citation numbers confined to the article.** `[n]` markers appear in `article.md` only; social posts and the newsletter attribute as 「來源見文章」.
- **Dry-run status made machine-visible.** `status: dry-run` required in the article front matter, plus an explicit no-publish instruction in the Researcher, Developer and Supervisor briefs and a dedicated **Publish Status** block at the top of `cto-analysis.md`, so no downstream agent can miss it.
- **Brand tag fixed as English.** `AI NEWS CHANNEL` is treated as a brand mark, not reader-facing copy; the `AI 新聞頻道` alternative is withdrawn and the Supervisor now checks the English string affirmatively.
- **Length conversion promoted from proposal to standing standard.** 1,400–2,100 中文字 (target 1,600) is the operative range for zh-TW cycles; the ratio question is closed.

---

## Risks

| Risk | Mitigation |
|---|---|
| A bigger AI story broke in the last 24–48 h | Researcher Q5 is an explicit news-value check with a mandatory flag-back to CTO — no silent substitution |
| Legal status of the delay is genuinely unresolved | Article states this plainly and date-stamps it; treated as the story, not a gap |
| Topic reads as "dry regulation" | Angle is operator-facing (「業者週一該做什麼」), not legislative process |
| Non-EU readers assume irrelevance | Section 3 leads with 域外效力 — heightened priority now that the Taiwan / Greater China readership is confirmed |
| **[rev-2] Translation drift on legal terms** | Standing glossary issued; Researcher Q6 cross-checks against Taiwanese official/legal usage; article numbers and figures required verbatim from Researcher |
| **[rev-2] Chinese rendering mistaken for official statutory text** | Explicit rule: never present a Chinese rendering as authoritative; one-time in-article statement that translations are the publication's own |
| **[rev-2] Simplified characters or Mainland vocabulary leaking in** via tooling or fonts | Banned-usage list is explicit and Supervisor-checkable; designer must verify Traditional glyph forms |
| **[rev-2] Professional register flattening into bureaucratic prose** | Directive states restraint — not formality markers — is the tone signal; no 敬語 padding, no government-notice cadence |
| **[rev-2] Over-length social posts** from CJK weighting misunderstanding | Conversion table supplied, now including Instagram; if over budget, cut a clause, never the citation-grade specific |
| **[rev-3] Four posts drift into near-duplicate copy** | Anti-duplication rule: different opener and different lead specific per post; Instagram hook may not echo the Twitter/X opener or the card overlay |
| **[rev-3] Instagram hook buried below the 125-character fold** | Hook constrained to a self-contained ≤40 中文字 first line carrying date anchor + one specific; Supervisor checks this explicitly |
| **[rev-3] Instagram register slipping into lifestyle-caption habits** (emoji, separator glyphs, hype CTA) | Register bans extended to Instagram by name; decorative glyphs added to the banned list; CTA wording constrained to 克制 phrasing |
| **[rev-3] Dry run mistaken for a live publish** | `status: dry-run` in front matter, dedicated Publish Status block, no-publish instruction repeated in three agent briefs, and a Supervisor acceptance line certifying "ready to publish" rather than "published" |
| **[rev-3] Dry-run status used to justify a lower standard** | Sourcing bar, length range and register checks explicitly unchanged; the findings become the reference set for the first live cycle |

---

## Open Items Escalated to PM

**All five rev-2 escalations are resolved.** Recorded for the archive:

| # | Question (rev-2) | PM decision (rev-3) |
|---|---|---|
| 1 | 3 vs. 4 social posts — template inconsistency between the CTO output format and CLAUDE.md | **4 posts.** `CLAUDE.md` and `.claude/agents/cto.md` updated to Twitter/X + LinkedIn + Threads + **Instagram caption (≤2,200 chars)**. CTO recommendation to standardise on 3 was overruled; spec written accordingly. |
| 2 | Should cycle #001 be treated as the dry run? | **Yes — dry run confirmed.** No live publish; all six platforms remain unconfigured. |
| 3 | zh-TW length-conversion ratio needs acknowledgement | **Accepted as-is.** 1.75 chars/English word → 1,400–2,100 中文字, target 1,600. Now the standing standard for zh-TW cycles. |
| 4 | Image-card brand-tag language | **Stays English: `AI NEWS CHANNEL`.** Not localised. |
| 5 | Audience assumption behind the Section 3 framing | **Taiwan / Greater China readership confirmed.** Section 3's extraterritorial framing stands unchanged. |

**Standing note (not a blocker, carried forward):** No monetisation, distribution, or channel-strategy decisions are made in this document — out of CTO scope per the constitution. Instagram's addition is handled here purely as an editorial-format requirement; account setup, posting cadence and any commercial use of the channel remain PM decisions.

**No open editorial escalations.**

---

## Archive Entry (for Librarian)

| Date | Topic | Angle | Language | Deliverables | Publish status | Headline |
|---|---|---|---|---|---|---|
| 2026-07-30 | EU AI Act — 2 August 2026 general application | Scheduled obligations vs. active delay effort; what actually binds builders | zh-TW (繁體中文), professional register | Article + 4 social (X, LinkedIn, Threads, Instagram) + image card + newsletter | **Dry run — not published** | 《歐盟人工智慧法》真正的期限在本週日:8 月 2 日起,哪些義務正式適用 |

**Cooldown guidance:** Do not lead with EU AI Act compliance again before 2026-08-13 (14 days), except for a genuinely new development (e.g. formal adoption of a delay, or a first enforcement action). The 2 August 2027 milestone and any first national enforcement case are pre-approved future hooks.

**Librarian notes:**
- **(rev-2)** Record this cycle as the channel's first **zh-TW** publication. The standing glossary in `working-notes/cto-analysis.md` should be lifted into a persistent terminology file under `knowledge-base/` so cycle #002 onward inherits consistent renderings rather than re-deriving them.
- **(rev-3)** Record this cycle as **dry run only — do not log it as a published cycle** in `project-state.md`'s "Last published date" or "Recent Completions." Mark `pending-tasks.md` queue item 4 as completed on Supervisor PASS; item 5 (first live publish) remains open and PM-gated.
- **(rev-3)** Instagram is now a standing fourth social platform. Add it to the platform table in `project-state.md` (currently listing six rows without Instagram) so the configuration gap is visible before the first live publish.
- **(rev-3)** The Instagram caption spec, the CJK character-count conversion table (now four platforms) and the accepted 1.75 chars/word length ratio are reusable standards, not one-off decisions — worth extracting into a persistent style guide under `knowledge-base/project-docs/` alongside the glossary.
