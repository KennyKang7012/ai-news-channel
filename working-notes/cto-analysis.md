# CTO Editorial Analysis

**Revision:** rev-3 (2026-07-30) — revised after the PM answered all five open escalations from rev-2. Changes in this revision are **scope-and-governance only**: (1) social posts go from 3 to **4** with the addition of an **Instagram caption**, per the updated `CLAUDE.md` and `.claude/agents/cto.md`; (2) this cycle is confirmed as a **dry run** (no live publish); (3) the zh-TW length conversion is **accepted as-is**; (4) the image-card brand tag **stays English** (`AI NEWS CHANNEL`); (5) the audience is confirmed as **Taiwan / Greater China**, so Section 3's extraterritorial framing stands unchanged. Topic, angle, structure, sourcing bar, language and register directives are all unchanged from rev-2. This document remains English/bilingual as an internal working doc, per PM instruction.

## Date
2026-07-30

## Publish Status

> **🟡 DRY RUN — NO LIVE PUBLISH.** Confirmed by PM (rev-3). This cycle is queue item 4 in `constitution/pending-tasks.md` ("First daily cycle (dry run) — no actual publish, verify outputs only"), not item 5. **Researcher, Developer, Designer and Supervisor:** produce, format and verify the complete deliverable set to full publication standard, but **no agent may call a publishing script, post to any platform, or send the newsletter.** All six platforms remain unconfigured in `project-state.md`. Supervisor's PASS certifies *readiness to publish*, not publication. The live publish is a separate, later cycle requiring explicit PM approval.

## PM Brief Summary
PM requested "today's most important AI news" with **no preset company or category**. Researcher scans the last 24–48 hours; CTO selects the single highest news-value, highest reader-relevance story and commits to it. Standard 5-output set per CLAUDE.md — long-form article, **4 social posts (Twitter/X, LinkedIn, Threads, Instagram caption)**, image card, newsletter digest. Target publish time 08:00 UTC — **treated as a dry-run target for this cycle; nothing goes live.**

**Special Instructions (added by PM, rev-2, still binding):**
1. **Language — 繁體中文 (zh-TW).** All reader-facing outputs — article, social posts, newsletter, image-card text overlay — must be written in Traditional Chinese, invoking the "Traditional Chinese variant on request" clause in CLAUDE.md. Internal working documents (`cto-analysis.md`, `researcher-findings.md`) may remain bilingual/English. Headlines, social copy, and newsletter body must be zh-TW.
2. **Tone — Professional (專業語調).** On top of the constitution's clear / insightful / non-hype baseline, PM wants a formal, authoritative register. Casual or breezy phrasing is out — **including on Threads and Instagram**, neither of which is to be written in a conversational voice.

**PM decisions applied in rev-3:**
1. **Four social posts, not three.** `CLAUDE.md` and the CTO agent definition now specify Twitter/X, LinkedIn, Threads and a fourth platform — **Instagram caption (≤2,200 characters)**, paired with the image card. Full spec below. The rev-1/rev-2 "template inconsistency" flag is **resolved and withdrawn**.
2. **Dry run confirmed.** See Publish Status above.
3. **Length conversion accepted.** 1.75 characters per English word → **1,400–2,100 中文字, target 1,600**. Settled; no further approval needed.
4. **Brand tag stays English** — `AI NEWS CHANNEL`. Not localised.
5. **Audience confirmed: Taiwan / Greater China readership** — matching the rev-2 assumption. Section 3's extraterritorial framing stands as written.

**Topic archive status:** Empty. This is cycle #001 — no repetition conflict. From cycle #002 onward, the archive check is mandatory and blocking.

---

## Topic & Angle

**TOPIC (committed, unchanged):** The EU AI Act's largest tranche of obligations is scheduled to become applicable on **Sunday, 2 August 2026** — three days from publication.

**ANGLE (unchanged):** *"The compliance deadline nobody can agree is still real."* — 「沒有人能確定是否仍然有效的合規期限」

Not a summary of the AI Act. The angle is the **72-hour gap between what is legally scheduled and what is operationally true**. On 2 August 2026 the Regulation reaches general application: Annex III high-risk system obligations, Article 50 transparency duties (synthetic media marking, chatbot disclosure), Member State penalty regimes, and mandatory national regulatory sandboxes. Simultaneously, the Commission's **Digital Omnibus** package (proposed 19 Nov 2025) sought to postpone significant parts of exactly this tranche. The story for readers is: **what is actually binding on Sunday morning, what slipped, and what a builder shipping AI into the EU has to do on Monday.**

**Why this is the right pick for 2026-07-30:**
1. **Time-anchored, not speculative.** It is genuinely T-3 days. No other story this week carries a hard, calendar-forced trigger.
2. **Universal blast radius.** It touches every company shipping AI into the EU — not just one lab's product cycle. Model-release news decays in 48 hours; a regulatory phase change reshapes roadmaps for 18 months.
3. **Genuinely contested.** The delay fight means there is real informational asymmetry to resolve — which is where a news channel earns trust instead of reprinting a press release.
4. **Underserved format.** Most coverage is either law-firm memo (unreadable) or hot take (wrong). A clear "what is true on Sunday" piece is a defensible niche.
5. **Evergreen tail.** The piece stays useful and searchable through August, unlike a launch post.
6. **[rev-2, confirmed rev-3] Strong fit for the confirmed zh-TW audience.** Chinese-language coverage of the AI Act is overwhelmingly either machine-translated wire copy or vendor marketing. A precise, professionally written zh-TW explainer of the extraterritorial obligations — which bind Taiwanese and other non-EU vendors placing AI systems on the EU market — is an underserved and defensible position. **PM has confirmed the readership is Taiwan / Greater China (i.e. predominantly outside the EU), so Section 3's extraterritorial framing is correct as written and leads that section.**

**PRIMARY FRAMING (default):** The deadline holds in substance; the story is what switches on and who is unprepared.

**CONTINGENCY (single, factual — not a topic hedge):** If Researcher verifies that a delay instrument was formally adopted and legally postpones the Annex III high-risk tranche, the topic does **not** change — the headline pivots to the delay as the lead (headline set B) and Section 2 moves up. Same topic, same sources, same structure. Developer selects headline set A or B based on the Researcher's verdict in Q2.

---

## Audience (confirmed, rev-3)

**Primary readership: Taiwan / Greater China** — 產品主管、法務、創辦人、AI 產品開發者, the large majority of whom are **outside** the EU and encounter the Regulation through its extraterritorial reach rather than as EU-established entities.

Editorial consequences, all already reflected in the structure below:
- Section 3 **leads** with 域外效力 (extraterritorial reach) and the 自境外投放至歐盟市場 case, rather than treating it as a footnote to the EU-established case.
- The reader is assumed to be an operator deciding what to do, not a European compliance officer executing a known programme.
- No assumption of familiarity with EU institutional process; first-mention rule (`中文譯名(English original)`) carries the load instead of explanatory digressions.
- Taiwan usage (臺灣用語) throughout, not Hong Kong or Mainland vocabulary — see directives below.

---

## Language & Register Directives (rev-2, unchanged — governs every deliverable)

**Variant:** Traditional Chinese, **Taiwan usage (臺灣用語)**. Not Hong Kong usage, and explicitly **not** Mainland-Chinese vocabulary or transliterations.

- Use 人工智慧 (not 人工智能), 資料/數據 as appropriate (not 数据), 網路 (not 网络), 影片 (not 视频), 軟體/硬體/程式 (not 软件/硬件/程序), 資訊 (not 信息), 演算法 (not 算法), 最佳化 (not 优化).
- Full-width punctuation throughout (,。、;:「」). Statute names in 《》. Half-width for numerals, Latin terms, and URLs, with a space either side when adjacent to Chinese characters.
- **First-mention rule:** every proper noun, statute, institution, and legal term appears as `中文譯名(English original)` on first use, thereafter Chinese only. This is a credibility requirement, not decoration — readers must be able to verify against English primary sources.
- Dates written as `2026 年 8 月 2 日`. Never `8/2`, never `二〇二六年`.

**Register:** 正式、克制、具權威感的書面語 (formal, restrained, authoritative written register).

- Write as a professional publication addressing 產品主管、法務、創辦人 — informed adults, not beginners.
- **Prohibited across all platforms:** sentence-final casual particles (啦、囉、欸、喔、耶、嘛), internet slang, exclamation marks (except inside a quotation), rhetorical filler (「說真的」「不誇張」「你沒看錯」), second-person hard sell (「你一定要知道」「別再…了」), and clickbait scaffolding (懶人包、必看、一次搞懂、超狂、爆).
- Second person is permitted only in the specific operator sense (「若貴公司將 AI 系統投放至歐盟市場」). Prefer 貴公司／業者／開發者 over bare 你.
- Restraint is the tone signal, not formality markers. Do not pad with 敬語 or bureaucratic throat-clearing; the register should read like a serious trade publication, not a government notice or a press release.

**Translation integrity:** Deliverables are **written in Chinese from the Researcher's English-language findings**, not machine-translated from an English draft. Where a source is quoted, the Chinese rendering is a translation and must be marked as such, with the original English retained (see Developer brief).

**Standing glossary (Developer must use these renderings consistently):**

| English | zh-TW rendering |
|---|---|
| EU AI Act / Regulation (EU) 2024/1689 | 《歐盟人工智慧法》(EU AI Act) |
| general application | 全面適用 |
| high-risk AI system (Annex III) | 高風險人工智慧系統(附件三,Annex III) |
| provider / deployer | 提供者(provider)/ 部署者(deployer) |
| GPAI model provider | 通用型人工智慧模型提供者(GPAI) |
| Article 50 transparency obligations | 第 50 條透明度義務 |
| synthetic content marking | 合成內容標示 |
| administrative fine | 行政罰鍰 |
| regulatory sandbox | 監理沙盒 |
| national competent authority | 國家主管機關 |
| harmonised standards | 調和標準(harmonised standards) |
| European Commission | 歐盟執委會 |
| AI Office | 人工智慧辦公室(AI Office) |
| Digital Omnibus | 數位簡化包裹法案(Digital Omnibus) |
| trilogue | 三方協商(trilogue) |
| extraterritorial reach | 域外效力 |
| placing on the market | 投放市場 |

---

## Content Structure

### Long-form Article

**Headline (3 options) — 繁體中文:**
- **A1(主選):**《歐盟人工智慧法》真正的期限在本週日:8 月 2 日起,哪些義務正式適用
- **A2:** 全面適用倒數 72 小時:2026 年 8 月 2 日,《歐盟人工智慧法》對開發者的實質影響
- **A3:** 歐盟預告了兩年,期限就在本週日——多數企業仍未完成準備

**Headline set B — 僅在 Researcher 確認延後法案已正式通過時採用:**
- **B1:** 歐盟讓步:《歐盟人工智慧法》最大一波義務延後,但並非全部
- **B2:** 被延後的期限,與未被延後的義務:2026 年 8 月 2 日仍具拘束力的部分
- **B3:** 布魯塞爾推遲了困難的部分,未推遲的部分才是重點

*Headline constraints:* 24–36 全形字。禁用問號式誘導標題與驚嘆號。若使用破折號,採全形——。

**Subheadline(副標):**
> 2026 年 8 月 2 日,全球第一部綜合性人工智慧法規進入全面適用階段。然而,在歐盟執委會自身推動的簡化提案,與 27 個會員國進度不一的落實之間,週一上午真正可執行的範圍,比爭論雙方所描述的都更狹窄,也更複雜。

*Constraint:* 60–90 全形字,單段。

**Structure:** Intro → Section 1 → Section 2 → Section 3 → CTA

Section headings must also be zh-TW; suggested renderings below are directional, and the Developer may refine wording but not scope.

- **Intro(約 230 中文字).** Open on the concrete date, not on 「人工智慧正在改變一切」. State the tension in the first three sentences: a scheduled deadline, an active effort to move it, and companies caught in between. Close the intro with the promise — three questions answered: 哪些義務生效、哪些遭到延後、業者該做什麼。

- **Section 1 —「8 月 2 日起正式適用的義務」(約 440 中文字).** The factual spine. Cover: Annex III high-risk classification duties; Article 50 transparency (synthetic content marking, chatbot and emotion-recognition disclosure); Member State penalty regimes becoming operational (with exact fine ceilings); the national regulatory sandbox requirement. Anchor each to the phase-in timeline (2025 年 2 月 禁止性規定 → 2025 年 8 月 GPAI → **2026 年 8 月** → 2027 年 8 月 既有系統/嵌入式產品). Use a compact timeline table with Chinese column headers — this section must be skimmable.

- **Section 2 —「實際被延後的部分」(約 440 中文字).** The Digital Omnibus and the delay fight. What was proposed, its legislative status *as of 2026 年 7 月 30 日*, and who pushed which way (industry, member states, Parliament, civil society). Be explicit about legal status: 提案 ≠ 通過 ≠ 生效. This is where the piece earns credibility — precision over drama. If the status is genuinely unresolved, **say so plainly and date-stamp the claim.**

- **Section 3 —「若貴公司將 AI 投放至歐盟市場」(約 400 中文字).** The practical payoff. Differentiate obligations by role — 提供者 vs. 部署者 vs. GPAI 模型提供者 — and by exposure (歐盟境內設立 vs. 自境外投放至歐盟市場). **The extraterritorial reach (域外效力) leads this section** and carries extra weight for the confirmed Taiwan / Greater China readership, most of whom are outside the EU. Give the honest strategic read: harmonised standards are still incomplete and national authorities are unevenly resourced, so 執法風險 ≠ 法律義務. Do not give legal advice; give an orientation map.

- **CTA(約 70 中文字).** Newsletter subscribe + one forward-looking hook (下一個節點:2027 年 8 月 2 日,既有 GPAI 模型與嵌入式高風險產品).

**Target length (converted for Chinese; PM-accepted rev-3):** **目標 1,600 中文字;硬性範圍 1,400–2,100 中文字**(不含標點、空白與英文原文括註),對應 CLAUDE.md 的 800–1,200 英文字(約 1.75 字/word)。Front matter records **both** `char_count_zh` and an approximate `word_count_en_equiv`. **This conversion ratio was accepted by the PM in rev-3 and is now settled — no further approval required.**

**Key argument (unchanged):**
> The 2 August 2026 milestone matters less as a compliance cliff than as the moment abstract regulation converts into enumerated, fineable duties — and the simultaneous push to delay it is the clearest signal yet that Europe is renegotiating the cost of its own rules in real time. Builders should plan for the *obligations* to arrive on schedule even where *enforcement* plainly will not.

**Must include sources from:** Researcher findings only. Minimum 3 cited (target 5). At least **2 must be primary** — the Regulation text / EUR-Lex, official Commission or AI Office communications. No claim about legal status may rest on secondary reporting alone. **Source titles and URLs stay in their original language** (see Developer brief, 引用與翻譯規則).

---

### Social Posts

**Four posts this cycle (rev-3): Twitter/X, LinkedIn, Threads, Instagram caption.** All four are written in 繁體中文 in the professional register defined above. Character limits are platform-counted, and CJK counting differs by platform — see the conversion table in the Developer brief. Each post must carry at least one citation-grade specific (a named obligation, an article number, or an exact figure); that specific is the post's entire value and is never the thing that gets cut for length.

- **Twitter/X(平台上限 280,中日韓字元每字計 2 → 實務上限約 120 中文字 + 連結):** 以倒數為切入(「距離全面適用尚餘 72 小時」)+ 一項可查證的具體事實(明確義務名稱或罰鍰上限)+ 連結。單則貼文,不開串。**不使用表情符號**(rev-2:專業語調下取消原先「最多一個 emoji」的容許)。用語必須精確:若延後狀態未定,寫「預定適用」而非「正式上路」。

- **LinkedIn(≤1300 字元;建議 500–700 中文字):** 面向產品主管、法務長與創辦人的實務觀點。首句點明利害,接 3–4 條短要點,每條對應「義務 → 影響對象 → 應檢查事項」。結尾以一個專業性的開放提問促進留言(例如詢問其團隊在落實哪一項義務時遭遇最大困難),而非情緒性提問。最多 3 個主題標籤,置於文末,可為英文(#EUAIAct #AIGovernance #AICompliance)。

- **Threads(≤500 字元;建議 300–400 中文字):** **rev-2 修訂——不再採用輕鬆、口語的風格。** Threads 在本頻道定位為「簡潔的專業短評」:單一觀點、平實句式、無術語堆疊,但同樣不使用語助詞、網路用語或表情符號。切入點仍是那組事實張力——一部指標性法規即將全面適用,而推動延後的正是提出該法規的機構本身——但以陳述而非調侃的語氣處理。可於結尾提出一個克制的提問,不得使用「你覺得呢?」這類隨性語句;不加標籤,不放引註編號。

- **Instagram caption(平台上限 2,200 字元,CJK 每字計 1;建議總長 350–600 中文字,含標籤)——rev-3 新增。** 本則貼文與圖卡(image card)**成對發布**,是四則社群貼文中唯一以視覺為主體者。文案的任務是承接圖卡上的日期主視覺,補上圖卡放不下的實質內容,而非重述圖卡文字。

  - **與圖卡的分工(硬性):** 圖卡承載「日期與事件」(`2026.08.02`、《歐盟人工智慧法》全面適用);文案承載「內容與判斷」(哪些義務、罰鍰上限、延後爭議現況、業者該檢查什麼)。**文案第一句不得與圖卡覆蓋文字逐字重複。**
  - **首行即為全部(關鍵限制):** Instagram 於動態牆僅顯示約前 125 個字元即截斷為「...更多」。因此開頭必須是一句可獨立成立、具資訊量的**鉤子句(≤ 40 中文字)**,自帶時間錨點與一項具體事實(例:倒數天數 + 明確義務名稱)。禁止以問句、寒暄或「你知道嗎」式開場浪費首行。
  - **結構(依序,以空行分段,便於行動裝置閱讀):**
    1. **鉤子句** — 單行,≤ 40 中文字,含日期錨點 + 一項可查證事實。
    2. **脈絡段** — 2–3 個短段落,每段 2–3 句、共約 200–350 中文字。依序處理:8 月 2 日起適用哪些義務(至少一個條文編號或罰鍰數字)→ 延後爭議的**法律現況**(必須帶「截至 2026 年 7 月 30 日」時間戳)→ 對台灣/大中華區業者的域外效力意涵(一句話,呼應文章 Section 3)。
    3. **CTA** — 一至兩句,引導閱讀完整分析,語氣克制(例:「完整分析與來源出處見個人簡介連結。」),不使用「快點」「別錯過」「趕快」等催促語。
    4. **連結說明** — Instagram 內文連結不可點擊,故須明確標示:`連結見個人簡介(link in bio)` 並附 `[LINK]` 佔位符供發布流程替換。**不得**在內文貼出裸露長網址。
    5. **標籤區** — 與正文以一行分隔線或空行隔開,置於最末。最多 8 個,中英混用可(例:#EUAIAct #歐盟人工智慧法 #AI治理 #AI法規 #人工智慧)。標籤計入 2,200 字元上限。不做標籤堆砌,不使用與內容無關的流量標籤。
  - **語氣:** 與其餘三則一致的正式書面語。**不使用表情符號、不使用顏文字、不使用驚嘆號、不使用分隔用的裝飾符號(如 ▬▬、✦、•••)**。段落之間以單一空行分隔即可。
  - **Alt text(無障礙,必附):** 另附一段 60–100 中文字的圖片替代文字,客觀描述圖卡構圖與其上文字(日期、法規名稱),不作行銷語。此段以獨立標記輸出,不計入 caption 字元數。
  - **禁止事項:** 不得在 caption 中重述整篇文章;不得出現引註編號 `[1]`(社群貼文以「來源見文章」處理);不得暗示本文為法律意見。

---

### Newsletter Digest

**Subject line (3 options) — 繁體中文:**
- **S1(主選):**《歐盟人工智慧法》真正的期限,就在本週日
- **S2:** 72 小時倒數:8 月 2 日起正式適用的義務
- **S3:** 本週末,歐盟人工智慧法規進入全面適用

*Constraint:* ≤ 22 全形字(行動裝置收件匣顯示上限約 15–20 字,關鍵字必須落在前 15 字內)。禁用驚嘆號、表情符號與全大寫英文。

**Preview text:** 距離全面適用尚餘三天:哪些義務生效、哪些遭到延後,以及在歐盟市場提供 AI 產品的業者應採取的行動。

*Constraint:* ≤ 45 全形字,不得與主旨重複用語。

**Structure:** Hook → 3 bullets → CTA
- **Hook(2 句):** 日期與矛盾點,直接切入,不鋪陳。
- **Bullet 1:** 哪些義務正式適用(列舉具體條文)。
- **Bullet 2:** 哪些部分已延後或仍在審議(附「截至 2026 年 7 月 30 日」時間戳)。
- **Bullet 3:** 對業者的實務判斷(義務如期到位,執法能量不均)。
- **CTA:**「閱讀完整分析 →」+ 文章連結。
- **總長 320–450 中文字**(對應原 180–250 英文字),純文字相容,單一連結。

---

### Image Card

**Concept (unchanged):** A calendar/countdown motif — not a courthouse cliché. Clean editorial poster: a large date block dominant in frame, with a thin ring of twelve small dots (abstracted EU star ring — **do not render an actual EU flag**, generators mangle it). Deep navy / EU-blue field, single warm amber accent on a countdown element to signal urgency without alarm. Flat vector-editorial style, generous negative space. No photorealism, no robots, no gavels, no glowing brains. The visual register must match the copy: restrained, editorial, **no urgency-red, no siren or warning iconography.**

**Text overlay (繁體中文, with English brand mark):**
- Primary: `2026.08.02`(數字主視覺,維持半形數字)
- Kicker(選用,置於日期上方小級數): `EU AI ACT`(法規英文原名,作為識別)
- Secondary: `《歐盟人工智慧法》全面適用`
- Tertiary(選用,單行): `哪些義務正式生效`
- Corner tag: `AI NEWS CHANNEL` — **CONFIRMED BY PM (rev-3): the brand tag remains in English and is NOT localised.** 這是品牌識別字樣,不視為面向讀者的內文;`AI 新聞頻道` 一案已由 PM 否決,不再列為選項。其餘所有覆蓋文字維持繁體中文。

**Pairing note (rev-3):** This card ships **paired with the Instagram caption**. The Designer and the Developer must not duplicate: the card carries the date and the statute name; the caption carries the substance. See the Instagram spec above for the division of labour.

**Designer constraint (strengthened for CJK):** Generate artwork with **no baked-in text whatsoever** — image generators corrupt Chinese glyphs far more severely than Latin type, frequently producing non-characters that read as illiterate. Composite **all** text as real typography in post.
- 字體:思源黑體 / Noto Sans TC(主標 Bold,副標 Regular)。**必須使用繁體中文字型**,不得以簡體字型替代——需逐字確認字形為繁體(例如「灣/湾」「為/为」「歐/欧」「適/适」)。
- 標點使用全形,《》書名號不得被裁切。
- 對比度符合 WCAG AA;於 200×200px 縮圖比例下逐字檢查中文可讀性(中文字在小尺寸下的辨識門檻高於拉丁字母,主標級數應較英文版本再放大約 10–15%)。

**Spec:**
- Social card: 1080×1080px (also serves as the Instagram post image)
- Article header: 2500×1686px (recompose, do not upscale — keep the date block clear of the 16:9 centre crop)

---

## Brief for Researcher

**Dry run (rev-3):** This cycle is a dry run — verified outputs only, no publication. This **does not relax the sourcing bar**. Every figure and legal-status claim must be sourced as if going live, because these findings become the reference set for the first live cycle.

**Research language is unchanged.** Sourcing and verification remain **language-agnostic and English/EU-primary**. The zh-TW requirement applies to the published deliverables, not to the evidence base. Two consequences, both binding:

- **Do not substitute Chinese-language coverage for primary sources.** The EU does not publish the Regulation, EUR-Lex records, or Commission communications in Chinese. Every legal-status claim must be sourced to the English (or other official EU language) original. Chinese-language secondary reporting is acceptable only as *reaction/context colour*, never as authority for a legal fact, and must be flagged as such.
- **Supply verbatim English for anything that will be quoted or translated.** For each quotable position under Q4, provide the exact original-language quote plus speaker, title, date, outlet, and URL. The Developer writes the Chinese rendering; the Researcher must not paraphrase or pre-translate, because a paraphrase cannot be responsibly re-quoted.
- **Q6 below (rev-2):** flag whether any official or semi-official Chinese-language rendering of key terms exists, so the deliverable's glossary is defensible.

**Mission:** Verify and source the 2 August 2026 EU AI Act milestone and the current status of any delay. Sources must be dated; anything undated is unusable. **Every claim about legal status must carry an "as of 30 July 2026 / 截至 2026 年 7 月 30 日" verification stamp.**

**Q1 — What exactly applies from 2 August 2026?** Enumerate with article references from the Regulation text: Annex III high-risk obligations; Article 50 transparency duties; Member State penalty/enforcement regimes; national regulatory sandbox obligation. Confirm exact administrative fine ceilings (absolute amount and % of global turnover) and which breach categories they attach to. **Give article numbers and figures literally** — these survive translation only if they are exact.

**Q2 — [DECISIVE] What is the legal status of the Digital Omnibus / any delay instrument as of 30 July 2026?** Proposed, in trilogue, adopted, in force, or withdrawn? Which specific provisions does it postpone, and to what new dates? Cite the official legislative-procedure record. **The Developer's headline set (A or B) depends entirely on this answer — give your verdict in one unambiguous sentence.**

**Q3 — Readiness gaps.** Status of harmonised standards (CEN-CENELEC) — delivered or delayed? Are member states' national competent authorities designated and resourced? Any official Commission / AI Office statement in the last 24–48 hours on the 2 August date.

**Q4 — Reaction and stakes.** Two to three attributable, quotable positions from distinct camps (industry association; civil society / digital rights; Commission or member-state official). Named speaker + date + outlet + **verbatim original-language quote**. No anonymous "critics say."

**Q5 — News-value check.** Confirm no larger AI story broke in the last 24–48 hours that would outrank this (major frontier model release, landmark court ruling, >$5B acquisition). **If something clearly outranks it, flag to CTO immediately with a one-line justification — do not silently substitute the topic.**

**Q6 — Terminology check (low effort, 15 minutes max).** For the key terms in the CTO glossary above, note whether an established Traditional-Chinese rendering is already in circulation — specifically in (a) Taiwan government or NSTC/MODA materials on AI governance, (b) major Taiwanese legal or trade press. Report divergences only; if a term has no settled rendering, say so and the CTO glossary governs. **This is a consistency aid, not a sourcing requirement — do not let it consume time budgeted for Q1–Q5.**

**Q7 — [NEW, rev-3] One extra operator-facing specific for the Instagram caption.** The Instagram post is the only deliverable that must stand entirely on its own without a clickable link, so it needs one concrete, self-contained, memorable fact — ideally a number (a fine ceiling, a count of Annex III categories, a count of member states with a designated competent authority, or the number of days between phase-in milestones). Supply **two candidates** with sources, so the Developer can pick the one not already used in the Twitter/X post. Low effort; draw from what Q1–Q3 already surfaced rather than doing new research.

**Minimum sources:** **5 total, of which ≥2 primary** (EUR-Lex / Commission / AI Office / Parliament legislative observatory). Maximum 2 from any single outlet. For each provide: full URL, publication date, publisher, source language, and a one-line reliability note. Flag any claim confirmable from only one source — the Developer must attribute it explicitly or drop it.

---

## Brief for Developer

**Inputs:** `working-notes/cto-analysis.md` (this file) + `working-notes/researcher-findings.md`. Do not introduce facts absent from the Researcher findings.

**Dry run (rev-3) — binding:** Produce and save every deliverable to full publication standard, then **stop**. Do **not** invoke any publishing script, API, scheduler, or send action for any platform. Add `status: dry-run` to the article's YAML front matter. Handoff is to the Supervisor, not to a platform.

**Language (non-negotiable):** All deliverable files contain **reader-facing copy in 繁體中文 (zh-TW, Taiwan usage)**. Compose in Chinese from the English findings — **do not draft in English and machine-translate.** Internal metadata keys in YAML front matter stay English (`title`, `subtitle`, `date`, …); their *values* are Chinese where they are reader-facing. Apply the Language & Register Directives and the standing glossary above verbatim.

**Output files (all under `knowledge-base/deliverables/2026-07-30/`):**
- `article.md` — YAML front matter (`title`, `subtitle`, `date: 2026-07-30`, `author`, `lang: zh-TW`, `status: dry-run`, `tags`, `char_count_zh`, `word_count_en_equiv`), Markdown body in Chinese, `## 參考來源` section at the end as a numbered list with publisher + date + URL.
- `social-posts.md` — **exactly four `##` sections, one per platform, in this order: Twitter/X → LinkedIn → Threads → Instagram.** Each heading carries a **platform-weighted** character count, e.g. `## Twitter/X (238/280 weighted, 105 中文字)`, `## Instagram (512/2200, 含 6 個標籤)`. The Instagram section additionally contains a clearly labelled `### Alt text(圖片替代文字)` sub-block and a visible `[LINK]` placeholder plus the 連結見個人簡介 line.
- `newsletter.md` — chosen subject line at top, alternates below, preview text, then body.
- `image-prompt.md` — full Designer prompt (**prompt itself in English** — image generators perform materially better on English prompts — with the **Chinese overlay strings quoted verbatim in a separate, clearly labelled `TEXT OVERLAY (composite in post, do NOT render)` block**), both dimensions specified, font instruction (Noto Sans TC / 思源黑體), plus text-overlay composite instructions. The corner tag string is `AI NEWS CHANNEL` in English — do not translate it.

**Formatting rules:**
- Article: H2 for the three sections; no H1 in body (title lives in front matter). Section 1 uses a compact timeline table with Chinese headers. Short paragraphs, 2–4 sentences.
- Inline citations as `[1]`, `[2]` mapped to the 參考來源 list. Every statistic, date, article number, and fine amount carries one. **Citation numbers appear in the article only — never in a social post or the newsletter.**
- Dates written as `2026 年 8 月 2 日`, never `8/2`, never `二〇二六年`.
- Half-width space between Chinese characters and adjacent Latin/numeric runs (`第 50 條`, `EU AI Act 於`). Full-width punctuation for Chinese sentences; do not mix `,` and `,` within a sentence.
- **Headline selection:** default to set A; use set B only if the Researcher's Q2 verdict confirms formal adoption of a delay. State which set you used in a one-line note at the top of `social-posts.md`.
- **No duplicate hook across the four social posts.** Each opens differently and leads with a different specific; the Instagram hook in particular must not repeat the Twitter/X opening line or the image-card overlay text.

**引用與翻譯規則 (citation & translation rules):**
- **Source list stays in the original language.** Titles and publisher names are not translated; a short Chinese gloss may follow in parentheses. URLs are never altered.
- **Direct quotes:** render in Chinese as a translation, then append the original in parentheses or a footnote, e.g. 「…」(原文:"…")。Mark translated quotes so no reader mistakes them for an official Chinese text.
- **Statutory language:** the Regulation has no official Chinese version. Where the article characterises what a provision says, write 「依第 50 條規定」 and cite — never present a Chinese rendering as if it were the authoritative statutory text. State once, in the article, that Chinese renderings of the Regulation are the publication's own translations.

**Platform requirements & CJK character-count conversion:**

| Platform | Platform limit | CJK counting | Practical zh-TW budget |
|---|---|---|---|
| Twitter/X | 280 weighted | **CJK counts as 2**; link fixed at 23 | (280 − 23) ÷ 2 ≈ 128 中文字 → **aim ≤ 120 中文字**, single post |
| LinkedIn | 1,300 characters | 1 per character | ≤ 1,300;target **500–700 中文字**; line breaks between bullets; ≤3 hashtags at end |
| Threads | 500 characters | 1 per character | ≤ 500;target **300–400 中文字**; no hashtags |
| **Instagram (rev-3)** | **2,200 characters** | **1 per character; hashtags count** | ≤ 2,200;target **350–600 中文字 including hashtags**; hook ≤ 40 中文字 in the first line (feed truncates ≈125 chars); ≤8 hashtags at end; `[LINK]` + 個人簡介 note; alt text supplied separately and **excluded** from the count |
| Newsletter | — | — | **320–450 中文字**, plain-text safe, one link |

Report both the raw and the weighted count for Twitter/X in the section heading; report the plain character count for LinkedIn, Threads and Instagram. If a post exceeds budget, cut a clause — do not delete the citation-grade specific (the named obligation or exact figure), which is the post's entire value.

**Tone guardrails (non-negotiable — professional register):**
- Baseline unchanged: clear, insightful, non-hype. **Added:** 正式、克制、具權威感的書面語. No casual register on any platform — **Threads and Instagram included.**
- **Banned — hype / clickbait:** 顛覆、革命性、劃時代、震撼、炸裂、神器、王炸、AI 軍備競賽、一切都變了、時代來臨、大爆發、必看、懶人包、一次搞懂、超狂、驚人、史上最強、你不可不知.
- **Banned — casual register:** sentence-final particles 啦/囉/欸/喔/耶/嘛/唷; 「說真的」「不誇張」「你沒看錯」「別再…了」「快來」; 表情符號 (all four platforms, including Twitter/X and Instagram — this supersedes rev-1's one-emoji allowance); 驚嘆號 outside quotations; 顏文字; 網路流行語; Instagram 常見的裝飾性分隔符號 (▬▬、✦、•••、＿＿).
- **Banned — non-Taiwan usage:** 人工智能、信息、网络/网路、视频、软件、硬件、程序(作 program 解)、数据、算法、优化、监管部门. Use the glossary renderings.
- **Banned — false precision / editorialising:** do not editorialise on whether the law is good or bad — report the tension, quote both camps. Where legal status is uncertain, write 「截至 2026 年 7 月 30 日」 rather than asserting. Avoid 「恐將」「勢必」「無疑」 — they smuggle in a judgement.
- **No legal advice** — include a one-line orientation disclaimer in Chinese at the foot of the article (本文為資訊整理,非法律意見). The Instagram caption must not imply legal advice either.

**Length:** 目標 1,600 中文字;hard fail outside **1,400–2,100 中文字**(不含標點、空白、英文括註). Report the actual `char_count_zh` in front matter, plus the approximate English-word equivalent for cross-check against CLAUDE.md's 800–1,200. **This range is PM-accepted (rev-3) and is the operative standard for zh-TW cycles.**

---

## Acceptance Criteria (for Supervisor)

- [ ] **DRY RUN respected** — `status: dry-run` present in `article.md` front matter; **no publish/send action was taken on any platform**; Supervisor's PASS is certified as "ready to publish," not "published"
- [ ] **All reader-facing copy is Traditional Chinese (zh-TW)** — article body, **all 4 social posts**, newsletter, image-card overlay strings. No untranslated English sentences except: proper nouns on first mention, source titles/URLs, hashtags, the `AI NEWS CHANNEL` brand tag, and original-language quotes retained alongside translations
- [ ] **No Simplified characters and no Mainland-usage vocabulary** anywhere in reader-facing copy (spot-check against the banned-usage list: 人工智能 / 信息 / 网络 / 视频 / 数据 / 算法)
- [ ] **Professional register held on all four platforms — Threads and Instagram included** — no casual particles, no emoji, no exclamation marks outside quotations, no clickbait scaffolding, no decorative separator glyphs
- [ ] Article is **1,400–2,100 中文字** (target 1,600); `char_count_zh` in front matter matches actual; `word_count_en_equiv` present and within CLAUDE.md's 800–1,200
- [ ] Minimum 3 sources cited (target 5), **≥2 primary/official**, each with publisher + date + working URL, titles left in original language
- [ ] Any direct quote appears as a marked translation with the original-language text retained; article states once that Regulation renderings are the publication's own translation
- [ ] **All 4 social posts present, in order (Twitter/X, LinkedIn, Threads, Instagram), formatted correctly and under limit** — Twitter/X ≤280 **weighted** (CJK = 2, link = 23) with both raw and weighted counts shown; LinkedIn ≤1,300; Threads ≤500; **Instagram ≤2,200 including hashtags**; counts shown in every heading
- [ ] **Instagram caption specifically:** hook is a self-contained line ≤40 中文字 carrying a date anchor and one verifiable specific; hook does **not** duplicate the Twitter/X opener or the image-card overlay text; legal-status claim date-stamped 「截至 2026 年 7 月 30 日」; CTA present; `[LINK]` placeholder **and** 連結見個人簡介 note both present; no bare URL in body; ≤8 hashtags placed at the end; **alt text block (60–100 中文字) present** and excluded from the character count
- [ ] Image card prompt generated, both specs present (1080×1080 and 2500×1686), Chinese overlay strings isolated in a do-not-render block, corner tag reads `AI NEWS CHANNEL` in English (**not** localised), Noto Sans TC / 思源黑體 instruction present, 200×200px legibility check noted
- [ ] Newsletter digest complete — chosen subject line + 2 alternates (all ≤22 全形字), preview text, Hook → 3 bullets → CTA, **320–450 中文字**
- [ ] No repeated topics from last 7 days — **N/A, cycle #001, archive empty; verified 2026-07-30**
- [ ] Headline set A/B selection matches the Researcher's Q2 verdict, and the selection is stated in `social-posts.md`
- [ ] Every legal-status claim is date-stamped 「截至 2026 年 7 月 30 日」
- [ ] Citation numbers `[n]` appear in `article.md` only — not in social posts or newsletter
- [ ] No banned hype or casual vocabulary; no legal advice; Chinese disclaimer line present
- [ ] All deliverable files exist under `knowledge-base/deliverables/2026-07-30/`

---

## Resolved by PM (rev-3)

All five rev-2 escalations are closed. Recorded here so downstream agents do not re-litigate them:

| # | Question (rev-2) | PM decision |
|---|---|---|
| 1 | 3 vs. 4 social posts (template inconsistency) | **4 posts.** `CLAUDE.md` and `.claude/agents/cto.md` updated to Twitter/X + LinkedIn + Threads + **Instagram caption (≤2,200 chars)**. Spec added above; Supervisor checks 4. |
| 2 | Is cycle #001 the dry run? | **Yes — dry run confirmed.** No live publish. See Publish Status. |
| 3 | zh-TW length conversion ratio | **Accepted as-is.** 1.75 chars/English word → 1,400–2,100 中文字, target 1,600. Settled standard for zh-TW cycles. |
| 4 | Image-card brand tag language | **Stays English: `AI NEWS CHANNEL`.** Not localised to 新聞頻道. |
| 5 | Intended audience | **Taiwan / Greater China readership confirmed.** Section 3's extraterritorial framing stands unchanged. |

---

## Escalations to PM

**Standing note (not a blocker):** No monetisation, distribution, or channel-strategy decisions are made in this document — out of CTO scope per the constitution. The addition of Instagram as a fourth platform is treated here purely as an editorial-format requirement handed down by the PM; the associated account setup, posting cadence, and any commercial use of the channel remain PM decisions.

_No open editorial escalations. All rev-2 items resolved above._
