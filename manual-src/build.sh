#!/usr/bin/env bash
# Builds the JustFlip! user manual for one language: web pages + PDF.
#
#   manual-src/build.sh            # English → manual/
#   manual-src/build.sh cs         # Czech   → manual/cs/
#   manual-src/build.sh en --web   # skip the PDF (fast preview)
#
# Needs pandoc ≥ 3.5 and LuaLaTeX (see manual-src/README.md for the TeX packages).
set -euo pipefail

LANG_CODE="${1:-en}"
WEB_ONLY=false
[[ "${2:-}" == "--web" ]] && WEB_ONLY=true

HERE="$(cd "$(dirname "$0")" && pwd)"
SITE="$(cd "$HERE/.." && pwd)"
SRC="$HERE/$LANG_CODE"
BUILD="$HERE/.build/$LANG_CODE"

if [[ "$LANG_CODE" == "en" ]]; then
  OUT="$SITE/manual"
  UP=""
else
  OUT="$SITE/manual/$LANG_CODE"
  UP="../"
fi

[[ -d "$SRC" ]] || { echo "No sources for '$LANG_CODE' in $SRC" >&2; exit 1; }
mkdir -p "$OUT" "$BUILD"

META="$SRC/metadata.yaml"
FILTER="$HERE/filters/manual.lua"
THEME="$HERE/highlight/gilded.theme"
CHAPTERS=( "$SRC"/[0-9][0-9]-*.md )
PDF_FILE="$(sed -n 's/^pdf-file: *"\{0,1\}\([^"]*\)"\{0,1\}$/\1/p' "$META")"

front() { sed -n "s/^$2: *\"\{0,1\}\([^\"]*\)\"\{0,1\}$/\1/p" "$1" | head -1; }

# ---------------------------------------------------------------- web
echo "▸ web ($LANG_CODE)"
pandoc --metadata-file="$META" "$SRC/index.md" \
  --from markdown --to html5 \
  --template "$HERE/templates/index.html" \
  --lua-filter "$FILTER" \
  -M asset-prefix="../$UP" -V root="../$UP" -V manualroot="" \
  -o "$OUT/index.html"

for chapter in "${CHAPTERS[@]}"; do
  slug="$(front "$chapter" slug)"
  number="$(front "$chapter" number)"
  mkdir -p "$OUT/$slug"
  pandoc --metadata-file="$META" "$chapter" \
    --from markdown --to html5 \
    --template "$HERE/templates/chapter.html" \
    --lua-filter "$FILTER" \
    --toc --toc-depth=2 --number-sections --number-offset="$number" \
    --mathml --syntax-highlighting="$THEME" \
    -M asset-prefix="../../$UP" -V root="../../$UP" -V manualroot="../" \
    -o "$OUT/$slug/index.html"
  echo "  $slug/index.html"
done

$WEB_ONLY && exit 0

# ---------------------------------------------------------------- pdf
echo "▸ pdf ($LANG_CODE)"
pandoc --metadata-file="$META" "${CHAPTERS[@]}" \
  --from markdown --to latex \
  --template "$HERE/templates/manual.latex" \
  --lua-filter "$FILTER" \
  --syntax-highlighting="$THEME" \
  -M asset-prefix="$SITE/" \
  -V fontpath="$HERE/fonts" -V iconpath="$SITE/images/Icon.png" \
  -o "$BUILD/manual.tex"

( cd "$BUILD"
  for _ in 1 2; do
    lualatex -interaction=nonstopmode -halt-on-error manual.tex > lualatex.log 2>&1 \
      || { tail -40 lualatex.log >&2; exit 1; }
  done )
cp "$BUILD/manual.pdf" "$OUT/$PDF_FILE"
echo "  $PDF_FILE ($(du -h "$OUT/$PDF_FILE" | cut -f1))"
