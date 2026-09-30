--[[
JustFlip! manual filter — one Markdown source, two looks.

Custom blocks (see manual-src/README.md for the author's view):
  # Title {#id number="3"}    chapter opener (everything up to the first ##)
  ::: lede / ::: inthischapter  opener text
  ::: tip | gotcha | note      callout; a leading #### heading is its title
  :::: pair                    first block = "You write", the rest = "On the card"
  ::: {.card side="answer"}    an app-styled card; .hero, spoken="…"
  :::: split                   picture on the left, ::: text on the right
  [x]{.ui} [x]{.blank} [x]{.reveal}
  ![caption](images/…){.shot|.phone|.card-shot width=70%}

HTML: builds classed divs the site stylesheet (css/manual.css) understands, and
moves the chapter opener into the `hero` template variable.
LaTeX: emits the environments defined in templates/manual.latex.
]]

local stringify = pandoc.utils.stringify
local is_latex = FORMAT:match('latex') ~= nil
local is_html = FORMAT:match('html') ~= nil

local labels = {}
local asset_prefix = ''

local function label(key)
  return labels[key] or key
end

local function tex_escape(s)
  return (s:gsub('[\\{}$&#^_%%~]', function(c)
    if c == '\\' then return '\\textbackslash{}' end
    if c == '^' then return '\\textasciicircum{}' end
    if c == '~' then return '\\textasciitilde{}' end
    return '\\' .. c
  end))
end

local function html_escape(s)
  return (s:gsub('&', '&amp;'):gsub('<', '&lt;'):gsub('>', '&gt;'):gsub('"', '&quot;'))
end

local function raw_block(s)
  return pandoc.RawBlock(is_latex and 'latex' or 'html', s)
end

local function raw_inline(s)
  return pandoc.RawInline(is_latex and 'latex' or 'html', s)
end

local function has_class(el, cls)
  for _, c in ipairs(el.classes) do
    if c == cls then return true end
  end
  return false
end

local function latex_of(blocks)
  local out = pandoc.write(pandoc.Pandoc(blocks), 'latex')
  return (out:gsub('%s+$', ''))
end

--------------------------------------------------------------------------
-- Metadata
--------------------------------------------------------------------------

local function read_meta(meta)
  if meta.labels then
    for k, v in pairs(meta.labels) do labels[k] = stringify(v) end
  end
  if meta['asset-prefix'] then asset_prefix = stringify(meta['asset-prefix']) end
end

--------------------------------------------------------------------------
-- Images
--------------------------------------------------------------------------

local function fix_src(img)
  if not img.src:match('^%a+:') and not img.src:match('^/') and not img.src:match('^%.%./') then
    img.src = asset_prefix .. img.src
  end
  return img
end

local function latex_width(img, default)
  local w = img.attributes.width
  if w and w:match('%%$') then
    return string.format('%.2f\\linewidth', tonumber(w:sub(1, -2)) / 100)
  end
  return default
end

local function latex_image(img, caption_blocks, kind)
  local cap = ''
  if caption_blocks and #caption_blocks > 0 then
    cap = latex_of(caption_blocks)
  end
  if kind == 'phone' then
    return string.format('\\jfphone{%s}{%s}', img.src, cap)
  elseif kind == 'card-shot' then
    return string.format('\\jfcardshot{%s}', img.src)
  end
  return string.format('\\jfshot{%s}{%s}{%s}', latex_width(img, '0.9\\linewidth'), img.src, cap)
end

local function image_kind(img)
  for _, k in ipairs({ 'phone', 'card-shot', 'shot' }) do
    if has_class(img, k) then return k end
  end
  return 'shot'
end

local function Figure(fig)
  local img
  fig.content:walk({ Image = function(i) img = i end })
  if not img then return nil end
  fix_src(img)
  if is_latex then
    return raw_block(latex_image(img, fig.caption.long, image_kind(img)))
  end
  fig.classes:insert('m-figure')
  fig.classes:insert('m-figure--' .. image_kind(img))
  return fig
end

local function Image(img)
  fix_src(img)
  if is_latex and (has_class(img, 'card-shot') or has_class(img, 'phone') or has_class(img, 'shot')) then
    return raw_inline(latex_image(img, nil, image_kind(img)))
  end
  return img
end

--------------------------------------------------------------------------
-- Tables (LaTeX): our own styling; tabular inside cards, longtable outside
--------------------------------------------------------------------------

local function latex_table(tbl, in_card)
  local st = pandoc.utils.to_simple_table(tbl)
  local ncols = #st.headers
  -- column widths from content length, so "You write | You get" breathe
  local lens = {}
  for c = 1, ncols do lens[c] = #stringify(st.headers[c]) end
  for _, row in ipairs(st.rows) do
    for c = 1, ncols do lens[c] = math.max(lens[c], math.min(#stringify(row[c]), 40)) end
  end
  local total = 0
  for c = 1, ncols do total = total + lens[c] end
  local spec = {}
  local avail = 1 - 0.035 * ncols
  for c = 1, ncols do
    local w = math.max(0.22, lens[c] / total) * avail
    spec[c] = string.format('>{\\raggedright\\arraybackslash}p{%.3f\\linewidth}', w)
  end
  local env = in_card and 'jfcardtable' or 'jftable'
  local lines = { string.format('\\begin{%s}{%s}', env, table.concat(spec, '')) }
  local head = {}
  for c = 1, ncols do head[c] = '\\jfth{' .. latex_of(st.headers[c]) .. '}' end
  lines[#lines + 1] = '\\jfheadrow ' .. table.concat(head, ' & ') .. '\\\\'
  if not in_card then lines[#lines + 1] = '\\endhead' end
  for i, row in ipairs(st.rows) do
    local cells = {}
    for c = 1, ncols do cells[c] = latex_of(row[c]) end
    lines[#lines + 1] = (i % 2 == 0 and '\\jfevenrow ' or '\\jfoddrow ')
      .. table.concat(cells, ' & ') .. '\\\\'
  end
  lines[#lines + 1] = string.format('\\end{%s}', env)
  return raw_block(table.concat(lines, '\n'))
end

--------------------------------------------------------------------------
-- Callouts
--------------------------------------------------------------------------

local callout_kinds = { tip = true, gotcha = true, note = true }

local function callout(div, kind)
  local title = ''
  local content = pandoc.List(div.content)
  if #content > 0 and content[1].t == 'Header' then
    title = content[1].content
    content:remove(1)
  end
  if is_latex then
    local t = title ~= '' and latex_of({ pandoc.Plain(title) }) or ''
    local blocks = pandoc.List({ raw_block(string.format(
      '\\begin{jfcallout}{%s}{%s}{%s}', kind, tex_escape(label(kind)), t)) })
    blocks:extend(content)
    blocks:insert(raw_block('\\end{jfcallout}'))
    return blocks
  end
  local blocks = pandoc.List({
    pandoc.Div({ pandoc.Plain({ pandoc.Str(label(kind)) }) }, pandoc.Attr('', { 'callout__label' })),
  })
  if title ~= '' then
    blocks:insert(pandoc.Div({ pandoc.Plain(title) }, pandoc.Attr('', { 'callout__title' })))
  end
  blocks:extend(content)
  return pandoc.Div(blocks, pandoc.Attr(div.identifier, { 'callout', 'callout--' .. kind }))
end

--------------------------------------------------------------------------
-- Cards
--------------------------------------------------------------------------

local function card(div)
  local side = label(div.attributes.side or 'question')
  local hero = has_class(div, 'hero')
  local spoken = div.attributes.spoken
  local content = div.content
  if is_latex then
    local blocks = pandoc.List({ raw_block(string.format(
      '\\begin{jfcard}{%s}{%s}%s', tex_escape(side), tex_escape(label('flip')), hero and '\\jfherotext' or '')) })
    blocks:extend(content)
    blocks:insert(raw_block('\\end{jfcard}'))
    if spoken then
      blocks:insert(raw_block(string.format('\\jfspoken{%s}{%s}',
        tex_escape(label('voice-says')), tex_escape(spoken))))
    end
    return blocks
  end
  local classes = { 'jf-card' }
  if hero then classes[#classes + 1] = 'jf-card--hero' end
  local blocks = pandoc.List({
    raw_block('<div class="jf-card__top"><span class="jf-card__side">' .. html_escape(side) .. '</span></div>'),
    pandoc.Div(content, pandoc.Attr('', { 'jf-card__body' })),
    raw_block('<div class="jf-card__foot"><span class="jf-card__flip" aria-hidden="true">'
      .. '<svg viewBox="0 0 24 24" width="14" height="14"><path fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" d="M4 12a8 8 0 0 1 13.7-5.6L20 9M20 4v5h-5M20 12a8 8 0 0 1-13.7 5.6L4 15M4 20v-5h5"/></svg>'
      .. html_escape(label('flip')) .. '</span></div>'),
  })
  local out = pandoc.List({ pandoc.Div(blocks, pandoc.Attr('', classes)) })
  if spoken then
    out:insert(raw_block('<p class="jf-spoken"><span class="jf-spoken__label">'
      .. html_escape(label('voice-says')) .. '</span> “' .. html_escape(spoken) .. '”</p>'))
  end
  return pandoc.Div(out, pandoc.Attr('', { 'jf-card-wrap' }))
end

--------------------------------------------------------------------------
-- Pair: "You write" → "On the card"
--------------------------------------------------------------------------

local function pair(div)
  local content = pandoc.List(div.content)
  local left = pandoc.List({ content[1] })
  local right = pandoc.List({ table.unpack(content, 2) })
  if is_latex then
    local blocks = pandoc.List({ raw_block(string.format(
      '\\begin{jfpair}{%s}{%s}', tex_escape(label('you-write')), tex_escape(label('on-the-card')))) })
    blocks:extend(left)
    blocks:insert(raw_block('\\jfpairmiddle'))
    blocks:extend(right)
    blocks:insert(raw_block('\\end{jfpair}'))
    return blocks
  end
  local function col(lbl, blocks)
    local b = pandoc.List({ pandoc.Div({ pandoc.Plain({ pandoc.Str(lbl) }) }, pandoc.Attr('', { 'pair__label' })) })
    b:extend(blocks)
    return pandoc.Div(b, pandoc.Attr('', { 'pair__col' }))
  end
  return pandoc.Div({
    col(label('you-write'), left),
    raw_block('<div class="pair__arrow" aria-hidden="true">→</div>'),
    col(label('on-the-card'), right),
  }, pandoc.Attr('', { 'pair' }))
end

--------------------------------------------------------------------------
-- Split: picture + text
--------------------------------------------------------------------------

local function split(div)
  if not is_latex then return nil end
  local fig, text = {}, {}
  for _, b in ipairs(div.content) do
    if b.t == 'Div' and has_class(b, 'text') then
      text = b.content
    else
      fig[#fig + 1] = b
    end
  end
  local blocks = pandoc.List({ raw_block('\\begin{jfsplit}') })
  blocks:extend(fig)
  blocks:insert(raw_block('\\jfsplitmiddle'))
  blocks:extend(text)
  blocks:insert(raw_block('\\end{jfsplit}'))
  return blocks
end

--------------------------------------------------------------------------
-- Divs and spans
--------------------------------------------------------------------------

local function Div(div)
  for kind in pairs(callout_kinds) do
    if has_class(div, kind) then return callout(div, kind) end
  end
  if has_class(div, 'card') then return card(div) end
  if has_class(div, 'pair') then return pair(div) end
  if has_class(div, 'split') then return split(div) end
  if is_latex and has_class(div, 'lede') then
    local blocks = pandoc.List({ raw_block('\\begin{jflede}') })
    blocks:extend(div.content)
    blocks:insert(raw_block('\\end{jflede}'))
    return blocks
  end
  if has_class(div, 'inthischapter') then
    if is_latex then
      local blocks = pandoc.List({ raw_block('\\begin{jfinthischapter}{' .. tex_escape(label('in-this-chapter')) .. '}') })
      blocks:extend(div.content)
      blocks:insert(raw_block('\\end{jfinthischapter}'))
      return blocks
    end
    div.content:insert(1, pandoc.Div({ pandoc.Plain({ pandoc.Str(label('in-this-chapter')) }) },
      pandoc.Attr('', { 'eyebrow' })))
    return div
  end
end

local function Span(span)
  if not is_latex then return nil end
  for _, cls in ipairs({ 'ui', 'blank', 'reveal' }) do
    if has_class(span, cls) then
      local inner = pandoc.write(pandoc.Pandoc({ pandoc.Plain(span.content) }), 'latex'):gsub('%s+$', '')
      return raw_inline('\\jf' .. cls .. '{' .. inner .. '}')
    end
  end
end

local function Table(tbl)
  if is_latex then return latex_table(tbl, false) end
end

--------------------------------------------------------------------------
-- Chapter opener: H1 ... first H2
--------------------------------------------------------------------------

local function Pandoc(doc)
  local out = pandoc.List()
  local hero = nil
  local i = 1
  local blocks = doc.blocks
  while i <= #blocks do
    local b = blocks[i]
    if b.t == 'Header' and b.level == 1 then
      local number = b.attributes.number or ''
      local opener = pandoc.List()
      i = i + 1
      while i <= #blocks and not (blocks[i].t == 'Header' and blocks[i].level <= 2) do
        opener:insert(blocks[i])
        i = i + 1
      end
      if is_latex then
        out:insert(raw_block(string.format('\\begin{jfopener}{%s}{%s}{%s}{%s}',
          number, tex_escape(label('chapter')), latex_of({ pandoc.Plain(b.content) }), b.identifier)))
        out:extend(opener)
        out:insert(raw_block('\\end{jfopener}'))
      else
        hero = pandoc.List({
          pandoc.Div({ pandoc.Plain({ pandoc.Str(label('chapter') .. ' ' .. number) }) }, pandoc.Attr('', { 'eyebrow' })),
          pandoc.Header(1, b.content, pandoc.Attr(b.identifier, { 'display', 'display--sm' })),
        })
        hero:extend(opener)
      end
    else
      if b.t == 'Header' and b.level == 2 and has_class(b, 'cheatsheet') and is_latex then
        out:insert(raw_block('\\clearpage'))
      end
      out:insert(b)
      i = i + 1
    end
  end
  if hero then doc.meta.hero = pandoc.MetaBlocks(hero) end
  doc.blocks = out
  return doc
end

-- Tables inside cards must become a plain tabular before the general Table
-- rule turns every remaining table into a page-breaking longtable.
local function CardTables(div)
  if is_latex and has_class(div, 'card') then
    div.content = div.content:walk({ Table = function(t) return latex_table(t, true) end })
    return div
  end
end

return {
  { Meta = read_meta },
  { Figure = Figure },
  { Image = Image },
  { Div = CardTables },
  { Table = Table },
  { Div = Div, Span = Span },
  { Pandoc = Pandoc },
}
