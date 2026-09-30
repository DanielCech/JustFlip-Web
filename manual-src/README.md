# JustFlip! User Manual — sources

One Markdown source per language builds two outputs:

- **Web:** `manual/index.html` plus one page per chapter (`manual/<slug>/`), styled by
  `css/manual.css` on top of the site's `css/styles.css`.
- **PDF:** `manual/JustFlip-Manual-<lang>.pdf`, typeset with LuaLaTeX.

The generated files in `manual/` are committed, because the site deploys the
repository as it is, with no build step. Edit the sources here, run the build, and commit both.

```sh
manual-src/build.sh            # English: web + PDF
manual-src/build.sh en --web   # web only (a few seconds)
manual-src/build.sh cs         # another language, into manual/cs/
python3 -m http.server 8765    # then open http://localhost:8765/manual/
```

## Layout

```
manual-src/
├── build.sh                 the whole pipeline
├── en/
│   ├── metadata.yaml        titles, UI labels, chapter outline
│   ├── index.md             the landing-page intro
│   └── 03-writing-cards.md  one file per chapter (NN-slug.md)
├── filters/manual.lua       custom blocks → HTML or LaTeX
├── templates/               chapter.html, index.html, nav/footer partials, manual.latex
├── highlight/gilded.theme   code colours (site gold palette)
└── fonts/                   Plus Jakarta Sans + JetBrains Mono (OFL), for the PDF
```

## Writing a chapter

Plain pandoc Markdown, plus a handful of blocks. Every block renders in both outputs.

````markdown
---
slug: writing-cards          # URL: /manual/writing-cards/
number: 3
title: Writing great cards
description: "Meta description for search engines."
---

# Writing great cards {#writing-cards number="3"}

::: lede
The opening paragraph, shown on the dark chapter opener.
:::

::: inthischapter
- A bullet per topic
:::

## A section                 ← numbered 3.1, 3.2 … automatically

::: tip                      ← also: gotcha, note
#### Optional title
Body text.
:::

:::: pair                    ← "You write" → "On the card"
```markdown
The capital of France is {{c1::Paris}}.
```

::: {.card side="question"}  ← side: question | answer; add .hero for big text
The capital of France is [[…]]{.blank}.
:::
::::

:::: split                   ← picture left, text right
![Caption](images/markdown.png){.phone}

::: text
Paragraphs beside the picture.
:::
::::

![Caption](images/news/tex-maths.png){.shot width=78%}
[Formatting help]{.ui}   [[…]]{.blank}   [Paris]{.reveal}
````

- Image paths are relative to the site root (`images/…`); the filter rewrites them for each output.
- A card can take `spoken="…"`, which shows what the voice says underneath it.
- `## Heading {.cheatsheet}` starts that section on a new PDF page.
- Only chapters with a `slug` in `metadata.yaml` get a link; the others are listed as *Coming soon*.

## Translating

1. Copy `en/` to `<lang>/`, for example `cs/`.
2. Translate `metadata.yaml`: set `lang`, `pdf-file`, every value under `labels:`, and the chapter outline.
3. Translate the chapter files. Leave these alone: code blocks, `{#ids}`, class names such as
   `.card` or `.blank`, and `side="question"`. Translate the text inside `[…]{.ui}` so it
   matches the app's own wording for that language.
4. Run `manual-src/build.sh <lang>` and check both outputs.

The PDF can already typeset Japanese and Korean glyphs, through a font fallback to Hiragino Sans and
Apple SD Gothic Neo. Proper CJK line breaking will need `luatexja` when those translations start.

## TeX requirements

Any full TeX Live or MacTeX works. On a *basic* TeX Live, add the missing packages in user mode:

```sh
tlmgr init-usertree
tlmgr --usermode install tcolorbox tikzfill pdfcol listingsutf8 listings marginnote wrapfig \
  xcolor fontawesome5 enumitem titlesec microtype geometry fancyhdr eso-pic ragged2e etoolbox \
  environ trimspaces fvextra upquote lineno caption float parskip needspace luacolor xurl \
  colortbl lualatex-math pgf-blur framed
```

The build also needs pandoc 3.5 or newer, for `--syntax-highlighting`.
