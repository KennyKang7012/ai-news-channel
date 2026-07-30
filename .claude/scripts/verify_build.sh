#!/bin/bash
# verify_build.sh — Supervisor verification script
# Usage: bash verify_build.sh --date 2024-01-15

set -e

DATE=""
PASS=true
ISSUES=()

# Parse args
while [[ $# -gt 0 ]]; do
  case $1 in
    --date) DATE="$2"; shift 2 ;;
    *) echo "Unknown arg: $1"; exit 1 ;;
  esac
done

if [ -z "$DATE" ]; then
  echo "[ERROR] --date required (YYYY-MM-DD)"
  exit 1
fi

DELIVERABLES="knowledge-base/deliverables/$DATE"

echo "======================================"
echo "  Supervisor Verification — $DATE"
echo "======================================"

# Check 1: Deliverables directory exists
echo ""
echo "📁 Checking deliverables directory..."
if [ -d "$DELIVERABLES" ]; then
  echo "  ✅ Directory exists: $DELIVERABLES"
else
  echo "  ❌ MISSING: $DELIVERABLES"
  ISSUES+=("Deliverables directory not found: $DELIVERABLES")
  PASS=false
fi

# Check 2: Required files exist
echo ""
echo "📄 Checking required files..."

REQUIRED_FILES=(
  "article.md"
  "social-posts.md"
  "image-prompt.md"
  "newsletter.md"
)

for file in "${REQUIRED_FILES[@]}"; do
  filepath="$DELIVERABLES/$file"
  if [ -f "$filepath" ]; then
    SIZE=$(wc -c < "$filepath")
    echo "  ✅ $file ($SIZE bytes)"
  else
    echo "  ❌ MISSING: $file"
    ISSUES+=("Missing file: $file")
    PASS=false
  fi
done

# Check 3: Article length (word count for English, character count for Chinese)
echo ""
echo "📝 Checking article length..."
if [ -f "$DELIVERABLES/article.md" ]; then
  LANG_TAG=$(grep -m1 '^lang:' "$DELIVERABLES/article.md" | sed 's/^lang:[[:space:]]*//' | tr -d '"'"'"'' | xargs)
  if [[ "$LANG_TAG" == zh* ]]; then
    # wc -w cannot count Chinese text (no whitespace word boundaries) — count CJK characters instead
    CJK_COUNT=$(python3 -c "
import re
text = open('$DELIVERABLES/article.md', encoding='utf-8').read()
print(len(re.findall(r'[一-鿿]', text)))
")
    if [ "$CJK_COUNT" -ge 1400 ] && [ "$CJK_COUNT" -le 2100 ]; then
      echo "  ✅ Chinese character count: $CJK_COUNT (target: 1,400-2,100 中文字, lang=$LANG_TAG)"
    else
      echo "  ❌ Chinese character count: $CJK_COUNT (out of range 1,400-2,100, lang=$LANG_TAG)"
      ISSUES+=("Article Chinese character count $CJK_COUNT is outside 1,400-2,100 range")
      PASS=false
    fi
  else
    WORD_COUNT=$(wc -w < "$DELIVERABLES/article.md")
    if [ "$WORD_COUNT" -ge 800 ] && [ "$WORD_COUNT" -le 1200 ]; then
      echo "  ✅ Word count: $WORD_COUNT (target: 800-1200)"
    else
      echo "  ❌ Word count: $WORD_COUNT (out of range 800-1200)"
      ISSUES+=("Article word count $WORD_COUNT is outside 800-1200 range")
      PASS=false
    fi
  fi
fi

# Check 4: Source citations in article
echo ""
echo "🔗 Checking source citations..."
if [ -f "$DELIVERABLES/article.md" ]; then
  SOURCE_COUNT=$(grep -c "http" "$DELIVERABLES/article.md" 2>/dev/null || echo "0")
  if [ "$SOURCE_COUNT" -ge 3 ]; then
    echo "  ✅ Sources found: $SOURCE_COUNT URLs"
  else
    echo "  ❌ Only $SOURCE_COUNT source URLs found (minimum: 3)"
    ISSUES+=("Insufficient sources: found $SOURCE_COUNT, need 3+")
    PASS=false
  fi
fi

# Check 5: Twitter char count
echo ""
echo "🐦 Checking Twitter/X post length..."
if [ -f "$DELIVERABLES/social-posts.md" ]; then
  # Extract lines after Twitter section
  # NF>0 (not /\S/) — BSD awk (macOS default) treats \S as a literal "S", not "non-whitespace"
  # Exit on a bare "---" divider too, not just the next "##" heading — otherwise the 3-char
  # horizontal-rule line between sections gets concatenated into the counted text
  TWITTER_POST=$(awk '/Twitter|twitter|X\)/{found=1; next} found && (/^##/ || /^---+$/){exit} found && NF>0{print}' "$DELIVERABLES/social-posts.md" | head -5 | tr -d '\n')
  # bash `${#string}` counts bytes under C/POSIX locale, inflating multi-byte UTF-8 (e.g. Chinese)
  # characters ~3x — use python3 len() so the count is locale-independent
  CHAR_COUNT=$(python3 -c "import sys; print(len(sys.argv[1]))" "$TWITTER_POST")
  if [ "$CHAR_COUNT" -le 280 ] && [ "$CHAR_COUNT" -gt 0 ]; then
    echo "  ✅ Twitter post: $CHAR_COUNT chars"
  elif [ "$CHAR_COUNT" -eq 0 ]; then
    echo "  ⚠️  Could not parse Twitter post section"
    ISSUES+=("Could not parse Twitter post — verify social-posts.md format")
  else
    echo "  ❌ Twitter post: $CHAR_COUNT chars (max: 280)"
    ISSUES+=("Twitter post too long: $CHAR_COUNT chars")
    PASS=false
  fi
fi

# Check 6: Instagram caption length
echo ""
echo "📸 Checking Instagram caption length..."
if [ -f "$DELIVERABLES/social-posts.md" ]; then
  IG_POST=$(awk '/Instagram|instagram/{found=1; next} found && (/^##/ || /^---+$/){exit} found && NF>0{print}' "$DELIVERABLES/social-posts.md" | tr -d '\n')
  IG_CHAR_COUNT=$(python3 -c "import sys; print(len(sys.argv[1]))" "$IG_POST")
  if [ "$IG_CHAR_COUNT" -le 2200 ] && [ "$IG_CHAR_COUNT" -gt 0 ]; then
    echo "  ✅ Instagram caption: $IG_CHAR_COUNT chars"
  elif [ "$IG_CHAR_COUNT" -eq 0 ]; then
    echo "  ❌ Could not find Instagram caption section"
    ISSUES+=("Missing or unparseable Instagram caption — verify social-posts.md has an Instagram section")
    PASS=false
  else
    echo "  ❌ Instagram caption: $IG_CHAR_COUNT chars (max: 2200)"
    ISSUES+=("Instagram caption too long: $IG_CHAR_COUNT chars")
    PASS=false
  fi
fi

# Check 7: Image prompt dimensions
echo ""
echo "🖼️  Checking image prompt specs..."
if [ -f "$DELIVERABLES/image-prompt.md" ]; then
  if grep -q "2500" "$DELIVERABLES/image-prompt.md" && grep -q "1686" "$DELIVERABLES/image-prompt.md"; then
    echo "  ✅ Article header dimensions (2500×1686) found in prompt"
  else
    echo "  ❌ Article header dimensions 2500×1686 not found in image-prompt.md"
    ISSUES+=("Image prompt missing 2500×1686 dimension spec")
    PASS=false
  fi

  if grep -q "1080" "$DELIVERABLES/image-prompt.md"; then
    echo "  ✅ Social card dimensions (1080×1080) found in prompt"
  else
    echo "  ❌ Social card dimensions 1080×1080 not found in image-prompt.md"
    ISSUES+=("Image prompt missing 1080×1080 social card spec")
    PASS=false
  fi
fi

# Check 8: Newsletter subject line
echo ""
echo "📧 Checking newsletter..."
if [ -f "$DELIVERABLES/newsletter.md" ]; then
  if grep -qi "subject" "$DELIVERABLES/newsletter.md"; then
    echo "  ✅ Subject line present"
  else
    echo "  ❌ No subject line found in newsletter.md"
    ISSUES+=("Newsletter missing subject line")
    PASS=false
  fi
fi

# Final verdict
echo ""
echo "======================================"
if [ "$PASS" = true ]; then
  echo "  ✅ VERIFICATION: PASS"
  echo "  Ready for PM approval and publish."
else
  echo "  ❌ VERIFICATION: FAIL"
  echo ""
  echo "  Issues found:"
  for issue in "${ISSUES[@]}"; do
    echo "    • $issue"
  done
  echo ""
  echo "  Return to Developer for revision."
  exit 1
fi
echo "======================================"
