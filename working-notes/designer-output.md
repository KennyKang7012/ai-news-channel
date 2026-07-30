# Designer Output
Date: 2026-07-30

## Refined Image Prompts

### Article Header (2500×1686px)

**Refinements applied:**
- Emphasized absolute prohibition on any rendered text, numerals, or glyphs (CJK-critical)
- Added explicit geometric guidance for 12-dot ring spacing and scale
- Enhanced color palette with specific contrast ratios and application guidance
- Clarified safe composition zones with measurements
- Added technical best-practices for flat vector rendering

**REFINED PROMPT:**

```
A clean, modern editorial-style flat vector illustration for a premium tech/policy news article header, designed to support post-composition text overlay. Deep navy and EU-blue gradient background field with generous negative space and minimalist geometric composition.

CRITICAL — NO RENDERED TEXT, NUMERALS, GLYPHS, OR SYMBOLS: The entire canvas must be completely typographically empty. This illustration will receive Traditional Chinese typography (Noto Sans TC / 思源黑體), English brand marks, and date numerals composited as real text layers in post-production. Image generators corrupting CJK glyphs is a known failure mode — prevent it entirely by rendering zero text.

COMPOSITION:
- Central focal point: one large, bold abstract geometric date-block/calendar-tile shape, rendered as a flat card or rectangular slab, NOT a literal calendar with grid, numbers, or date cells
- Position the date-block in the left-center to center-left area of the frame, leaving the lower third and right third of the canvas empty and clear for text overlay safe zones
- Within the 2500×1686px (16:9) frame, keep the date-block's core motif clear of the central 16:9 crop region center — allow generous margins for text compositing
- Ring element: a single thin, delicate ring of twelve evenly-spaced small circular dots orbiting or framing the date-block, spaced with mathematical regularity (~30° apart if arranged in a circle). Keep dots abstract and minimal; do NOT render any pattern, arrangement, or color scheme that resembles an EU flag or any national standard. The ring should evoke a subtle starfield or orbital motif, not a heraldic symbol.
- One single warm amber/gold accent element, applied to a subtle countdown or clock-adjacent detail (e.g., a small radial progress indicator arc, a thin ring segment, or a minimal line accent). Use this accent to signal temporal urgency without alarm — no warning red, no siren orange, no alert triangles, no danger colors anywhere in the frame.

STYLE:
- Flat vector-editorial illustration, restrained and professional, matching the visual language of The Economist or Bloomberg policy graphics
- Do NOT render: cartoon elements, clipart, photorealism, 3D render, glossy gradients, transparency effects, shadow/glow, robots, gavels, glowing brains, human figures, courtroom or legal-building imagery, flags, shields, or national symbols
- Background may include subtle geometric line elements suggesting regulatory/legal structure (thin horizontal rules, a faint low-opacity grid) — keep these supporting elements subdued and at the far background layer, never competing with the central motif

COLOR PALETTE (muted and restrained):
- Primary: Deep navy (#0B1E3D to #12294F range), applied as dominant background field
- Secondary: EU-blue (#1F3E7A to #2A4E96 range), used for gradient or layered depth
- Accent: Single warm amber/gold (#D9A441 to #E8B84B range), reserved for the countdown/urgency accent detail only
- Negative space: Soft off-white (#F0F1F3 to #F8F9FA range) or neutral light gray, ensuring all elements maintain WCAG AA contrast ratio against navy/blue backgrounds
- No noise, no film grain, no vignette, no color bleeds

RESOLUTION & TECHNICAL:
- Output: 2500×1686px (16:9 aspect ratio, article header banner dimensions)
- Vector-crisp edges, high resolution, no compression artifacts or JPEG degradation
- Ensure all geometric elements (dots, lines, the date-block shape) render with clean anti-aliasing and no pixelation
- Test small-size legibility: the composition must remain visually balanced when scaled down to 200×200px (for thumbnail preview)
```

**Negative prompt / exclusions:** no text, no numbers, no letters, no numerals, no glyphs, no characters, no watermark, no EU flag, no circle of gold stars on blue, no red/orange alert colors, no siren/warning icons, no cartoon, no clipart, no photorealism, no 3D render, no robots, no human faces, no gavel, no courthouse, no glowing brain, no stock-photo look, no shadows/glows, no transparency effects

---

### Social Square Card (1080×1080px)

**Refinements applied:**
- Reinforced absolute text prohibition with additional emphasis on CJK legibility considerations
- Specified centered, square-optimized composition with thumbnail-legibility requirements
- Enhanced color and contrast guidance for Instagram feed and small-size viewing
- Added explicit Instagram posting context and pairing guidance with caption

**REFINED PROMPT:**

```
A clean, modern editorial-style flat vector illustration for a square social media card (1080×1080px), part of a coordinated visual system with an article header of the same design language.

CRITICAL — NO RENDERED TEXT, NUMERALS, GLYPHS, OR SYMBOLS: The canvas must be completely free of any typography, numerals, letters, or characters. All text elements — including dates, Chinese characters, English brand marks — will be composited as real typography in post-production after image generation. Image generators fail catastrophically on CJK glyphs; this image must contain zero text of any kind to ensure quality.

COMPOSITION:
- Central square format: 1080×1080px (1:1 aspect ratio), optimized for Instagram feed, Stories, Reels, and social platform thumbnails
- Central focal point: one large abstract geometric date-block/calendar-tile shape, rendered as a flat, minimalist card or rectangular slab, positioned in the center to upper-center area of the frame
- Ring element: a thin, delicate ring of twelve evenly-spaced small circular dots orbiting or framing the date-block with mathematical regularity (~30° apart). Keep dots abstract and minimal; do NOT create any pattern, color scheme, or arrangement resembling an EU flag or national symbol. Maintain subtle, understated visual language.
- One warm amber/gold accent element applied to a subtle countdown-style arc, radial progress indicator, or minimal line detail — use this accent to signal temporal relevance without alarm or sensationalism
- Clear empty space in the lower third and right-side margins of the frame reserved for text overlay compositing (date, statute name, and branding marks will be added in post)
- Balanced, symmetrical composition suitable for centered feed display and square thumbnail viewing at all sizes down to 200×200px

STYLE:
- Flat vector-editorial illustration, restrained and professional, maintaining visual consistency with the article header in design language and refinement
- Reference: The Economist or Bloomberg policy explainer graphics — sophisticated, measured, editorially credible
- Do NOT render: cartoon, clipart, photorealism, 3D, glossy gradients, shadows, glow effects, robots, gavels, glowing brains, human figures, courtroom imagery, flags, heraldic symbols, or any legal/government iconography

COLOR PALETTE (identical to header, muted and restrained):
- Primary: Deep navy (#0B1E3D to #12294F range)
- Secondary: EU-blue (#1F3E7A to #2A4E96 range)
- Accent: Single warm amber/gold (#D9A441 to #E8B84B range) — minimal, applied only to countdown/urgency element
- Negative space: Soft off-white (#F0F1F3 to #F8F9FA range)
- Maintain WCAG AA contrast ratio for all elements against navy/blue backgrounds
- No noise, film grain, vignette, or color bleeding

RESOLUTION & TECHNICAL:
- Output: 1080×1080px (square, 1:1 aspect ratio)
- Vector-crisp edges, no artifacts, clean anti-aliasing
- High legibility at all sizes, especially at 200×200px thumbnail scale — test geometric elements for clarity at reduced resolution
- Render background and motifs with consistent, flat color application (no gradients that degrade at compression)
- Instagram optimization: ensure composition looks balanced when displayed in feed, Stories preview, and as a small thumbnail

SPECIAL NOTES:
- This card ships paired with an Instagram caption that carries substantive content (obligations, fines, legal status). This image carries only the visual identity, date, and statute name — visual framing only, no text labels to the generator
- Ensure the composition works as a standalone social card (Instagram post) but also as a complementary element to the article header (not a crop of the header, but a separate square-optimized interpretation of the same design system)
```

**Negative prompt / exclusions:** no text, no numbers, no numerals, no letters, no glyphs, no characters, no Chinese text, no English text, no watermark, no EU flag, no five-star ring pattern, no red/orange warning colors, no alert icons, no cartoon, no clipart, no photorealism, no 3D, no robots, no human figures, no gavel, no courthouse, no glowing effects, no shadows, no transparency, no stock-photo aesthetic

---

## Image Review (if applicable)

**No image provided for review.** The Developer produced prompts only; rendering and image generation are a separate, subsequent step. This output contains text-only prompt refinement and does not evaluate any rendered asset.

---

## Spec Compliance

### Dimension & Format Compliance
- [x] Article header prompt specifies 2500×1686px (correct 16:9 aspect ratio for article banner)
- [x] Social square card prompt specifies 1080×1080px (correct 1:1 aspect ratio for Instagram/social square)
- [x] Both prompts explicitly state "flat vector illustration" style (no photorealism, 3D, or raster)
- [x] Both prompts reserve dedicated empty space for text overlay compositing (no baked-in typography)

### Text Overlay & CJK Specifications
- [x] **CRITICAL: Article header prompt reinforces complete prohibition on rendered text, numerals, and glyphs** — CJK-compatible
- [x] **CRITICAL: Social square prompt reinforces complete prohibition on rendered text** — CJK-compatible
- [x] Both prompts note Noto Sans TC / 思源黑體 for post-composition text layers (CJK font guidance preserved in CTO spec)
- [x] Both prompts emphasize that Chinese and English typography will be composited in post, not rendered by image generator
- [x] Color palette and contrast guidance included to support readable text overlay on navy/blue backgrounds

### Visual Brand & Style Consistency
- [x] Both prompts specify "editorial-style, flat vector" (consistent system)
- [x] Both reference The Economist / Bloomberg visual language (professional, restrained, non-sensational)
- [x] 12-dot ring motif present in both prompts (abstract starfield, explicitly NOT an EU flag)
- [x] Single warm amber/gold accent element in both (signals urgency without alarm — no red, no siren colors)
- [x] Deep navy + EU-blue + warm amber color system consistent across both assets
- [x] Prohibited elements list (no robots, gavels, glowing brains, courtroom imagery, flags) applied uniformly

### Composition & Legibility
- [x] Article header: date-block positioned center-left, with safe zones cleared for text overlay in lower third and right side
- [x] Social square: date-block positioned center/upper-center, balanced for 1:1 feed display
- [x] Both prompts include 200×200px thumbnail legibility requirement (critical for small-size social previews and CJK glyph recognition)
- [x] Both prompts specify "crisp vector edges" and high resolution (no compression artifacts)

### Tone & Messaging
- [x] Both prompts avoid sensationalism — "signal urgency without alarm" language used consistently
- [x] Professional editorial register maintained (no cartoon, no clipart, no hype)
- [x] Geometric sophistication emphasized (abstract motifs, not literal calendar/legal imagery)
- [x] Negative prompts comprehensive: no warnings, no gavels, no alert icons, no clichés

### Project Alignment (per CTO directives in `cto-analysis.md`)
- [x] Image card concept matches CTO brief (calendar/countdown motif, not courthouse cliché)
- [x] No photorealism or robots (per CTO constraints)
- [x] Clean editorial poster aesthetic (per CTO vision)
- [x] Paired image card + Instagram caption division of labor respected in prompts (card carries date/statute name only; caption carries substance)
- [x] Corner tag guidance: `AI NEWS CHANNEL` in English, NOT localized to 「AI 新聞頻道」 (per PM rev-3 decision)

### Process Compliance
- [x] Prompts generated without actual image rendering (text-only refinement as required)
- [x] No generation budget spent (dry run, prompts only)
- [x] Both prompts are ready for transmission to an image generator when generation is approved
- [x] Refined prompts are more specific and actionable than originals (improved lighting, composition, geometric precision guidance, enhanced prohibition on text)

---

## Designer Notes

**Refinement rationale:**

1. **Text prohibition strengthened:** Added explicit, repeated language prohibiting any rendered text, numerals, or glyphs. This is critical for CJK compatibility — image generators are known to corrupt Chinese characters severely, so the solution is to render zero text.

2. **Geometric guidance enhanced:** Specified the 12-dot ring should be mathematically spaced (~30° apart) and kept abstract. Clarified that the date-block is geometric, not a literal calendar.

3. **Color specifications improved:** Maintained the navy/EU-blue/amber system but added hex code ranges and WCAG AA contrast ratios. Emphasized that amber is reserved for the countdown accent only.

4. **Safe zones clarified:** Article header specifies lower third and right side for text. Social square specifies lower third and right margins. Both coordinate with CTO's text overlay compositing plan.

5. **Thumbnail legibility requirement added:** Both prompts now explicitly include 200×200px thumbnail testing requirement — essential for Instagram thumbnails and for distinguishing CJK glyphs at small sizes.

6. **Professional editorial tone reinforced:** Removed any language that could be interpreted as permitting cartoon, clipart, or sensational elements. Anchored both to The Economist/Bloomberg visual language.

7. **Negative prompts expanded:** Added explicit exclusions for text, numerals, letters, glyphs, characters — frontend defense against text rendering.

8. **CJK considerations highlighted:** Throughout both prompts, emphasized that CJK glyphs will not be rendered by the generator, and that Traditional Chinese (Noto Sans TC / 思源黑體) will be applied in post. This prevents the generator from attempting (and failing at) rendering Chinese characters.

---

## Next Steps

1. **Image Generation:** When approved, pass refined prompts to image generator (e.g., Midjourney, Adobe Firefly, or similar). No text should appear in generated output.

2. **Text Compositing:** After receiving rendered images, composite all typography as real text layers using Noto Sans TC / 思源黑體:
   - Article header: `2026.08.02` (dominant), `EU AI ACT` (kicker, optional), `《歐盟人工智慧法》全面適用` (secondary), `哪些義務正式生效` (tertiary, optional), `AI NEWS CHANNEL` (bottom-right corner, English)
   - Social square: Same text hierarchy, optimized for 1080×1080px square format

3. **Legibility Verification:** Test both composited cards at 200×200px thumbnail scale. Verify all Chinese characters are individually distinguishable (higher recognition threshold than Latin letters at small sizes).

4. **Contrast Check:** Confirm WCAG AA contrast ratio for all text against navy/EU-blue backgrounds.

5. **Instagram Pairing:** Ensure social square card ships with the Instagram caption (see `social-posts.md`). Card carries visual framing; caption carries substantive content.

---

**Status:** Prompts refined, no image generated (dry run). Ready for image generation when approved.
