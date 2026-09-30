---
slug: media
number: 4
title: Pictures, sound and occlusion
description: "Add pictures and sound to JustFlip! cards, describe them for VoiceOver, credit their sources, and turn a labelled diagram into image-occlusion cards — plus the rules that keep media looking right on every device."
---

# Pictures, sound and occlusion {#media number="4"}

::: lede
Some things are easier to remember than to describe: a bird, a chord, a
bone in the hand, the way a word is pronounced. JustFlip! lets a card
show a picture, play a sound, and — with image occlusion — cover parts
of a diagram so you can test yourself on every label in it.
:::

::: inthischapter
- Add pictures from Photos or the clipboard, and choose where they sit
- Learn which tab the editor saves, so nothing gets lost
- Describe pictures for VoiceOver and credit their authors
- Put sound on a card, and play several tracks from Anki
- Turn one labelled diagram into a set of image-occlusion cards
- Prepare images that stay sharp, small and visible in dark mode
:::

Nothing in this chapter needs JustFlip! Pro. Pictures, sound and image
occlusion work the same in the free version.

## Adding a picture {#pictures}

Each side of a card has its own picture. There are three ways to add
one, and they differ in where the picture ends up.

**In the text.** On the [Text]{.ui} tab, tap the picture button at the
far left of the formatting toolbar ([Insert Image]{.ui}) and pick a
photo. JustFlip! puts the marker `![attachment:0]` at the cursor, and
the picture appears exactly there on the card, between the words around
it.

**As the whole side.** Switch to the [Image]{.ui} tab and tap
[Choose Image]{.ui}. With no text, the picture fills the side, centred
and scaled to fit. This is the right choice for "What is this?" cards:
a flag, a leaf, an X-ray.

**From the clipboard.** Copy a picture anywhere, then paste it into the
text field. JustFlip! stores the image itself, not a link to where it
came from, and inserts the marker for you.

![The Image tab of the card editor, with a photo chosen and the description and licence fields below it.](images/manual/{lang}/04-image-tab.png){.phone}

A side holds one picture. Choosing another one replaces it; to take a
picture off, open the [Image]{.ui} tab and tap [Remove]{.ui}.

::: tip
#### On the Mac

The picture button opens your Photos library. For an image that lives
somewhere else — a download, a screenshot, a scan — add it to Photos
first, then pick it in the card editor.
:::

::: tip
#### Taking a photo for a card

Take the photo with the Camera app first, then choose it from Photos in
the card editor.
:::

### Where a picture sits {#placement}

A picture can end up in one of three places. JustFlip! decides from what
is on the side, not from a setting:

| On the side | Where the picture goes |
|---|---|
| A picture and no text | Fills the side, centred |
| Text with an `![attachment:0]` marker | Inside the text, where the marker is |
| Text with no marker | Below the text, as a block |

The third case is what you get with decks you import (Chapter 5) and
with many curated decks: the file names a picture, but the text has no
marker. Such a picture stays put when you edit the text, and the
[Image]{.ui} tab is where you remove it.

When the marker is in your text and you delete it, the picture goes
with it when you save.

::: note
#### Several pictures on one side

A side you make yourself holds one picture. Cards imported from Anki can
carry several, each with its own numbered marker —
`![attachment:0]`, `![attachment:1]` and so on. Delete one marker and
only that picture disappears; the others stay.
:::

A large picture on a card shows a [Zoom]{.ui} button. It opens the
picture full screen, where you can pinch or double-tap to look closer.

## The tab that's showing is what gets saved {#tabs}

The [Text]{.ui}, [Image]{.ui} and [Audio]{.ui} tabs look like three
drawers of one side. They are closer to three *kinds* of side, and
[Save]{.ui} stores the one whose tab is showing:

| Saved on | What that side keeps |
|---|---|
| [Text]{.ui} | The text; a picture if it is in the text or below it; a sound the card already had |
| [Image]{.ui} | The picture; a sound the card already had. The text is dropped |
| [Audio]{.ui} | The sound, and the side's language. The text and the picture are dropped |

::: gotcha
#### Switch back to Text before you save

Replacing the sound or the picture of a card that also has text? Make
the change on the [Audio]{.ui} or [Image]{.ui} tab, then switch back to
[Text]{.ui} and tap [Save]{.ui} there. Saved on the other tab, that side
loses its text.
:::

That rule gives you simple recipes for mixed cards:

- **Text and a picture:** stay on the [Text]{.ui} tab and add the
  picture with the toolbar's picture button.
- **A picture and a sound:** choose the sound on the [Audio]{.ui} tab
  and save. Then edit the card, choose the picture on the [Image]{.ui}
  tab and save again.
- **Text and a sound:** choose the sound on the [Audio]{.ui} tab and
  save. Then edit the card, write the text on the [Text]{.ui} tab and
  save.

The two-step recipes are needed because a sound chosen on a *new* card
is only saved from the [Audio]{.ui} tab. Once the card has a sound, the
other tabs keep it.

## Describing and crediting pictures {#descriptions}

When a side has a picture, two fields appear under it:
[Image Description]{.ui} and [Image license]{.ui}. Both are optional,
and both are worth a few seconds.

### The description

VoiceOver reads the description instead of the picture. Without one,
it just says "Image", which tells someone who can't see the card
nothing about it.

Describe what the picture *shows*, not what it *means*. On a card that
asks "Which bird is this?", write "A small brown bird with a red breast
on a fence post" — not "A robin", which gives the answer away.

::: note
#### Descriptions and spoken hints are different things

The description is for VoiceOver. The spoken hint from Chapter 3,
`![attachment:0]{a red apple}`, is what the speaker button and Speak
Cards say. A picture without a hint is silent when the card is read
aloud, whatever its description says.
:::

### The licence

Using someone else's photo or drawing? Put the author and the licence
in [Image license]{.ui} — for example "Photo: Jane Doe, CC BY 4.0".
Links written as `[label](https://…)` work in this field.

On the card, a small ⓘ button appears in the footer. Tapping it opens a
sheet with the full text, so the credit is there for anyone who wants it
without cluttering the card.

![A card with a photo and the ⓘ licence button in its footer; the Image license sheet open over it.](images/manual/{lang}/04-licence-sheet.png){.phone}

Curated and AI-made decks can carry licences too, in their
`q_image_license` and `a_image_license` fields (Chapter 5).

## Size, formats and sync {#size}

A card's picture travels with the card. It is stored inside your
library and synced through iCloud to every device, so a picture you add
on the Mac is on your iPhone a moment later.

That convenience has a price: every megabyte syncs to every device.
JustFlip! keeps pictures in check on its own. When you save, a picture
more than 3,000 pixels on its long side is scaled down to 3,000; an
opaque photo is stored as a JPEG, and a picture with transparency keeps
it. Smaller pictures are stored exactly as they are.

Sound files are stored exactly as you choose them. A three-minute
recording can easily weigh more than a hundred cards of text, so trim
clips to the part you need.

| | Works | Doesn't |
|---|---|---|
| Pictures | Anything your Photos library shows; PNG, JPEG, GIF and WebP from imports | SVG and other vector formats |
| Sound | Files the system recognises as audio, such as `.mp3`, `.m4a` and `.wav` | Video |

::: gotcha
#### No SVG

Vector drawings (`.svg`) can't be shown on a card. Export the drawing
as a PNG first — at about 2,000 pixels wide, with a white background
(see [Pictures that work](#good-images)).
:::

## Sound on a card {#audio}

Open the [Audio]{.ui} tab and tap [Choose Audio File]{.ui} to pick a
file from Files. The tab then shows the file's name and size, a trash
button to remove it, and [Replace Audio]{.ui}. Below them is the side's
[Language]{.ui}.

JustFlip! doesn't record from the microphone. Record with Voice Memos,
share the memo to Files, and choose it from there.

![The Audio tab with an audio file chosen: its name, size, trash button and Replace Audio.](images/manual/{lang}/04-audio-tab.png){.phone}

### How it plays

Nothing plays by itself. What you see depends on the side:

- **A side that is only a sound** shows one large play button in the
  middle of the card.
- **A side with text or a picture as well** has a small [Audio]{.ui}
  button in its footer, next to the speaker button. While the sound
  plays it reads [Playing]{.ui}.

Starting the sound stops the voice if it is reading the card, and the
other way round.

### Several tracks

Anki notes sometimes carry more than one sound on a side — a word, then
an example sentence. JustFlip! keeps them all, in their original order.
The footer button then reads **Audio (2)**, **Audio (3)** and so on, and
opens a menu with one entry per track.

::: gotcha
#### Replacing one track replaces them all

The editor shows only the first track. [Replace Audio]{.ui} or the
trash button acts on *every* track of that side. If you want to keep
the extra tracks, leave the [Audio]{.ui} tab alone.
:::

## Image occlusion {#occlusion}

**Image occlusion** turns one picture into many cards. You cover parts
of a diagram with shapes; each covered part becomes its own card that
asks "What's under here?". It is the fastest way to learn a map, an
anatomy plate, a circuit, a fingering chart — anything that is a picture
full of labels.

![The occlusion editor: an anatomy diagram with rectangles drawn over the labels, and the tools row above.](images/manual/{lang}/04-occlusion-editor.png){.shot width=80%}

### Making occlusion cards

1. Open a deck, tap the [More actions]{.ui} button (•••) and choose
   [Add image occlusion cards]{.ui}.
2. Tap [Select image]{.ui} and pick the picture.
3. Drag across the picture to cover a region. Repeat for every label
   you want to learn.
4. Pick a mode, add the optional text, and tap **Save N cards**.

The tools above the picture:

| Tool | What it does |
|---|---|
| [Rectangle]{.ui} / [Ellipse]{.ui} | Draw a new region by dragging |
| [Select]{.ui} | Move a region by dragging it; resize it by its corner handle |
| [Undo]{.ui} / [Redo]{.ui} | Step back and forward through your edits |
| [Duplicate region]{.ui} | Copy the selected region |
| [Delete region]{.ui} | Remove the selected region |
| [Change image]{.ui} | Swap the picture underneath |

### Two modes {#occlusion-modes}

Under [Mode]{.ui} you choose how much of the picture is hidden while a
card asks its question. Either way, every region becomes its own card.

| Mode | While asking | Best for |
|---|---|---|
| [Hide one, guess one]{.ui} | Only the tested region is covered; you can see every other label | Learning where things are, with the neighbours as clues |
| [Hide all, guess one]{.ui} | Every region is covered; the tested one has a stronger border and a question mark | Testing yourself properly, without the other labels giving hints |

Start with [Hide one, guess one]{.ui}. Once a picture feels easy, a
second set of cards in [Hide all, guess one]{.ui} is a good exam.

### The text around it

Three optional fields sit under the mode:

- **[Header (optional)]{.ui}** — shown above the picture on every card.
  Put the question here: "Name the bone."
- **[Answer notes (optional)]{.ui}** — shown under the picture once the
  answer is revealed. Good for a mnemonic or a detail.
- **[Comments (optional)]{.ui}** — a note to yourself. It is kept with
  the cards but isn't shown during review.

Then there is [Image description]{.ui}. As the editor says, VoiceOver
reads it instead of the picture, so describe the diagram without giving
any answer away: "A front view of the human skeleton" rather than a
list of the bones.

::: gotcha
#### Covers hide the picture, not the text in it

A region covers exactly the area you drew. If a label pokes out of its
rectangle, the answer is visible. Draw generously — a margin around each
label costs nothing.
:::

### Reviewing an occlusion card {#occlusion-review}

An occlusion card doesn't flip. The picture stays in place; tap
[Show answer]{.ui} at the top — or press the space bar on a keyboard —
and the covered region opens, outlined, while the rest stays as it was.
Then grade it like any other card. Pinch to zoom into a detailed
diagram.

![An occlusion card during review, before and after Show answer.](images/manual/{lang}/04-occlusion-review.png){.phone}

Occlusion cards are part of your normal reviews on iPhone, iPad and Mac.
The Apple Watch leaves them out and tells you how many cards are
waiting for your iPhone.

### Editing an occlusion card {#occlusion-edit}

Edit any card of the set — press and hold it (or right-click on a
Mac) and choose [Edit Card]{.ui} — and JustFlip! opens the region
editor, not the text editor. There you can move, add or delete regions, change the mode,
the text, or even the picture.

Regions you keep keep their review history. A region you add becomes a
new card; a region you delete takes its card with it.

::: note
#### Occlusion from Anki and from files

Anki's own image-occlusion notes, and the older Image Occlusion Enhanced
add-on, arrive as native JustFlip! occlusion cards when you import the
deck (Chapter 5). Deck files made by the coding-agent skill can contain
occlusion cards too.
:::

## Pictures that work {#good-images}

A card draws your picture exactly as it is. There is no background
plate behind it, no frame and no automatic contrast fix. That keeps
photos looking natural, and it makes a few habits worth learning.

::: gotcha
#### Transparent line art vanishes in dark mode

A PNG with black lines on a transparent background looks perfect in
light mode. In dark mode the card behind it is nearly black, and the
drawing disappears — lines, labels, notes on a stave, all of it. Before
you add a diagram, formula image or scanned sketch, give it a solid
white or light background. Most image editors call this *flatten*;
exporting as JPEG does it too. Check the card once in dark mode before
you make fifty more like it.
:::

A few more rules of thumb:

1. **Use raster images.** PNG for diagrams, text and line art; JPEG for
   photos. No SVG.
2. **About 2,000 pixels on the long side is plenty.** JustFlip! never
   draws a picture on a card larger than about 2,200 pixels, and it
   scales anything over 3,000 down when you save. More resolution only
   costs sync time.
3. **Crop hard.** A card is small. Cut away everything that isn't the
   thing you are asking about — the picture gets bigger for free.
4. **Keep text in the picture large.** Labels that are readable on a
   laptop screen are often a blur on an iPhone card. Zoom helps, but a
   card you have to zoom into is slower to review.
5. **One idea per picture.** A diagram with twenty labels makes one bad
   card and twenty good occlusion cards.

## Quick reference {#reference .cheatsheet}

| Task | Where |
|---|---|
| Picture inside the text | [Text]{.ui} tab → toolbar picture button |
| Picture as the whole side | [Image]{.ui} tab → [Choose Image]{.ui} |
| Picture from the clipboard | Paste into the text field (⌘V on Mac) |
| Remove a picture | [Image]{.ui} tab → [Remove]{.ui} |
| Describe for VoiceOver | [Image Description]{.ui}, under the picture |
| Credit the author | [Image license]{.ui} → the ⓘ button on the card |
| Add a sound | [Audio]{.ui} tab → [Choose Audio File]{.ui} |
| Replace or remove a sound | [Audio]{.ui} tab → [Replace Audio]{.ui} or the trash button |
| New occlusion cards | Deck → [More actions]{.ui} → [Add image occlusion cards]{.ui} |
| Edit occlusion regions | Edit any card of the set |
| Reveal an occlusion card | [Show answer]{.ui}, or the space bar |
