# Brief: drafting a JustFlip! User Manual chapter

You are writing chapters of the JustFlip! User Manual (English). One Markdown source builds both
the website (just-flip.app/manual/) and a typeset PDF.

## Read first
1. `JustFlip-Web/manual-src/README.md` — the block syntax (lede, inthischapter, tip/gotcha/note callouts, pair, card, split, figures, .ui/.blank/.reveal spans).
2. `JustFlip-Web/manual-src/en/03-writing-cards.md` — the finished reference chapter. Match its voice, structure, density and front matter exactly.
3. The outline note: `/Users/danielcech/Library/Mobile Documents/iCloud~md~obsidian/Documents/iCloud/JustFlip - User Manual Outline.md` — the scope of your chapters.

## Source of truth (read-only)
- App repo: `/Users/danielcech/orca/workspaces/JustFlip/feat-user-manual` — code in `Modules/` and `App/`, specs in `Specification/`.
- English UI strings: `Modules/**/Resources/en.lproj/Localizable.strings` and `App/**/en.lproj/*.strings`. Name every UI element with its exact English string, wrapped as `[Label]{.ui}`. Write settings paths as **Settings › Speech › Voices**.
- **Verify every behaviour in the code.** Specs can be stale; the code wins. If you cannot verify a claim, leave it out, or keep it with an HTML comment `<!-- VERIFY: what to check -->` directly after it. Never invent numbers, limits, menu names or Pro gating.
- Pro gating: check the actual gates (ProFeaturesFeature, PurchasesService, `isPro`/entitlement checks, free-tier limits). Mark Pro-only features as "(Pro)" in the text.

## Hard rules
- Write ONLY your assigned files: `JustFlip-Web/manual-src/en/NN-slug.md` and `JustFlip-Web/manual-src/en/shots/NN-slug.yaml`.
- Do NOT edit metadata.yaml, templates, the filter, CSS, other chapters, or anything in the app repo.
- Do NOT run xcodebuild, tuist, simctl, rocketsim or any simulator, and do NOT commit to git.
- You MAY run `cd /Users/danielcech/Developer/Projects/Catalyst/JustFlip-Web && manual-src/build.sh en --web` to check that your Markdown renders. Ignore problems in other chapters. Never run the PDF build.

## Style
- British English spelling (colour, centred, organise, behaviour). Second person, warm, confident, concise. Short paragraphs. No marketing fluff; teach.
- The brand is always **JustFlip!** (with the "!"). The platforms are iPhone, iPad, Mac and Apple Watch.
- Front matter: `slug`, `number`, `title`, `description` (one sentence, for SEO). Then `# Title {#slug number="N"}`, a `::: lede`, and a `::: inthischapter` list with 4–6 bullets.
- Use 6–12 `##` sections, with `###` where useful. Aim for 1,800–3,500 words per chapter.
- Use callouts deliberately: **gotcha** for rules that silently bite (the most valuable content), **tip** for power-user advice, **note** for background. Each starts with a `####` title.
- Use tables for reference data. Use `pair`/`card` blocks only when showing syntax or card content.
- Point to other chapters as "Chapter N" in plain text, and to sections of your own chapter with `(#id)`. Give every `##` an explicit `{#id}`.
- Link website pages where they help: https://just-flip.app/ai-prompt.html, /ai-skill.html, /decks/, /advanced.html, /learning.html, /accessibility/.

## Screenshots
- Reference them as `![Caption sentence.](images/manual/{lang}/NN-name.png){.phone}` for a full iPhone portrait screen, or `{.shot width=80%}` for landscape crops (iPad, Mac, a card close-up). A missing file renders as a placeholder, so reference freely. Use 3–6 per chapter where a picture genuinely helps.
- For each screenshot, add an entry to `manual-src/en/shots/NN-slug.yaml`:
  ```yaml
  - file: 02-grade-buttons.png
    device: iPhone        # iPhone | iPad | Mac | Watch | Widget | LockScreen
    crop: full            # full | card | region (describe)
    screen: Review session, answer side
    state: A vocabulary card flipped to the answer; the grade buttons visible
    steps: Launch → Today → Start review → tap the card to flip
    notes: anything a person capturing it must know
  ```

## Final report (your last message)
1. The files written, with word counts.
2. Every claim you could not verify, including where you left VERIFY comments.
3. Glossary entries for terms your chapters introduce (`term — definition`).
4. Troubleshooting rows (`symptom → fix`) for Appendix D.
5. Free-vs-Pro facts you verified, with the file/line of each gate.
