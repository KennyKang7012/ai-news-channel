# Setup Fixes Log

記錄專案啟動過程中，測試 API 連線時發現並修正的問題。依修正時間排序。

---

## 1. `.env` — `CHANNEL_NAME` 未加引號導致 `source .env` 失敗

**檔案：** `.env` (第 39 行)

**問題：**
```bash
CHANNEL_NAME=AI News Daily
```
執行 `source .env` 時，bash 把等號後第一個空格視為指令分隔，導致 `News`、`Daily` 被當成獨立指令執行，出現 `command not found: News`，並讓後續變數載入中斷。

**修正：**
```bash
CHANNEL_NAME="AI News Daily"
```
含空格的值一律加上雙引號。

---

## 2. `.env` 變數未 `export`，子行程讀不到金鑰

**現象：** 即使 `source .env` 成功，`GEMINI_API_KEY` 在 shell 內有值，但 `call_gemini.py`（Python 子行程）仍回報 `GEMINI_API_KEY not set`。

**原因：** `.env` 內僅為單純賦值（`KEY=value`），未加 `export`。單純 `source` 只會設定當前 shell 的區域變數，不會傳遞給子行程。

**修正（操作方式，非改檔案）：**
```bash
set -a; source .env; set +a
```
用 `set -a`（allexport）載入 `.env`，讓所有變數自動 export 給後續指令與子行程。之後測試/執行任何 script 前都需要用這個方式載入環境變數，不能只用 `source .env`。

---

## 3. `call_gemini.py` — `thinkingConfig` 欄位位置錯誤

**檔案：** `.claude/scripts/call_gemini.py`

**問題：** Gemini 3 系列請求 payload 把 `thinkingConfig` 放在與 `generationConfig` 同一層（top-level），導致 API 回傳：
```
HTTP 400: Unknown name "thinkingConfig": Cannot find field.
```

**修正：** 將 `thinkingConfig` 移到 `generationConfig` 內部（巢狀），符合 Gemini API 的實際 schema。

```python
# Before
payload = {
    "contents": [...],
    "generationConfig": generation_config,
    "thinkingConfig": {"thinkingLevel": thinking_level}
}

# After
generation_config["thinkingConfig"] = {"thinkingLevel": thinking_level}
payload = {
    "contents": [...],
    "generationConfig": generation_config
}
```

---

## 4. `call_openai.py` — `gpt-5.5` 不支援 `max_tokens`

**檔案：** `.claude/scripts/call_openai.py`

**問題：**
```
HTTP 400: Unsupported parameter: 'max_tokens' is not supported with this model.
Use 'max_completion_tokens' instead.
```

**修正：** 將請求參數由 `max_tokens` 改為 `max_completion_tokens`。

---

## 5. `call_openai.py` — `gpt-5.5` 不支援自訂 `temperature`

**檔案：** `.claude/scripts/call_openai.py`

**問題：**
```
HTTP 400: Unsupported value: 'temperature' does not support 0.7 with this model.
Only the default (1) value is supported.
```

**修正：** 移除 payload 中的 `temperature` 參數，改用模型預設值。

---

## 驗證結果

修正完成後，三組核心 AI 模型 API 金鑰皆已驗證可正常連線：

| 金鑰 | 驗證方式 | 結果 |
|---|---|---|
| `ANTHROPIC_API_KEY` | 直接 curl 呼叫 Anthropic Messages API | ✅ 成功 |
| `GEMINI_API_KEY` | `python3 .claude/scripts/call_gemini.py --test` | ✅ 成功 |
| `OPENAI_API_KEY` | `python3 .claude/scripts/call_openai.py --test` | ✅ 成功 |

**尚未設定（仍為 placeholder）：** `MEDIUM_TOKEN`、`TWITTER_*`、`LINKEDIN_ACCESS_TOKEN`、`THREADS_ACCESS_TOKEN`、`SENDGRID_API_KEY`。不影響內容產出的 dry run，僅在正式發布對應平台前需要補上。

**補充：** `ANTHROPIC_API_KEY` 目前沒有對應的 wrapper script（不像 Gemini/OpenAI 有 `call_*.py`），因為 CTO / Developer / Supervisor 角色是透過 Claude Code 本身的 subagent 機制運作，並非直接呼叫 `.env` 裡的這把金鑰。這把金鑰目前僅在需要獨立於 Claude Code 之外直接呼叫 Anthropic API 時才會用到。
