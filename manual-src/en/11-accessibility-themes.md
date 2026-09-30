---
slug: accessibility-themes
number: 11
title: Accessibility and themes
description: "How JustFlip! works with VoiceOver, larger text, Reduce Motion, Increase Contrast and Voice Control, how to pick a theme and text size, and how to write cards everyone can learn from."
---

# Accessibility and themes {#accessibility-themes number="11"}

::: lede
JustFlip! is built on the accessibility settings you already use on your
iPhone, iPad and Mac. You don't need to switch anything on in the app.
VoiceOver, larger text, Reduce Motion and Increase Contrast simply work. On
top of that, JustFlip! has its own text size and five themes, so the app
reads comfortably and looks the way you like.
:::

::: inthischapter
- See which system settings JustFlip! follows, and what each one changes
- Review with VoiceOver: flipping, grading and hearing cloze blanks
- Set the text size, for the whole device or just for JustFlip!
- Choose a theme: JustFlip Light, JustFlip Dark, Mist, Mist Dark or System
- Write cards that work for every learner, whatever their eyes and ears
:::

## It follows your settings {#system-settings}

JustFlip! has no accessibility mode to switch on. It reads the settings in
**Settings › Accessibility** on your device and adapts to them. This is what
each one changes:

| System setting | What JustFlip! does |
|---|---|
| VoiceOver | Reads every card, button and chart, with named actions for flipping and grading |
| Larger Text | Scales the text in the app, including the text on your cards |
| Bold Text | Draws the app's text in a heavier weight |
| Reduce Motion | Stops the card from spinning when it flips, and calms other animations |
| Increase Contrast | Switches to higher-contrast colours and adds outlines where colour alone isn't enough |
| Differentiate Without Colour | Adds symbols, dots and outlines to indicators that otherwise use colour |
| Voice Control | Every button answers to its visible name, and the card to a few extra phrases |

The one accessibility setting inside the app is your **text size**, under
**Settings › Appearance**. You can read more about it in
[Larger text](#larger-text).

::: note
#### Our public accessibility report

We keep an honest, detailed report of what's implemented and what's still
being tested, device by device, at https://just-flip.app/accessibility/.
Apple's Accessibility Nutrition Labels on the App Store are published one
category at a time, only after that category passes testing on real devices.
:::

## VoiceOver {#voiceover}

VoiceOver reads JustFlip! the way it reads Apple's own apps. Lists, forms and
Settings use standard controls, and grouped items, such as a deck row or a
statistic, are read as one item instead of a stream of fragments.

### Cards and reviews

A card is **one item** for VoiceOver. It reads the side you're looking at,
and a hint tells you to double-tap to flip it. After the flip, VoiceOver
announces "Question" or "Answer", so you always know which side you're on.

On a card, swipe up or down to reach its actions:

- [Flip card]{.ui} turns the card over.
- [Show full content]{.ui} opens a card that is too long to fit in a sheet
  where you can read all of it.
- [View image full screen]{.ui} or [View diagram full screen]{.ui} opens a
  picture or diagram at full size, where you can zoom.

The grade buttons are read with the grade first and the details after it:
the grade, then when the card would come back, then how many times you've
chosen that grade in this session.
After each grade, VoiceOver tells you where you are, for example "Card 4 of
20", and it announces [Practice Complete]{.ui} at the end of the session.

:::: pair
```markdown
The capital of France
is {{c1::Paris}}.
```

::: {.card side="question" spoken="The capital of France is blank."}
The capital of France is [[…]]{.blank}.
:::
::::

**Cloze blanks are never given away.** On the question side, VoiceOver says
"blank" where the hidden words are, or reads the hint if the blank has one.
The answer only comes after the flip.

VoiceOver reads the rest of the card the way JustFlip!'s own voice does:

- **Spoken hints** are used. `[iOS]{eye oh ess}` is read as "eye oh ess"
  (Chapter 3).
- **Formulas** are read from their spoken hint, or from their TeX source
  when there's no hint.
- **Diagrams** are read as their labels, not their arrows.
- **Tables** are read row by row, cell by cell.
- **Pictures** are read from their description (see
  [Writing accessible cards](#accessible-cards)). A picture without a
  description is read simply as "Image".
- **Flags** are read out as their names, for example "Red flag".

### Lists and actions

Touch-and-hold menus have VoiceOver actions too, so you don't need the
gesture. On an interest row, swipe up or down for [Edit Interest]{.ui},
[Import cards]{.ui}, [Export archive]{.ui}, [Export statistics]{.ui} and
[Delete]{.ui}. A deck row offers [Edit Deck]{.ui} and [Delete Deck]{.ui}.
In the tag field, VoiceOver confirms each tag as you add or remove it.

In Statistics, the charts can be explored point by point: each point is
read with its date and its value.

On an image occlusion card, the picture offers [Zoom in]{.ui},
[Zoom out]{.ui} and [Reset zoom]{.ui} as actions, in place of pinching.

### On Apple Watch

The watch reads each card as "Question" or "Answer" followed by its text.
Rating a card on the watch normally means pressing and holding it (Chapter 8).
VoiceOver can't press and hold, so the four grades are also offered as
actions on the card: swipe up or down to pick Again, Hard, Good or Easy.

## Larger text {#larger-text}

Out of the box, JustFlip! uses the text size you set for your whole device in
**Settings › Accessibility › Display & Text Size › Larger Text**. Buttons,
lists, statistics and the text on your cards all grow with it.

You can also give JustFlip! a size of its own, separate from the rest of the
device. Go to **Settings › Appearance**:

![The Appearance section in Settings: the theme menu, the Follow system text size switch and the Text size slider with its preview.](images/manual/{lang}/11-appearance-settings.png){.phone}

- [Follow system text size]{.ui} is on by default. JustFlip! then uses the
  device's size.
- The [Text size]{.ui} slider picks the size for JustFlip! alone. Moving it
  turns [Follow system text size]{.ui} off for you. The line underneath it,
  "Cards and lists look like this.", shows the size you're choosing.

The slider has ten steps, from the smallest system size up to the third
accessibility size. The largest two sizes, which you can set in iOS, still
work in JustFlip! when they come from your device setting. The slider just
doesn't offer them. At those sizes, most cards no longer fit on the card,
and you'd be opening almost every one in a separate sheet.

The last step of the welcome tour offers the same slider, so you can set a
comfortable size before your first review.

::: gotcha
#### Big text doesn't shrink to fit

At the default size, JustFlip! shrinks a long card slightly so it fits
(Chapter 3). With a larger text size, it doesn't. Your card is drawn at
exactly the size you asked for. Whatever doesn't fit fades out at the
bottom, and the **•••** button (or VoiceOver's [Show full content]{.ui}
action) opens the rest. If that happens on most of your cards, split them
into shorter ones. That's good for your memory anyway.
:::

::: note
#### What's still being worked on

Larger text support is nearly complete, but it hasn't been tested on
devices at every size yet. The one known gap: at the very largest sizes,
the heading and the grade buttons around the card on the review screen can
run out of room. The card itself is fine. If you need the largest sizes,
setting JustFlip!'s own text size one or two steps lower keeps the review
screen tidy.
:::
<!-- VERIFY: Readiness doc (2026-07-19) says "at AX3 and above the Review/Testing chrome (screen title, response buttons) overflows the screen with nothing to scroll". Confirm this is still open before publishing. -->

## Motion, weight and contrast {#visual}

### Reduce Motion

With **Reduce Motion** on, the card no longer spins in 3D when you flip it.
It changes sides in place, a little faster. The other movement in the app is
calmed down too: cards flying off after a grade, the shimmer on loading
lists, the welcome-tour illustrations, progress bars filling up and the
review results.

### Bold Text

**Bold Text** makes the app's text heavier, just as it does everywhere else
on your device. Heavier text takes more room, so JustFlip! takes it into
account when it works out whether a card fits.
<!-- VERIFY: card body text is drawn by CardMarkupView from an explicit UIFont; confirm Bold Text actually thickens card question/answer text, not only system-styled UI text. -->

### Increase Contrast

With **Increase Contrast** on, JustFlip! switches to higher-contrast versions
of its colours, in light and in dark. A few places add outlines that
colour alone would otherwise carry:

- a card's **flag** gets an outline around its colour,
- on an **image occlusion** card, the region you're asked about gets extra
  emphasis,
- **diagrams**, on the card and full screen, use the higher-contrast
  colours too.

Every colour pair the app uses for text is measured against its background
in light, dark and both Increase Contrast appearances, and each one clears a
contrast ratio of 4.5:1.

### Differentiate Without Colour

When **Differentiate Without Colour** is on, the small indicators that use
colour gain a shape as well:

- the small indicators that show how urgent a card is and how you last
  graded it switch to distinct symbols,
- the activity heatmap in Statistics adds one, two or three dots for low,
  medium and high activity, and outlines today's square,
- image occlusion regions get extra emphasis, as with Increase Contrast.

Some things never rely on colour, whatever your settings: the grade
buttons always carry a label and a symbol, and the selected flag in the
flag picker is marked with a ring and a checkmark.

## Voice Control and keyboards {#voice-control}

**Voice Control** uses the names you see on screen, so "Tap Again", "Tap
Good" or "Tap Settings" work as you'd expect. A few controls answer to
extra phrases:

| Say | Does |
|---|---|
| "Tap Flip card", "Tap Turn card", "Tap Show other side" or "Tap Flip" | Flips the card |
| "Tap Postpone" or "Tap Snooze" | Opens the postpone menu during a review |

Voice Control hasn't yet been tested end to end on every device. The
sliders and the touch-and-hold menus are the least tested parts. If a
name doesn't work there, "Show numbers" always does.

**On a keyboard**, a review needs no pointer at all: Space flips the card
and the keys 1 to 4 grade it, on the Mac and on an iPad with a hardware
keyboard. The full reference is in Chapter 8. JustFlip! uses standard
buttons, menus and switches throughout, but **Full Keyboard Access** hasn't
been tested end to end yet.

## Themes {#themes}

A theme is the colour palette the whole app is drawn in. Choose one under
**Settings › Appearance › Theme**. The menu shows a small swatch of the
theme you have now:

| Theme | What it looks like |
|---|---|
| [System]{.ui} | The JustFlip! gold palette, light or dark to match your device. The default. |
| [JustFlip Light]{.ui} | The gold palette, always light, whatever your device is set to |
| [JustFlip Dark]{.ui} | The gold palette, always dark |
| [Mist]{.ui} | A calm, mineral light palette with clear-water blue, juniper and sage |
| [Mist Dark]{.ui} | Mist on deep ink-coloured surfaces |

![The five themes side by side: System, JustFlip Light, JustFlip Dark, Mist and Mist Dark.](images/manual/{lang}/11-theme-swatches.png){.shot width=80%}

The change is instant: the whole app repaints as soon as you pick a theme,
with no restart. Every theme has light or dark built in, so there's no
separate light/dark switch. To follow the device's dark mode, pick
[System]{.ui}.

::: note
#### Where themes don't reach

The theme is for the app itself. The home-screen widget keeps the JustFlip!
gold and follows the device's light or dark setting. The Apple Watch app is
always dark. The pictures on your cards are shown exactly as they are, in
every theme.
:::

::: gotcha
#### A pinned theme ignores dark mode

[JustFlip Light]{.ui} and [Mist]{.ui} stay light even when your device
switches to dark mode at sunset, and the two dark themes stay dark in
daylight. If JustFlip! doesn't follow your dark mode, check
**Settings › Appearance › Theme**. Only [System]{.ui} follows it.
:::

## Writing accessible cards {#accessible-cards}

The app can only read out what's on your cards. These habits make a deck
work for everyone who uses it, including you, when you listen with
Speak Cards on a walk.

1. **Describe every picture.** When a side has a picture, the editor shows
   an [Image Description]{.ui} field ("Describe the image (optional)").
   VoiceOver reads it in place of the picture. Describe what the picture
   shows: "A small brown bird with a red breast on a fence post" says far
   more than "bird photo". On a "Which bird is this?" card, leave the name
   out, or the description gives the answer away (Chapter 4).
   The description also makes a picture-only card findable in Spotlight
   (Chapter 8). And it travels with the deck when you export and share it.
2. **Set the language of each side.** The [Language]{.ui} picker decides
   which voice reads the side aloud with the speaker button and with
   Speak Cards (Chapter 7). A side without a language is never spoken by
   JustFlip!'s own voice.
3. **Add spoken hints where reading goes wrong.** A hint such as
   `$c^2${c squared}` fixes what JustFlip!'s voice says *and* what
   VoiceOver reads, in one go.
4. **Give cloze blanks a hint when context is thin.** With a hint,
   VoiceOver and the voice read the hint instead of just "blank".
5. **Don't let colour carry the meaning.** Flags are named aloud, but what
   each colour *means* is up to you. If "red" means "exam next week", put
   that in a tag too. Tags are text, so they can be read and searched.
6. **Label your diagrams well.** A diagram is read out as its labels, so
   "Start review → Card due?" says more than "A → B".
7. **Keep cards short.** A short card fits at large text sizes and on the
   Apple Watch, and it's easier to remember too.

::: gotcha
#### The language is for the voice, not for VoiceOver

The [Language]{.ui} picker controls JustFlip!'s own voice: the speaker
button and Speak Cards. VoiceOver reads cards with the voice you've set in
VoiceOver's own settings. For a card in another language, the speaker button
on the card is the most reliable way to hear it pronounced properly.
:::
<!-- VERIFY: CardMarkupView sets accessibilityLabel from speech text with no accessibilityLanguage / speech-language attribute (grep found none). Confirm on device that VoiceOver does not switch to the card's language. -->
