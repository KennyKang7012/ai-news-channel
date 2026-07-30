# Constitution & Agent 規格調整紀錄

_日期：2026-07-30_
_延續文件：[setup-fixes-log.md](./setup-fixes-log.md)（API 金鑰與 script 連線修正）_

本文件記錄兩件事：(一) 今天為了「4 則社群貼文 + Instagram + 繁體中文專業語調」所做的原始版本 vs 調整後版本對照；(二) 調整過程中發現、**原作者當初設計時可能沒注意到**的既有問題與新落差，供之後處理。

---

## 一、今日異動對照（原始版本 → 調整後版本）

### 1. `CLAUDE.md`（第 15 行）

**原始：**
```
- 3× short posts (Twitter/X, LinkedIn, Threads)
```
**調整後：**
```
- 4× short posts (Twitter/X, LinkedIn, Threads, Instagram caption)
```

### 2. `README.md`（Daily Output 表格）

**原始：** 只有 Twitter/X、LinkedIn、Threads 三列短貼文。
**調整後：** 新增一列
```
| Caption | Instagram | ≤2,200 chars |
```

### 3. `.claude/agents/cto.md`

**原始：** Content Structure → Social Posts 只列 3 個平台；但 Acceptance Criteria checklist 卻寫「All **4** social posts formatted correctly」（兩處本來就互相矛盾，見下方第二節問題 1）。
**調整後：** Social Posts 新增第 4 項 Instagram caption（≤2,200 字，含 hook + 短context + CTA + link-in-bio 提示）；Acceptance Criteria 改為「All 4 social posts formatted correctly (Twitter/X, LinkedIn, Threads, Instagram)」，兩處對齊。

### 4. `.claude/agents/developer.md`

**原始：** Social Posts 只定義 Twitter/LinkedIn/Threads 三個平台；輸出檢查表也只列這三個。
**調整後：** 新增 Instagram（≤2,200 字）規格與對應檢查項。

### 5. `.claude/agents/supervisor.md`

**原始：** Content Quality Check → Social Posts 只檢查 Twitter/LinkedIn/Threads 三項字數上限。
**調整後：** 新增 Instagram caption ≤2,200 字元的檢查項。

### 6. `working-notes/pm-brief.md`

**原始：** 無語言/語氣指示（沿用 CLAUDE.md 預設英文 + non-hype）。
**調整後：** 新增「語言：繁體中文」「語氣：專業」兩項 Special Instructions。

### 7. `working-notes/cto-analysis.md`（rev-1 → rev-2 → rev-3）

- **rev-1**：英文輸出，主題為 EU AI Act 2026/8/2 生效里程碑，3 則社群貼文。
- **rev-2**：改為全繁體中文、專業語調輸出；建立 17 詞術語對照表；字數規格從英文字數換算為中文字數（1,400–2,100 中文字）；Threads 語氣從「輕鬆口語」改為「簡潔的專業短評」；同時提出 5 項待 PM 決策的問題。
- **rev-3**：套入 PM 對 5 項問題的裁示 —— 改為 4 則貼文（新增 Instagram 規格）、明確標註本輪為 **Dry Run**、確認字數換算比例、確認品牌標籤維持英文 `AI NEWS CHANNEL`、確認目標讀者為台灣/大中華地區。5 項 escalation 全數結案，僅保留「不做商業化決策」這條常態備註。

對應決策存檔：`knowledge-base/decisions/2026-07-30-editorial.md`（同步更新至 rev-3）。

---

## 二、調整過程中發現的既有問題（原作者可能沒注意到）

以下問題並非今天調整才產生，而是在核對「4 vs 3 則貼文」「中文輸出」時，順藤摸瓜發現的原始設計落差。已標註風險等級與建議處理順序。

### 問題 1｜社群貼文數量：`cto.md` 自身前後矛盾（已解決）

`cto.md` 的 Content Structure 一直只定義 3 個平台，但同一份檔案的 Acceptance Criteria checklist 卻寫「All **4** social posts formatted correctly」——這個矛盾從專案建立時就存在，不是今天才有。今天透過 PM 裁示「採用 4、新增 Instagram」已一併解決並讓兩處對齊，但這說明**原始模板本身就沒有內部自洽**，值得留意其他 agent 檔案是否也有類似的數字不一致。

### 問題 2｜圖卡產出檔名三種寫法不一致（🔴 阻斷性 → ✅ 已修正 2026-07-31）

目前全專案對「圖卡 prompt 檔案」的命名並不一致：

| 位置 | 檔名 |
|---|---|
| `CLAUDE.md`（Definition of Done） | `image-card.png`（or prompt） |
| `README.md` / `developer.md` / `designer.md` / `supervisor.md` / `verify_build.sh` | `image-prompt.md` |
| `working-notes/cto-analysis.md`（今天 rev-2/rev-3，CTO 產出） | `image-card-prompt.md` |

**影響：** 如果 Developer 依照今天 `cto-analysis.md`「Brief for Developer」段落逐字產出檔名（`image-card-prompt.md`），但 `verify_build.sh` 與 `supervisor.md` 只認得 `image-prompt.md`，就會判定「檔案不存在」而 FAIL——即使內容完全符合規格。這是目前唯一會直接讓**今天這輪 dry run** 判定失敗的具體風險。

**建議：** 統一為 `image-prompt.md`（5 處既有引用 vs. 1 處新寫法），在啟動 Developer 之前先修正 `cto-analysis.md` 裡的檔名，或明確告知 Developer 以 `image-prompt.md` 為準。

**修正結果（2026-07-31）：** 已將 `working-notes/cto-analysis.md` 第 265 行的 `image-card-prompt.md` 改為 `image-prompt.md`，與其餘 5 處引用對齊。未變更其他任何檔案。

### 問題 3｜`verify_build.sh` 的字數檢查（`wc -w`）不支援中文（🔴 高風險 → ✅ 已修正 2026-07-31）

已實測驗證：
```
$ echo -n "測試中文字數測試" | wc -w
1
```
8 個中文字，`wc -w` 只算出 1 個「字」——因為中文沒有空白斷詞，`wc -w` 是以空白分隔計數，對中文文本幾乎沒有意義。

**影響：** 今天的文章規格是「1,400–2,100 中文字」，但 `verify_build.sh` Check 3 仍然用 `wc -w` 判斷「是否在 800–1200 之間」。即使文章長度完全符合 CTO 規格，這項檢查幾乎必定回報字數遠低於 800 而判定 FAIL。

**原因推測：** 原作者設計這支 script 時應該只設想過英文輸出，沒有處理 `CLAUDE.md` 自己就寫明允許的「Traditional Chinese variant on request」這個情境。

**建議：** 本輪（dry run）先由 Supervisor 人工複核字數，略過此自動檢查；長期則應在 script 內加入中文字元偵測邏輯（例如改用 `wc -m` 扣除標點空白，或依 CJK 字元比例切換計算方式）。

**修正結果（2026-07-31）：** `verify_build.sh` Check 3 改為先讀取 `article.md` YAML front matter 的 `lang:` 欄位；若為 `zh*`，改用 `python3` 以 Unicode 正則（`[一-鿿]`）計算 CJK 字元數，門檻採 CTO 已確認的「1,400–2,100 中文字」；否則維持原本 `wc -w` 的 800–1200 英文字判斷。已用合成測試檔驗證：100 次重複的 11 字中文片語被正確算出約 1,100 字並判定「超出範圍」（`wc -w` 對同樣內容只會算出 1，凸顯修正前後差異）。刻意使用 `python3` 而非 bash 內建字串長度，避免重蹈問題 4 的 locale 相依陷阱。此修正不影響英文文章路徑（`wc -w` 邏輯原封不動）。

### 問題 4｜Twitter 字數檢查依賴 bash 字串長度，是隱性的 locale 相依風險（🟡 中低風險 → ✅ 已修正 2026-07-31）

`verify_build.sh` 用 `${#TWITTER_POST}`（bash 內建字串長度）計算字數。已實測：

```
LANG=zh_TW.UTF-8   →  ${#string} 正確以「字元」為單位計算
```

在本機環境（`zh_TW.UTF-8`）目前運作正常。但這個行為**是 locale 相依的**：若這支 script 之後被搬到 locale 設為 `C`/`POSIX` 的環境（例如某些 CI、Docker 預設環境），bash 會退化為以 **byte** 為單位計算長度，而中文字在 UTF-8 下每字約佔 3 bytes，會讓字數被灌水約 3 倍，導致原本合格的中文貼文被誤判超過上限。

**建議：** 若要長期支援中文輸出，應改用不依賴 shell locale 的計數方式（例如呼叫 Python `len()`），而不是相信 bash 預設行為在所有部署環境都一致。

**修正結果（2026-07-31）：** `verify_build.sh` Check 5（Twitter）的 `${#TWITTER_POST}` 改為 `python3 -c "import sys; print(len(sys.argv[1]))"`，字數計算不再受 shell locale 影響。

### 問題 5｜`verify_build.sh` 完全沒有檢查第 4 則貼文（Instagram）（🟡 中風險 → ✅ 已修正 2026-07-31）

確認 script 全文沒有任何一行涉及 Instagram。今天新增第 4 則貼文規格後，即使 Developer 漏做 Instagram caption，`verify_build.sh` 也不會發現、不會判定 FAIL——這項規格目前完全仰賴人工複查。

**建議：** 後續應在 script 中補上 Instagram caption 的存在性與 ≤2,200 字元檢查，否則「4 則貼文」的驗收形同虛設。

**修正結果（2026-07-31）：** 新增 Check 6（`📸 Checking Instagram caption length`），沿用 Twitter 檢查的 awk 區段擷取邏輯，配上與問題 4 同樣的 `python3 len()` 計數，門檻 ≤2,200 字元；找不到 Instagram 區段時直接判定 FAIL（而非僅警告），因為這正是問題 5 要堵住的漏洞——Developer 漏做 Instagram 必須被抓到。原本 Check 6/7 依序遞補為 Check 7（圖卡尺寸）、Check 8（電子報主旨）。

**修正過程中意外發現的新問題（非原 6 項之一，一併修正）：** Twitter／Instagram 區段擷取的 awk 邏輯用了 `/\S/` 來判斷「非空白行」，但專案預設執行環境是 macOS 內建 `awk`（onetrueawk/BSD awk，非 gawk），這個 awk **不支援 PCRE 的 `\S`**（比對「非空白字元」），會把它當作字面的大寫字母 "S" 處理——也就是說，只有貼文內容剛好含有大寫 "S" 才會被印出來，否則一律回報「Could not parse」。已實測驗證（同一份合成測試資料，換成 `NF>0` 後才正確擷取到內容）。已將 Twitter 與新增的 Instagram 兩處 `/\S/` 都改為可攜性更好的 `NF>0`。這個問題原本就存在於 Check 5，只是這次為了修問題 4/5 才顯露出來。

### 問題 6｜`developer.md` 的來源數量硬性下限（3 則）低於今天 CTO brief 的實際要求（5 則，≥2 一手來源）（🟢 低風險 → ✅ 已修正 2026-07-31）

`developer.md` 的 Hard Constraints 寫「來源少於 3 則 → STOP」，這是該 agent 定義檔裡的**通用最低標準**。但今天 `cto-analysis.md` 要求「最少 5 則來源，其中 ≥2 為一手來源」，比通用下限更嚴格。

**影響：** 若 Developer 只依照自己 agent 定義裡的下限判斷是否該喊停，可能在只有 3–4 則、且沒有一手來源的情況下誤判「合格」，實際上未達今天這輪真正的驗收標準。

**建議：** 提醒 Developer/Supervisor 執行時以「當輪 CTO brief」規格為準，agent 定義檔裡的數字只是保底下限，不是實際驗收線；agent 定義檔本身目前沒有寫明這個優先順序關係。

**修正結果（2026-07-31）：** 在 `developer.md` 的 Hard Constraints 該行補上一句：此為通用下限、非驗收線，若當輪 `cto-analysis.md` 有更嚴格的來源規格（數量與一手來源比例），以該 brief 為準，通用下限僅在 brief 未特別規定時適用。

---

## 三、建議處理順序

| 優先度 | 項目 | 原因 | 狀態 |
|---|---|---|---|
| 🔴 1 | 問題 2：圖卡檔名對齊 | 不修正，今天這輪 Developer 產出後會被誤判 FAIL | ✅ 已修正 2026-07-31 |
| 🔴 2 | 問題 3：中文字數驗證邏輯 | 不修正，文章一定會被誤判字數不足 | ✅ 已修正 2026-07-31 |
| 🟡 3 | 問題 5：Instagram 自動驗證缺口 | 本輪可先人工複查代替，不阻斷 dry run | ✅ 已修正 2026-07-31 |
| 🟢 4 | 問題 4：bash locale 相依風險 | 目前環境恰好正常，建議記錄，未來重構 script 時一併處理 | ✅ 已修正 2026-07-31 |
| 🟢 5 | 問題 6：來源數量下限落差 | 人工留意即可，不需改檔案 | ✅ 已修正 2026-07-31 |
| — | （新發現）Twitter/Instagram 區段擷取的 `/\S/` 在 macOS 內建 awk 下失效 | 修問題 4/5 時實測發現，`\S` 被當字面 "S" 處理，導致擷取結果幾乎必為空 | ✅ 已修正 2026-07-31（改用 `NF>0`） |
