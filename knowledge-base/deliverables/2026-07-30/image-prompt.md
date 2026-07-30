# Image Card Prompt — 2026-07-30

Concept per CTO brief: a calendar/countdown motif for the EU AI Act's 2 August 2026 general-application milestone, paired with the Digital Omnibus delay as the lead story (Headline Set B). Clean editorial poster, not a courthouse cliché. **No text should be baked into the generated artwork** — all Chinese and English typography is composited afterward, because image generators corrupt CJK glyphs.

---

## Prompt 1 — Article Header (2500×1686px)

```
A clean, modern, editorial-style flat vector illustration for a tech/policy news article header. Deep navy and EU-blue gradient background field, generous negative space, minimalist composition. Centered-left composition with a large, bold abstract calendar/date-block shape dominating the frame — rendered as a simple geometric card or tile, not a literal calendar with grid lines or numbers. A thin, delicate ring of twelve small evenly-spaced circular dots orbits or frames the date block, abstractly evoking a starfield/ring motif WITHOUT forming or resembling any national or supranational flag — do not render a circle of stars in the pattern or colors of the EU flag; keep the dots small, minimal, and abstract. One single warm amber/gold accent element highlights a countdown or clock-adjacent detail (e.g., a subtle arc, a small radial progress indicator, or a thin countdown ring segment) to signal urgency without alarm — no red, no orange-red, no siren, warning-triangle, or alert iconography anywhere in the frame. Flat vector-editorial illustration style, restrained and professional, similar to the visual language of a serious policy/business publication (e.g., The Economist or Bloomberg explainer graphics) — NOT cartoon, NOT clipart, NOT photorealistic, no 3D render, no glossy gradients, no robots, no gavels, no glowing brains, no human figures, no courtroom or legal-building imagery. Subtle geometric line elements suggesting regulatory/legal structure (thin horizontal rules, a faint grid) may appear in the background at low opacity. Wide 2500x1686px aspect ratio (article header banner), composition weighted so the central date-block motif stays within a safe zone clear of the center 16:9 crop region reserved for text overlay compositing. Ample empty space in the lower third and right third of the frame reserved for text overlay (do not render any text, letters, numerals, or glyphs — the canvas must be completely free of typography). Muted, restrained color palette: deep navy (#0B1E3D–#12294F range), EU-blue (#1F3E7A–#2A4E96 range), single warm amber accent (#D9A441–#E8B84B range), soft off-white negative space. No noise, no film grain, no vignette. High resolution, crisp vector edges, no compression artifacts.
```

**Negative prompt / exclusions:** no text, no numbers, no letters, no watermark, no EU flag, no circle of gold stars on blue, no red/warning colors, no cartoon style, no clipart, no photorealism, no 3D render, no robots, no human faces, no gavel, no courthouse, no glowing brain, no stock-photo look.

---

## Prompt 2 — Social Square Card (1080×1080px)

```
A clean, modern, editorial-style flat vector illustration for a square social media card (1080x1080px), same visual system as the article header: deep navy and EU-blue gradient background, one large abstract geometric date-block/calendar-tile shape centered in the frame, surrounded by a thin ring of twelve small evenly-spaced circular dots (abstract, NOT an EU flag — avoid any star-ring pattern that reads as the EU flag), one warm amber/gold accent on a subtle countdown-style arc or radial detail. Flat vector-editorial style, restrained and professional, no cartoon, no clipart, no photorealism, no 3D render, no robots, no gavels, no glowing brains, no human figures. Centered composition with the date-block occupying the upper-middle two-thirds of the frame and clear empty space in the lower third reserved for text overlay compositing. Square 1:1 crop, balanced symmetry suitable for Instagram feed display and thumbnail legibility at small sizes (down to 200x200px). Canvas must be completely free of any rendered text, numerals, letters, or glyphs. Same muted palette as the header: deep navy, EU-blue, single warm amber accent, soft off-white negative space. No noise, no vignette, crisp vector edges.
```

**Negative prompt / exclusions:** same as Prompt 1.

---

## TEXT OVERLAY (composite in post, do NOT render in the generated image)

All strings below are composited as real typography after generation — never sent to the image generator.

**Font:** Noto Sans TC / 思源黑體 — **Traditional Chinese glyph set only**, verify glyph-by-glyph that characters render in Traditional form, not Simplified (e.g. 「灣」not「湾」,「為」not「为」,「歐」not「欧」,「適」not「适」). Primary headline weight: Bold. Secondary/tertiary: Regular. Because CJK legibility at small sizes is lower than Latin type, size the Chinese headline glyphs roughly 10–15% larger than an equivalent English-only treatment would require.

- **Primary (date, dominant visual):** `2026.08.02` — numerals kept half-width.
- **Kicker (small, above date, optional):** `EU AI ACT`
- **Secondary:** `《歐盟人工智慧法》全面適用`
- **Tertiary (single line, optional):** `哪些義務正式生效`
- **Corner tag (brand mark — English, NOT localised per PM rev-3 decision):** `AI NEWS CHANNEL`

**Composite instructions:**
- Full-width punctuation for all Chinese text; the 《》 book-title marks around 《歐盟人工智慧法》 must not be cropped or clipped by the safe margin.
- Place `2026.08.02` as the dominant visual element, positioned within the reserved empty space (lower third of the header canvas; upper-middle to lower-third of the square canvas).
- Corner tag `AI NEWS CHANNEL` sits in a fixed brand position (bottom-right corner recommended), small scale, English only — do not translate to 「AI 新聞頻道」(rejected by PM).
- Verify contrast ratio meets WCAG AA against the navy/EU-blue background for all text layers.
- **200×200px legibility check (mandatory):** before finalizing, render the square card at a 200×200px thumbnail scale and confirm every Chinese character is individually distinguishable — Chinese glyphs have a materially higher recognition threshold than Latin letters at small sizes; re-scale the headline up if any character (especially 灣/歐/適/為) is ambiguous at thumbnail size.
- Pairing note: this card ships paired with the Instagram caption (see `social-posts.md`). The card carries only the date and statute name (`2026.08.02` / 《歐盟人工智慧法》全面適用); it must not carry substantive content (obligations, fines, delay status) — that content lives in the caption, not the card.

---

## Spec Summary

| Asset | Dimensions | Use |
|---|---|---|
| Article header | 2500×1686px | `article.md` header banner |
| Social square card | 1080×1080px | Instagram post image / social card |
