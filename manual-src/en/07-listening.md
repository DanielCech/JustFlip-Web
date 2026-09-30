---
slug: listening
number: 7
title: Learning by ear
description: "Have JustFlip! read your cards aloud: the Play button on a card, hands-free Speak Cards sessions, listening with the screen locked, and choosing the best voice for every language."
---

# Learning by ear {#listening number="7"}

::: lede
Your ears can study while your eyes are busy. JustFlip! reads any card
aloud, with a voice that matches the card's language. With Speak Cards
it reads a whole deck, question, pause, answer, while you walk, cook or
commute. The voices are Apple's own, and a few minutes spent picking
good ones makes every card sound better.
:::

::: inthischapter
- Hear a single card with its Play button
- Listen to a whole deck hands-free with Speak Cards
- Keep listening with the screen locked
- Choose a voice for each language, and download better ones
- Understand why the card language decides everything
- Know how cloze cards and spoken hints sound
:::

## It all starts with the language {#language}

Before anything is read aloud, JustFlip! needs to know *which* language
a side is in. Each side of a card has its own [Language]{.ui} picker in
the card editor (Chapter 3). The Spanish word on the front gets a Spanish
voice, and its English meaning on the back an English one.

The picker offers these languages: English, English (US), English (UK),
Czech, Spanish, French, German, Italian, Portuguese, Portuguese
(Brazil), Chinese (Simplified), Chinese (Traditional), Japanese, Korean,
Arabic, Russian and Hindi.

::: gotcha
#### "None" means silent

The first entry in the picker reads [None (system default)]{.ui}, but
there is no default voice behind it. A side set to None is **never
spoken**: it gets no Play button, and Speak Cards skips it. The same
goes for a language that has no voice installed on your device. When a
card stays quiet, check its language first.
:::

::: tip
#### Imported decks

A deck you import (Chapter 5) brings the languages set in the file. If a
whole imported deck is silent, its cards probably arrived without a
language. Set the language on each side in the card editor.
:::

## The Play button {#play-button}

Whenever a side has text and a voice for its language, a small
[Play]{.ui} button sits in the bottom-left corner of the card. Tap it to
hear that side. It turns into [Stop]{.ui} while it speaks, so tap it
again to stop. The button appears on cards in the card list and during a
review. It is free.

![A vocabulary card with the Play button in its bottom-left corner.](images/manual/{lang}/07-play-button.png){.shot width=80%}

If the side also has a sound file (Chapter 4), an [Audio]{.ui} button
appears next to the Play button. The two are separate: Play reads the
text with a synthetic voice, and Audio plays the sound file.
Starting one stops the other.

## Speak Cards (Pro) {#speak-cards}

**Speak Cards** reads a deck to you from start to finish, with no hands
needed. Open a deck, tap the play button at the top of the card list and
choose [Speak Cards]{.ui}. To start part-way through, press and hold a
card and choose [Speak from Here]{.ui}.

![The card list's play menu, with Speak Cards below the review modes.](images/manual/{lang}/07-speak-cards-menu.png){.phone}

For every card, JustFlip!:

1. **reads the question,**
2. **waits four seconds,** your moment to answer in your head,
3. **reads the answer,**
4. **plays a short chime,** then moves on to the next card.

While it plays, the card list follows along. The card being read is
flipped to its answer during the answer phase and turned back
afterwards. The play button at the top turns into a stop button
([Stop speaking cards]{.ui}). Tap it to end the session.

Speak Cards reads the cards **in the order the list shows them**. Use
the sort menu ([Original order]{.ui}, [Alphabetically]{.ui},
[By Progress]{.ui}, [By Urgency]{.ui} or [Shuffle]{.ui}) before you
start to change what you hear first. The voice speaks at the standard
system speed. There are no settings for the pause, the speed or which
side is read: every card is always read question first, then answer.

::: note
#### Listening isn't reviewing

Speak Cards is a way to soak up a deck, not a test. Nothing is graded,
your schedule doesn't change, and the session doesn't count towards
your streak or statistics. Progress trackers are skipped. Use it
alongside your reviews, not instead of them.
:::

### Which cards are read

A card is read only when **both** sides can be spoken: each has text,
and each has a language with a voice installed. Other cards are skipped
without a word, and the session goes on. If no card in the deck
qualifies, JustFlip! tells you:
[No speakable cards available. Both sides need text and a supported TTS language.]{.ui}

::: gotcha
#### Sound files and plain pictures are silent

Speak Cards reads *text*. It doesn't play the sound files on a card, and
a picture is silent unless you gave it a spoken hint (Chapter 3). A card
whose answer is only a picture or a sound has no text to read, so the
whole card is skipped.
:::

### Pro and free

Speak Cards and background listening are part of JustFlip! Pro. Without
Pro, [Speak Cards]{.ui} and [Speak from Here]{.ui} still appear, with a
lock, and tapping them opens the Pro screen. The Play button on a card
and choosing voices in Settings are free for everyone.

## Listening with the screen locked {#background}

Once Speak Cards is playing, you can lock your iPhone or switch to
another app. The reading continues in the background, pauses and chimes
included, so the phone can stay in your pocket.

::: gotcha
#### A phone call ends the session

When something else takes over the audio, such as a call, an alarm, or
another app that starts playing, the session **stops**. It doesn't pick
up again when the call ends. Open the deck and choose
[Speak from Here]{.ui} on the card where you left off.
:::

There are no play and pause controls on the Lock Screen or in Control
Centre. To stop, open JustFlip! and tap the stop button in the card
list.

::: note
#### Lock Screen card display

JustFlip! also includes a Live Activity that shows the card being read
on the Lock Screen and in the Dynamic Island. It is switched off in the
current version while its updates are made reliable, and it will return
in an update. Listening in the background works without it.
:::
<!-- VERIFY: CardSpeechLiveActivityService.isEnabled is hard-coded to false ("TEMPORARILY DISABLED"). Update this note, and the metadata.yaml blurb for Chapter 7 that promises the Live Activity, once it is re-enabled. -->

## Choosing voices {#voices}

Go to **Settings › Speech › Voices**. JustFlip! picks a voice **for each
language separately**. The row's subtitle summarises your choices, for
example "English: Automatic · German: Anna".

![The Voices screen: your card languages on top, each with the voice that will read it.](images/manual/{lang}/07-voices.png){.phone}

The screen has two lists:

- **[Your languages]{.ui}**: the languages set on your cards. Each row
  shows the voice that will actually speak.
- **[Other languages]{.ui}**: every other language with a voice on this
  device, folded away until you need it.

A language whose best installed voice is basic quality is marked
[Standard only]{.ui}. That's your cue to download a better one
(see [Getting better voices](#better-voices)).

Tap a language to see its voices:

- **[Automatic]{.ui}**, at the top, shown with the voice it currently
  picks.
- Every installed voice for that language, grouped as
  [Premium]{.ui}, [Enhanced]{.ui} and [Standard]{.ui}.

A checkmark marks your choice. Every row has a small **play button** to
hear a sample first. The sample is a random card side from your own
cards in that language, so you hear what the voice will really read. If
none of your cards uses the language yet, the voice introduces itself
with its name and its language. Tap the button again to stop.

![One language's voices, grouped by quality, each with a preview button.](images/manual/{lang}/07-language-voices.png){.phone}

### What Automatic picks

**Automatic** always takes the best voice installed for the language:
Premium first, then Enhanced, then Standard. When several voices share
the best quality, it prefers the one iOS itself uses for that language,
then a voice from your region (a US English voice on a US iPhone), and
it leaves the retro-sounding Eloquence voices for last. Download a
better voice and Automatic starts using it straight away, with nothing
to change in JustFlip!.

::: tip
#### Leave most languages on Automatic

Automatic keeps improving as you install voices. Pick a specific voice
only when you have a clear favourite, such as a particular accent.
:::

::: gotcha
#### A voice only reads its own language

The voice you choose for Czech reads Czech sides, and only those. It
never reads the English side of the same card. That side uses the
English choice. The choice is made per language, not per variant, so a
British voice chosen for English also reads sides set to English (US).
If you delete a chosen voice from your device, that language quietly
goes back to Automatic.
:::

::: note
#### Voices you won't find in the list

The novelty voices (Albert, Bahh, Bells and friends) and your Personal
Voice are never offered, and Automatic never picks them. Novelty voices
make poor teachers, and your Personal Voice stays yours.
:::

## Getting better voices {#better-voices}

The voices that come with iOS are serviceable, but the **Enhanced** and
**Premium** voices sound far more natural, and they are free. On iPhone
and iPad, download them in the system Settings app:

**Settings › Accessibility › Read & Speak › Voices**

Choose a language, then a voice, and tap to download it. Premium voices
are larger files, so use Wi-Fi. When the download finishes, go back to
JustFlip!. The new voice appears under **Settings › Speech › Voices**
and Automatic takes it at once. JustFlip! can't open that settings page
for you, which is why the Voices screen spells out the path under
[Get better voices]{.ui}.
<!-- VERIFY: the equivalent download path on Mac (System Settings › Accessibility › Spoken Content › System voice › Manage Voices) is not documented in the app; add it once confirmed. -->

## Cloze cards out loud {#cloze}

A cloze card (Chapter 3) mustn't give away its own answer, so its
question is read with each blank replaced:

- by the word **"blank"** in the card's language: "blank" in English,
  "Lücke" in German, "espacio en blanco" in Spanish, "prázdné místo"
  in Czech, and so on;
- or by the **hint**, if the blank has one: `{{c1::Paris::city}}` is
  read as "city".

:::: pair
```markdown
The capital of France
is {{c1::Paris}}.
```

::: {.card side="question" spoken="The capital of France is blank."}
The capital of France is [[…]]{.blank}.
:::
::::

On the answer side, the whole sentence is read with the blanks filled
in. In Speak Cards the answer phase reads the revealed sentence and then
any extra notes from the answer side.

::: gotcha
#### A cloze card speaks with one voice

The answer of a cloze card lives inside its question, so Speak Cards
reads the answer phase, notes included, with the *question* side's
language and voice. An answer side set to another language doesn't
change that. Write notes on a cloze card in the same language as the
sentence.
:::

## Making cards sound right {#spoken-hints}

When the voice stumbles over an abbreviation, a symbol or a formula, a
**spoken hint** tells it what to say instead: `[iOS]{eye oh ess}`,
`$c^2${c squared}`. Hints work in exactly four places, and the braces
are shown on the card anywhere else. Chapter 3 explains them in full,
in the section *Tell the voice what to say*.

Everything in this chapter uses your hints: the Play button, Speak
Cards and the voice previews.

## When a card stays silent {#troubleshooting}

| Symptom | Likely cause | Fix |
|---|---|---|
| No Play button on a side | the side has no language, or no text | set the side's [Language]{.ui} in the card editor |
| No Play button, language is set | no voice installed for it | download one in iOS Settings › Accessibility › Read & Speak › Voices |
| Speak Cards skips a card | one side can't be spoken | give both sides text and a language |
| Speak Cards is locked | it's a Pro feature | the Play button on each card stays free |
| The wrong accent | Automatic picked another variant | choose a voice under **Settings › Speech › Voices** |
| Listening stopped by itself | a call or another app took the audio | restart with [Speak from Here]{.ui} |
| A cloze reads "blank" | that's by design | add a hint, `{{c1::…::hint}}`, to hear the hint instead |
