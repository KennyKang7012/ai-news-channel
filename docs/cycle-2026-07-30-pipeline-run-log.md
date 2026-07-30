# 首次完整管線執行紀錄與修正（2026-07-30 循環）

_日期：2026-07-31_
_延續文件：[setup-fixes-log.md](./setup-fixes-log.md)（API 金鑰與 script 連線修正）、[constitution-revision-log.md](./constitution-revision-log.md)（constitution/agent 規格調整與既有問題修正）_

本文件記錄 2026-07-30 循環第一次真正跑 **Researcher → Developer → Designer** 三個 agent（非 dry-run 文件調整，是真的呼叫 API 產出內容）過程中，實測才浮現、documentation review 階段看不出來的問題，以及對應修正。依發現順序排列。

---

## 一、問題 1｜`call_gemini.py` 沒有開啟 Google Search Grounding，Researcher 找到的來源可能是編造的

**發現時機：** 啟動 Researcher 前，複查它實際會呼叫的 `call_gemini.py`。

**問題：** 該 script 呼叫 Gemini API 時是純文字生成請求，沒有帶 `"tools": [{"google_search": {}}]`。這代表 Gemini **沒有即時上網查證能力**，只能根據訓練資料生成「看起來合理」的來源／URL／日期。這直接牴觸 `researcher.md` 自己的硬性規定「Do NOT fabricate sources」，也牴觸 `CLAUDE.md`「最少 3 個已驗證來源」的要求；而 Supervisor 端的檢查只是 `grep -c "http"`，並不會驗證這些 URL 是否真實存在。

**修正（`.claude/scripts/call_gemini.py`）：**
- `call_gemini()` 新增 `grounding: bool = True` 參數，帶 `payload["tools"] = [{"google_search": {}}]`
- 解析回應中的 `candidate.groundingMetadata.groundingChunks`，把 Google Search 實際回傳的來源網址整理成 `## Grounding Sources (Google Search)` 區塊附加在輸出後面；若開了 grounding 卻沒有回傳任何來源，明確標註 `(none returned — treat this response as unverified and flag it)`，而不是悄悄放過
- CLI 新增 `--no-grounding` 旗標；`--test` 連線測試預設關閉 grounding（純連線測試不需要，也避免無謂耗用配額）

**驗證：** 對同一支 script 分別測試「有 grounding」「無 grounding」，確認語法正確、`--test` 仍正常回應。

---

## 二、問題 2｜開啟 grounding 後，預設模型在免費方案下配額不足（429）

**發現時機：** 修完問題 1 後，實際發一則 grounded 查詢做驗證。

**現象：**
```
HTTP 429: RESOURCE_EXHAUSTED — You exceeded your current quota...
```
`call_gemini.py` 預設模型 `gemini-3-flash-preview` 加上 grounding，直接被配額擋下；純文字（無 grounding）呼叫同一把 Key 完全正常，證實問題出在 grounding 這條配額，不是 Key 本身失效。

**排查過程：** 依序實測三個模型的 grounding 呼叫：

| 模型 | grounding 結果 |
|---|---|
| `gemini-3-flash-preview`（wrapper 預設） | ❌ 429 RESOURCE_EXHAUSTED |
| `gemini-2.0-flash` | ❌ 429，錯誤訊息明確顯示 `limit: 0`（免費方案這個模型完全沒有配額，連非 grounding 呼叫都不行） |
| `gemini-2.5-flash` | ✅ 正常，回傳真實可查證來源（實測範例：The Guardian 一則 xAI 告 Minnesota 州的報導，含 grounding redirect URL） |

**修正（`.claude/agents/researcher.md`）：** 三段研究查詢的範例指令全部改成明確帶 `--model gemini-2.5-flash`；新增說明段落：務必明確指定這個模型、不可省略；每次回應會附加 `## Grounding Sources` 區塊，只有這裡列出的網址才能寫進 `Sources Verified`，若該區塊顯示「(none returned...)」則該次回應視為未驗證、需標記，不可引用其中看起來像網址的文字。

**未變動：** `call_gemini.py` 的 `DEFAULT_MODEL` 仍是 `gemini-3-flash-preview`，只在 Researcher 的呼叫上明確覆寫模型，避免影響其他可能用到這支 wrapper 的一般（非 grounding）用途。

---

## 三、問題 3｜Designer 實際呼叫的 provider 跟 constitution 宣稱的不一致

**發現時機：** 啟動 Designer 前複查 `designer.md`。

**問題：**
- `CLAUDE.md` 團隊表格與 `constitution/skill-stack.md` 都寫「Designer 由 gpt-image-2（OpenAI）驅動」
- 但 `designer.md` Task 1（精修圖片 prompt）的範例指令卻是呼叫 `call_gemini.py`（Gemini），跟宣稱的 provider 矛盾
- `call_gemini_vision.py` 檔名寫「gemini_vision」，但檔頭註解其實寫著「Replaces: Gemini Vision (retired from this role)」——內容早已是純 OpenAI（gpt-5.5 文字精修 + gpt-image-2 圖片生成）wrapper，只是檔名沒跟著改
- `CLAUDE.md` 還有一條硬性規則「Researcher and Designer run on separate Gemini instances — no shared context」，這條規則現在也是過時的，因為 Designer 早就不在 Gemini 上跑了

這跟問題 2 節（constitution-revision-log.md）記錄過的「圖卡檔名三種寫法不一致」是同一類 bug：文件宣稱跟實際程式碼對不上。

**PM 決策：** 現在就修，讓 Designer 真正符合 constitution 宣稱的架構（而非留到之後）。

**修正（`.claude/agents/designer.md`）：**
- Task 1 改成呼叫 `call_gemini_vision.py`（OpenAI gpt-5.5 精修），不再呼叫 Gemini；並註明「不要加 `--generate`，那會觸發付費的 gpt-image-2 圖片生成，除非 PM 明確要求本輪真的要產出圖片」
- 檔頭補充說明：`call_gemini_vision.py` 這個檔名是換 provider 前留下來的舊名，內容已是純 OpenAI wrapper
- Hard Constraints 的「Do NOT share Gemini context with the Researcher agent」改成「Do NOT share session context with the Researcher agent（Designer 現在跑 OpenAI，Researcher 跑 Gemini，本來就是不同 provider，但保持上下文隔離的精神不變）」

**尚未修正、記錄待處理：** `CLAUDE.md` 本身「Researcher and Designer run on separate Gemini instances」那條硬性規則沒有動——這是核心 constitution 文件的措辭，屬於編輯/架構決策層級，本次僅先讓 `designer.md` 實際行為對齊，`CLAUDE.md` 的措辭更新留待 PM 之後指示。

---

## 四、問題 4｜`call_gemini_vision.py` 有跟 `call_openai.py` 一模一樣的 gpt-5.5 參數 bug

**發現時機：** 決定讓 Designer 改叫 `call_gemini_vision.py` 後，先跑 `--test` 驗證，直接炸掉：
```
HTTP Error 400: Bad Request
```

**根因：** `call_gemini_vision.py` 內部的 `refine_image_prompt()` 函式**獨立重新實作**了一份 gpt-5.5 chat completions 呼叫邏輯，沒有共用 `call_openai.py` 既有的程式碼——而這份獨立實作用的是 `"max_tokens": 512` + `"temperature": 0.6`，正是 [setup-fixes-log.md](./setup-fixes-log.md) 第 4、5 項已經修過的同一種 gpt-5.5 相容性錯誤（gpt-5.5 只接受 `max_completion_tokens`，且不支援非預設 `temperature`）。因為是兩份獨立程式碼，第一次修 `call_openai.py` 時完全沒有觸及這裡，直到今天真的執行到 Designer 才被實測抓出來。

**修正（`.claude/scripts/call_gemini_vision.py`，第一輪，尚未解決重複問題本身）：**
- `refine_image_prompt()` 的 payload 改為 `"max_completion_tokens": 512`，移除 `temperature`
- `--test` 路徑的 payload 同步改為 `"max_completion_tokens": 10`

**驗證：** `python3 call_gemini_vision.py --test` → `✅ Image API ready`。

---

## 五、問題 5｜（PM 主動指示處理）`call_openai.py` 與 `call_gemini_vision.py` 程式碼重複，同一個 bug 得修兩次

**發現時機：** PM 對「為什麼 Designer 精修 prompt 沒有直接用 `call_openai.py`」提出疑問，追查後確認：`call_gemini_vision.py` 的文字精修功能是獨立重寫的，並未重用 `call_openai.py` 的 `call_openai()` 函式——這正是問題 4 那個 bug 得在兩個地方分別修的根本原因，且未來 gpt-5.5 API 若再變動（例如再換一次參數名稱），同樣的錯誤會再次分別在兩處出現。

**PM 決策：** 立即處理重複風險，讓兩支 script 共用同一份呼叫邏輯。

**修正：**

`.claude/scripts/call_openai.py`：
- `call_openai()` 新增可選參數 `system: str = None`（支援 system prompt）與 `max_completion_tokens: int = 4096`（可覆寫，原本寫死 4096）
- 錯誤處理從直接 `sys.exit(1)` 改為 `raise RuntimeError(...)`，讓這個函式可以被其他 script 安全 import——呼叫方可以自行 `try/except RuntimeError` 決定要不要優雅降級，而不是被強制整個行程結束
- `main()` 補上 `try/except RuntimeError` 包住原本的呼叫，CLI 對外行為（印錯誤訊息、`exit(1)`）與修改前完全一致，不影響既有用法

`.claude/scripts/call_gemini_vision.py`：
- 刪除 `refine_image_prompt()` 內重複實作的 request/payload 邏輯，改成 `from call_openai import call_openai` 後直接呼叫共用函式，傳入 `system=` 帶 creative-director 指示、`max_completion_tokens=512`
- 用 `try/except RuntimeError` 保留原本「精修失敗就退回用原始 prompt」的容錯行為（不因共用函式改成 raise 而讓整支 script 中斷）
- `--test` 路徑同步改用共用函式，刪除自己重寫的一份 request 邏輯
- Import 說明：`call_openai.py` 與 `call_gemini_vision.py` 在同一個目錄（`.claude/scripts/`），Python 執行 script 時會自動把該 script 所在目錄放進 `sys.path[0]`，所以 `import call_openai` 不受呼叫時的工作目錄影響，直接可用

**效益：** 之後 gpt-5.5 的 API 參數若再變動，只需要改 `call_openai.py` 一個地方，`call_gemini_vision.py` 自動跟著受益，不會再出現「同一個 bug 分別修兩次」的狀況。

**驗證：** 三項測試皆通過——
1. `call_openai.py --test` → `✅ OpenAI API connection successful`
2. `call_gemini_vision.py --test`（透過 import 呼叫共用函式）→ `✅ Image API ready`
3. `call_gemini_vision.py --prompt "a sunset over mountains" --spec 2500x1686`（實際端對端精修呼叫）→ 正確回傳精修後的英文 prompt

---

## 六、本輪（2026-07-30）實際產出成果

以上修正都是為了讓這輪 Researcher → Developer → Designer 能夠真正執行、且不產出編造內容。三個 agent 皆已完成：

**Researcher：**
- `working-notes/researcher-findings.md`、`knowledge-base/project-docs/sources-2026-07-30.md`
- 12 個來源（≥2 primary），全數透過 Google Search grounding 驗證
- 關鍵結論：Digital Omnibus 延遲已於 2026-07-27 正式生效（Regulation (EU) 2026/1744），觸發 CTO brief 事先設定的條件分支——**改用 Headline Set B**（「延遲」為主軸）而非預設的 Set A

**Developer：**
- `knowledge-base/deliverables/2026-07-30/`：`article.md`（1,971 中文字）、`social-posts.md`、`image-prompt.md`、`newsletter.md`
- 正確套用 Headline Set B、正確使用 `image-prompt.md` 檔名
- `bash run_daily.sh --dry-run` 內建的 Supervisor 腳本驗證（`verify_build.sh`）全數 PASS
- 自行標記一項需要 Supervisor 複核的措辭調整（CTO brief 範例副標題把 Digital Omnibus 寫成「提案中」，Developer 依 Set B 現況修正為已生效，但保留原本字數/結構）

**Designer：**
- `working-notes/designer-output.md`
- 兩個 prompt（2500×1686 header、1080×1080 社群方形卡）皆已精修，規格核對全過
- Task 2（既有圖片審查）正確回報「無圖片可審查」（Developer 本輪只產出 prompt，未產出實際圖片，符合 dry run 精神）

---

## 驗證結果總表

| 項目 | 驗證方式 | 結果 |
|---|---|---|
| `call_gemini.py` grounding 開關 | `--test`（無 grounding）+ 實際 grounded 查詢 | ✅ |
| Researcher 用 `gemini-2.5-flash` grounding | 實際研究查詢，來源可交叉核對 | ✅ 12 來源皆驗證 |
| `designer.md` Task 1 改叫 OpenAI | `call_gemini_vision.py --test` | ✅ |
| `call_gemini_vision.py` gpt-5.5 參數修正 | `--test` | ✅ |
| `call_openai.py` / `call_gemini_vision.py` 共用重構 | `call_openai.py --test`、`call_gemini_vision.py --test`、實際精修呼叫 | ✅ 三項皆過 |
| Developer 產出通過 `verify_build.sh` | `run_daily.sh --dry-run` Step 1/4 | ✅ PASS |
| `verify_build.sh` Twitter/Instagram `---` 擷取修正 | `verify_build.sh --date 2026-07-30`（真實資料重跑） | ✅ Twitter 138→135，Instagram 566 不變 |

**尚未處理（記錄待指示）：** `CLAUDE.md` 的「Researcher and Designer run on separate Gemini instances」規則措辭過時，尚未更新。

---

## 七、Supervisor 正式驗收後追加修正｜`verify_build.sh` Twitter/Instagram 擷取的 `---` 分隔線 bug

**發現時機：** Supervisor 對 2026-07-30 交付物做正式驗收時，獨立重新計算所有字數，與腳本自動檢查的結果比對，發現 Twitter 一項對不上。

**問題：** `verify_build.sh` Check 5（Twitter）與 Check 6（Instagram）的 awk 擷取邏輯，退出條件只有「遇到下一個 `##` 標題」，沒有處理 `social-posts.md` 每個段落之間的 `---` 分隔線。若貼文內容與下一個 `##` 標題之間夾著一行單獨的 `---`，這 3 個字元會被一併算進字數，造成灌水。

**實測影響：** 這輪 Twitter 貼文，腳本原本回報 138 字元，Supervisor 手動獨立驗算的真實字數是 135。差 3 個字元剛好對應被誤算進去的 `---`。這輪因為 135、138 都遠低於 280 上限，不影響 PASS/FAIL 結果，但 Supervisor 主動指出：這是這支腳本(已於本文件第一輪修正)第一次真正跑完整輪，若未來某輪貼文字數卡在 280 上限附近，這 3 個字元的灌水可能造成誤判 FAIL。Instagram 這次沒踩到，是因為那個段落後面接的是 `### Alt text` 子標題，中間沒有夾 `---`，純屬巧合，不是邏輯本身沒問題。

**修正（`.claude/scripts/verify_build.sh`）：** Twitter、Instagram 兩處 awk 擷取的退出條件都改成同時比對 `^##` 或 `^---+$`，兩者任一命中就停止擷取：
```awk
found && (/^##/ || /^---+$/){exit}
```

**驗證：** 用今天真實的 2026-07-30 交付物重跑 `verify_build.sh --date 2026-07-30`：Twitter 從 138 改為 **135**（與 Supervisor 手動驗算結果完全吻合），Instagram 維持 566（不受影響），8 項檢查全數 PASS。
