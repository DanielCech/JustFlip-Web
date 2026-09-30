---
slug: reference
number: 12
title: Reference
description: "The JustFlip! reference: a troubleshooting table for every chapter, a glossary of the terms the app uses, what Free and Pro include, the file formats, and the keyboard shortcuts."
---

# Reference {#reference number="12"}

::: lede
Everything you might want to look up in a hurry: what to do when
something looks wrong, what a word means, what Pro adds, and which file
does what. Each entry points back to the chapter that explains it in
full.
:::

::: inthischapter
- Fix the most common surprises with the troubleshooting table
- Look up any term in the glossary
- See at a glance what is free and what Pro adds
- Tell the file formats apart
- Find the keyboard shortcuts and the markup cheat sheet
:::

## Troubleshooting {#troubleshooting}

### Cards and reviews

| What you see | What to do | Chapter |
|---|---|---|
| A card is never read aloud | Set the side's [Language]{.ui}; a side set to None is never spoken | 3, 7 |
| A language is set, but there's no Play button | Download a voice in iOS **Settings › Accessibility › Read & Speak › Voices** | 7 |
| The card shows `{…}` braces | A spoken hint only works after brackets, maths or a picture; wrap the text in `[…]` | 3 |
| Good and Easy are missing after flipping | **Settings › Behavior › Stricter grading** is on; turn it off, or grade before flipping | 2 |
| A new deck's [Due Cards]{.ui} finds nothing | Never-studied cards aren't due yet; use Today, [New Cards]{.ui} or [All Cards]{.ui} | 2 |
| An Again card didn't come back in the same session | By design: it is due in 5 minutes and comes up in your next session | 6 |
| Moving a priority slider didn't change the due counts | By design: priority only changes the order of a capped session | 6 |
| A postponed deck is still missing | Decks screen › [Deck options]{.ui} › [Review Priority]{.ui} › Resume | 6 |
| A single postponed card can't be resumed | It runs out on its date; or postpone it again to Tomorrow from [All Cards]{.ui} | 6 |
| Keys 1–4 or Space do nothing | You're typing an answer, Stricter grading is on, or an occlusion answer isn't revealed yet | 8 |
| Long cards always open in a sheet | At larger text sizes cards don't shrink to fit; split them, or lower JustFlip!'s text size | 11 |
| No reminder arrives | Turn on **Settings › Reminders › Daily review reminder**, and allow notifications in iOS Settings | 2 |
| The guides no longer appear | **Settings › Help › Guides** shows them again | 1 |

### Pictures, sound and editing

| What you see | What to do | Chapter |
|---|---|---|
| A picture vanishes in dark mode | Give it a solid white or light background | 4 |
| A picture is missing after import | Check the Anki import report; SVG isn't supported | 4, 5 |
| A side's text vanished after replacing its picture or sound | It was saved on the Image or Audio tab; switch back to Text before saving | 4 |
| Speak Cards skips a card | Both sides need text and a language with an installed voice | 7 |
| Listening stopped by itself | A call or another app took the audio; restart with [Speak from Here]{.ui} | 7 |

### Importing

| What you see | What to do | Chapter |
|---|---|---|
| Fewer cards than rows or notes | Cards with the same question merged (deck files), or rows with no question were skipped (CSV) | 5 |
| More cards than Anki notes | Each cloze number is its own card; that is expected | 5 |
| A deck appeared twice | A CSV always makes a new deck, and so does an Anki import with [Add a new copy]{.ui} | 5 |
| Picture-only cards doubled after a re-import | They have no question to match on; delete the extras | 5 |
| The first card reads "Question / Answer" | Turn on [Skip first row as header]{.ui} | 5 |
| All the text sits in one column | Change the [Separator]{.ui} in the CSV preview | 5 |
| An edit disappeared after importing | The file's version replaced it; make the same fix in the file | 5 |
| A schedule jumped back, or deleted cards came back | An older interest archive was imported | 5, 10 |
| Imported cards went into the wrong deck | Two decks share a name; rename one | 1 |
| A new interest didn't appear | One with the same name already existed and was used instead | 1 |

### Sync, devices and data

| What you see | What to do | Chapter |
|---|---|---|
| Sync status says [Unavailable]{.ui} | Sign in to iCloud and allow JustFlip! to use it | 10 |
| A change doesn't reach the other device | Compare the upload and download times on both devices' iCloud Sync screens | 10 |
| Backup Location says [Local only]{.ui} | Keep an exported archive somewhere safe as well | 10 |
| Two interests with the same name appeared | JustFlip! merges them automatically after the next sync | 10 |
| The widget shows old counts | Open JustFlip! on that device; the widget knows what the app last saved there | 8 |
| The watch says [Open JustFlip on your iPhone to sync your cards.]{.ui} | Open the iPhone app once | 8 |
| The watch shows "N syncing to iPhone" | Bring your iPhone within reach; the grades are delivered and applied once | 8 |
| A card is missing from Spotlight | Check [Include in device search]{.ui} on its interest *and* its deck; search by the start of a word | 8 |
| JustFlip! ignores dark mode | The theme is pinned light or dark; pick [System]{.ui} | 11 |
| The What's new sheet is empty | You're offline; use [Try again]{.ui} or [Open in Browser]{.ui} | 8 |
| The Statistics menu item shows a lock | Statistics is part of Pro, trial included | 9 |
| Restore finds no purchase | Use the Apple Account you bought Pro with | 1 |

## Glossary {#glossary}

| Term | Meaning |
|---|---|
| **Interest** | The top level of your library: a subject that holds decks |
| **Deck** | A focused group of cards inside an interest |
| **Card** | A question and an answer, each side with its own text, picture, sound and language |
| **Today** | The panel on the Interests screen that gathers due cards from every interest, plus new cards up to your daily allowance |
| **Due** | A card whose review time has arrived and that is neither retired nor postponed |
| **New card** | A card you have never studied |
| **Struggling** | A card whose last grade was Again or Hard, whatever its due date |
| **Seen** | The note JustFlip! makes the first time you flip a card while browsing; not a grade |
| **Interval** | How long until a card comes back, from minutes to months |
| **Ease** | A card's own growth rate for its interval; starts at 2.5, stays between 1.3 and 3.5 |
| **Stage** | Unseen, Learning, Reviewing (interval of 7 days or more), Graduated (30 days or more) or Relearning |
| **Mastery** | The share of a deck's cards whose last grade was Good or Easy; progress trackers add their own progress |
| **Retention** | The share of reviews graded Good or Easy |
| **Mature review** | A review of a card whose interval had already reached 30 days |
| **Lapse** | A card you had learned and then forgot |
| **Leech** | A card forgotten eight times or more; listed under [These keep slipping away]{.ui} |
| **Streak** | Days in a row with at least one review; up to two missed days are bridged |
| **Forecast** | How many cards fall due on each coming day; overdue cards are added to today |
| **Urgency** | A score that blends due cards, how overdue they are, time since you studied and mastery |
| **Retire** | Take a card out of reviews while keeping its history; undo with Reactivate |
| **Postpone** | Set a card, deck or interest aside until a chosen day, without grading it |
| **Review priority** | A weight from 0 to 100 % (75 % by default) that decides whose cards come first in a capped session |
| **Stricter grading** | A setting that leaves only Again and Hard once you have flipped a card |
| **Smart Schedule** | The FSRS-5 scheduler (Pro, beta), which aims for about 90 % recall |
| **Progress tracker** | A card you rate yourself from 0 to 100, for skills a flashcard can't test (Pro) |
| **Cloze** | A fill-in-the-blank card written with `{{c1::…}}` |
| **Spoken hint** | `{…}` after a piece of a card, telling the voice what to say instead |
| **Attachment marker** | `![attachment:0]`, which places a picture inside the text |
| **Image description** | The text VoiceOver reads instead of a picture |
| **Image occlusion** | A picture with covered regions, each of which becomes its own card |
| **Speak Cards** | Hands-free listening to a whole deck: question, a four-second pause, answer, chime (Pro) |
| **Automatic voice** | The best installed voice for a language: Premium, then Enhanced, then Standard |
| **Ask AI** | A study-report prompt JustFlip! builds for you to paste into your own chat AI |
| **Guide** | A one-time coachmark explaining a control; replay them under **Settings › Help › Guides** |
| **Starter library** | The ready-made decks offered on first launch, and under **Settings › Help › Library** |
| **Interest archive** | A `.flashcards.zip` export of one interest, progress included |
| **Full backup** | A weekly `.justflip` archive of the whole library; the newest 10 are kept |
| **Progress snapshot** | A daily backup of progress without media; the newest 30 are kept |
| **Include in device search** | The interest and deck switch that decides whether cards appear in Spotlight |

## Free and Pro {#free-pro}

JustFlip! is free to use, with no limit on cards. Pro removes the two
library limits and adds a handful of power features. A free trial, where
offered, unlocks the Pro features for its duration.

| Feature | Free | Pro | Chapter |
|---|---|---|---|
| Interests | 3 | Unlimited | 1 |
| Decks per interest | 5 | Unlimited | 1 |
| Cards, formatting, pictures, sound, image occlusion | ✓ | ✓ | 3, 4 |
| Import and export (Anki, CSV, deck files, archives) | ✓ | ✓ | 5 |
| Reviews, priorities, postponing, retiring | ✓ | ✓ | 2, 6 |
| The Play button and choosing voices | ✓ | ✓ | 7 |
| Apple Watch, widget, Siri, Spotlight | ✓ | ✓ | 8 |
| iCloud sync, backups, restore | ✓ | ✓ | 10 |
| Themes and text size | ✓ | ✓ | 11 |
| Ask AI about a card or a session | ✓ | ✓ | 9 |
| Ask AI about a whole deck | — | ✓ | 9 |
| Speak Cards and listening in the background | — | ✓ | 7 |
| Statistics | — | ✓ | 9 |
| Progress trackers | — | ✓ | 6 |
| Smart Schedule (beta) | — | ✓ | 6 |

Plans, purchases and restoring are in Chapter 1.

## File formats {#formats}

| File | What it holds | Made by | Imports as |
|---|---|---|---|
| `.flashcards` | A deck, text only | An AI, the Decks page, you | Updates the matching deck (by question text) |
| `.flashcards.zip` | A deck with pictures and sound — or an interest archive | The coding-agent skill, the Decks page, [Export archive]{.ui} | A deck file updates by question; an archive restores its interest, progress included |
| `.apkg`, `.colpkg` | An Anki deck or collection | Anki | New decks, or skip / update what you already have |
| `.csv` | One card per row | Any spreadsheet | Always a new deck |
| `.flashcards-stats.csv` / `.json` | Statistics, for reading | [Export statistics]{.ui} | Can't be imported |
| `.justflip` | A full backup of the library | Automatic backups, [Export Backup]{.ui} | **Settings › Data Safety › Restore Backup** |

The content format for deck files, written for AI tools and deck
authors, is published with the
[AI prompt](https://just-flip.app/ai-prompt.html).

## Keyboard shortcuts {#shortcuts}

On a Mac, and on an iPad with a hardware keyboard:

| Key | Action |
|---|---|
| Space | Flip the card, or reveal an occlusion region |
| 1 · 2 · 3 · 4 | Again · Hard · Good · Easy |
| Return | Check a typed answer |
| ⇧⌘I | Import Cards… (Mac) |
| ⇧⌘E | Export Interest… (Mac) |

The details, including why a key sometimes does nothing, are in
Chapter 8.

## Markup at a glance {#markup}

| You write | You get |
|---|---|
| `**bold**` · `*italic*` · `` `code` `` | **bold** · *italic* · `code` |
| `{{c1::answer::hint}}` | A blank with an optional hint |
| `::: hero` … `:::` | Very large, centred content |
| `$x^2$` · `$$` … `$$` | Inline maths · a maths block |
| ```` ```swift ```` · ```` ```mermaid ```` | Highlighted code · a diagram |
| `| A | B |` + `|---|---|` | A table, at most 2 × 5 |
| `![attachment:0]` | The side's picture, here |
| `[shown]{spoken}` | Say something else aloud |

The full cheat sheet, with every rule, closes Chapter 3.
