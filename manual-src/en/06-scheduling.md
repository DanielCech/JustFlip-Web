---
slug: scheduling
number: 6
title: How scheduling works
description: "How JustFlip! decides when you see a card again: learning stages, intervals and ease, what makes a card due, review priorities, postponing, progress trackers and Smart Schedule."
---

# How scheduling works {#scheduling number="6"}

::: lede
You never have to plan a review. Every grade you give tells JustFlip! how
well you know a card, and the app works out when to show it next: soon if
it slipped, much later if it was easy. This chapter opens the lid. You'll
see what the stages mean, why intervals grow the way they do, and which
controls let you steer the queue without cheating your memory.
:::

::: inthischapter
- The five stages a card passes through, and what moves it on
- Intervals and ease in plain words, with the exact maths for the curious
- What "due" means, and how JustFlip! decides what comes first
- Give one subject more of your time with review priorities
- Postpone a card, a deck or a whole interest, and bring it back
- Track skills that flashcards can't grade, with progress trackers
:::

## The idea in one minute {#idea}

Memory fades on a curve. Right after you learn something you forget it
quickly, and each time you remember it again the curve gets flatter.
Spaced repetition makes use of that: it shows you a card just before you
would have forgotten it. Each successful recall pushes the next review
further out.

In JustFlip! every card carries three numbers:

| Number | What it means |
|---|---|
| **Interval** | How long until the card comes back, from minutes to months |
| **Ease** | How fast the interval grows for this card. It starts at 2.5 |
| **Due date** | The moment the interval runs out and the card is ready again |

Your grade after each flip changes the ease and the interval, and the due
date follows. The grade buttons show the interval each choice would give,
so nothing happens behind your back. After you grade, a short
[Next: …]{.ui} hint confirms when you'll see the card again.

## The five stages {#stages}

Every card is in one of five stages. The stage is a label that describes
the card's interval. It doesn't decide the interval.

| Stage | Meaning | Typical interval |
|---|---|---|
| **Unseen** | Never studied | — |
| **Learning** | Freshly learned, or forgotten from Reviewing | minutes to a few days |
| **Reviewing** | The interval has reached 7 days | one to four weeks |
| **Graduated** | The interval has reached 30 days | months |
| **Relearning** | A Graduated card you forgot | short steps again |

```text
Unseen ──grade──▶ Learning ──7 days──▶ Reviewing ──30 days──▶ Graduated
                     ▲                     │                      │
                     └─────── Again ───────┘                Again │
                                                                  ▼
                                                             Relearning
```

What moves a card between stages:

- **Any grade** takes an Unseen card into Learning.
- **Hard, Good or Easy** move a card up once its new interval crosses a
  threshold: 7 days makes it Reviewing, 30 days makes it Graduated.
  Stages follow the interval, so an Easy grade on a new card doesn't
  graduate it on the spot. It still has to earn its 30 days.
- **Again** sends a Learning or Reviewing card back to Learning, and a
  Graduated card to Relearning. Either way the interval drops to
  5 minutes.
<!-- VERIFY: in SM-2 mode a Relearning card's Good/Easy interval is always the initial step (1 or 4 days), so it never reaches the 7-day threshold and appears to stay in Relearning. Confirm the intended exit path in CardStatistics+SRS.swift calculateNextInterval before describing how a card leaves Relearning. -->

The Statistics screen counts your cards by stage, under **Collection**:
[New]{.ui}, [Learning]{.ui} (which includes Relearning),
[Reviewing]{.ui} and [Graduated]{.ui}. Chapter 9 covers the rest of that
screen.

::: note
#### Mastery is not the same as Graduated

The **Mastery** percentage on a deck or an interest counts the cards
whose *last* grade was Good or Easy. It isn't the share of Graduated
cards. A deck can show high mastery after one good session, long before
anything graduates. Mastery tells you how you did recently. The stages
tell you how settled the knowledge is.
:::

## Intervals and ease {#intervals}

### The first grade

A card you have never graded, or one you just forgot, starts from fixed
first steps:

| Grade | Next review |
|---|---|
| Again | in 5 minutes |
| Hard | in 20 minutes |
| Good | in 1 day |
| Easy | in 4 days |

### Every grade after that

From then on, each grade works from the interval the card already has:

- **Again** starts over: 5 minutes, and a lower ease.
- **Hard** grows the interval a little, by 20 %, and lowers the ease.
- **Good** multiplies the interval by the card's ease: about 2.5× for a
  typical card.
- **Easy** multiplies by the ease *and* a bonus of 1.3, and raises the
  ease.

Ease is the card's own growth rate. Every Hard and Again makes a card grow
more slowly from then on. Every Easy makes it grow faster. Ease never
drops below 1.3 or rises above 3.5, so a difficult card still moves
forward, just in smaller steps.

Here is a new card that you answer **Good** every time:

| Review | Interval | Stage after it |
|---|---|---|
| 1st | 1 day | Learning |
| 2nd | 2.5 days | Learning |
| 3rd | about 6 days | Learning |
| 4th | about 16 days | Reviewing |
| 5th | about 39 days | Graduated |

Five successful reviews spread over about two months, and the card comes
back only every month or more.

::: tip
#### Why the days wobble

Intervals of two days or more get a small random nudge of up to ±10 %.
Cards you learned together on the same evening would otherwise come back
together forever, as one big lump in your calendar. The nudge spreads
them over neighbouring days. The grade buttons always show the interval
before the nudge, so the real date can differ by a day or so.
:::

::: note
#### Under the hood: the SM-2 variant

JustFlip! uses a variant of SM-2, the algorithm behind SuperMemo and
Anki. With ease *E* and current interval *I*, a grade first updates the
ease, clamped between 1.3 and 3.5:

$$
E' = \min\bigl(3.5,\ \max(1.3,\ E + \Delta)\bigr), \qquad \Delta \in \{-0.20,\ -0.15,\ 0,\ +0.15\}
$$

for Again, Hard, Good and Easy. Then the new interval for a card that is
already under way is:

$$
I_{\text{hard}} = \max(1.2\,I,\ 1\ \text{hour})
$$

$$
I_{\text{good}} = \max(E'\,I,\ 1\ \text{day})
$$

$$
I_{\text{easy}} = \max(1.3\,E'\,I,\ 4\ \text{days})
$$

Again always gives 5 minutes. Intervals of two days or more are then
multiplied by a random factor:

$$
I_{\text{final}} = I \times (1 + u), \qquad u \in [-0.1,\ 0.1]
$$
:::

### Smart Schedule (Pro) {#smart-schedule}

Under **Settings › Behavior**, the [Smart Schedule]{.ui} switch (marked
[BETA]{.ui}) replaces the SM-2 intervals with **FSRS-5**, a modern
scheduler. FSRS schedules each review for the moment your chance of
remembering the card drops to about 90 %. The aim is fewer reviews for
the same retention. It only changes the intervals for Hard, Good and
Easy. Again still brings a card back after 5 minutes.

JustFlip! keeps its SM-2 values up to date either way, so you can switch
Smart Schedule off at any time and nothing is lost. It is a Pro feature.
Without Pro, tapping the switch opens the Pro screen instead.

## What "due" means {#due}

A card is **due** once its due date has passed, unless you retired it or
postponed it. Retired cards (Chapter 2) and postponed cards
(see [Postponing](#postponing)) keep their schedule. They just don't
come up while they are set aside.

Cards you have never studied aren't due. They are **new**. The
[Today]{.ui} session mixes the two: first the due cards, then fresh ones
from your daily allowance. The defaults are 20
[Cards per session]{.ui} and 10 [New cards per day]{.ui}, both under
**Settings › Behavior**.

### Which cards come first

In the Today session and in the Decks screen's review menu, JustFlip!
builds the queue like this:

1. **Oldest first.** Cards that became due on an earlier day come before
   cards that became due later.
2. **A daily shuffle inside each day.** Cards due on the same day are
   mixed in an order that changes every day. That way a short session
   doesn't always pick the same front slice of a big backlog.
3. **Decks take turns.** Each deck's cards are merged with the others
   in turns, weighted by priority (see [Review priorities](#priorities)).
4. **New cards last,** up to what is left of your daily allowance and
   the session size.
5. **Image occlusion siblings are spaced apart,** so two cards from the
   same picture don't come up back to back.

A review you start from a single deck's card list shuffles that deck's
due cards.

::: gotcha
#### Again doesn't repeat the card in the same session

A card you grade **Again** is due again in 5 minutes, but it doesn't
reappear later in the session you're in. You'll meet it in your next
session. If you want a second try straight away, finish the session and
start another one after a few minutes.
:::

### Urgency

Interests and decks also get an **urgency** score, which drives the
coloured indicator in the lists and the [By Urgency]{.ui} sort. It
blends several signals. The biggest ones are the share of cards due and
how overdue the oldest card is. Smaller ones are how long ago you
studied the deck, low mastery, and a few new cards. Retired and
postponed cards don't count. For a few hours after you study a deck its
urgency stays at zero, so the indicator doesn't flare up because of
5-minute re-queues.

**Settings › Review pace** changes how quickly urgency climbs:
**Relaxed** (slowly, with smaller first batches), **Steady** (the
default) or **Intense** (quickly, with the full queue visible). Review
pace never changes the intervals themselves.

## Review priorities {#priorities}

When you have more due cards than time, priority decides whose cards you
see first. Every interest has a [Learning priority]{.ui} from 0 % to
100 %, in steps of 5 %. It starts at **75 %**. Each deck
[Inherit from interest]{.ui} by default, or sets its own value.

Set it in any of three places:

- **An interest:** press and hold it in the Interests list, choose
  [Edit Interest]{.ui} and move the [Learning priority]{.ui} slider.
- **A deck:** press and hold it, choose [Edit Deck]{.ui}, switch off
  [Inherit from interest]{.ui} and move the slider.
- **All of an interest's decks at once:** on the Decks screen, open the
  [Deck options]{.ui} menu (the folder icon) and choose
  [Review Priority]{.ui}. The sheet shows the [Interest priority]{.ui}
  slider and, under [Deck priority]{.ui}, one row for each deck.

![The Review Priority sheet: the interest slider on top, then one row per deck with its own Inherit from interest switch.](images/manual/{lang}/06-review-priority.jpg){.phone}

### How the mix works

Priority changes the *order* of the queue, not its contents. Think of
each deck as dealing its due cards in turns. A deck with twice the
priority deals twice as often:

| Deck | Priority | Order of its cards in the session |
|---|---|---|
| Spanish | 100 % | 1st, 3rd, 4th, 6th, 7th … |
| Chemistry | 50 % | 2nd, 5th, 8th … |

With the default of 75 % everywhere, decks simply alternate, one card
each. A higher priority wins more of a capped session, and a lower one
gets pushed towards the end.

::: gotcha
#### Priority never hides a card

Even at 0 % a deck's due cards are still due. They are only offered
after everything else. Due counts on the widget, in Today and on the
Decks screen stay exactly the same when you move a slider. Priority
only matters when a session is capped: in Today and in the Decks
screen's review menu. A review of a single deck has nothing to compete
with.
:::

## Postponing {#postponing}

Sometimes a card isn't wrong, it's just not the right moment: exam week
for another subject, a holiday, a deck you'll get back to next month.
Grading Again or Hard would damage its schedule. **Postponing** puts it
on hold instead, without touching the schedule at all.

### How to postpone

During any review, tap the [Postpone]{.ui} button (the clock icon at the
top of the review screen). Choose the scope:

- [Postpone this card]{.ui}
- [Postpone this deck]{.ui}
- [Postpone this interest]{.ui}

Then choose for how long: [Tomorrow]{.ui}, [In 3 days]{.ui},
[In 1 week]{.ui}, or [Custom date…]{.ui} to pick a day under
[Resume on]{.ui}. A hold lasts until the start of that day, so
"Tomorrow" means all of tomorrow, not 24 hours from now.

![The Postpone menu during a review, with the card, deck and interest options.](images/manual/{lang}/06-postpone-menu.jpg){.phone}

The held cards leave the running session right away. If you postpone the
deck or interest of a single-deck review, the session ends, because
there is nothing left to review.

### What a hold does

A hold is a pure filter. Nothing is graded, the interval and ease stay
as they are, and the card's history doesn't change. While the hold
lasts:

| Where | Postponed cards |
|---|---|
| Today, the widget, due counts and the forecast | left out |
| [Due Cards]{.ui} and [Struggling Cards]{.ui} | left out |
| [New Cards]{.ui} (Decks screen menu) | left out, even if never studied |
| [All Cards]{.ui} | **included** |

If a card, its deck and its interest are all on hold, the latest date
wins.

### How to release a hold

Holds end by themselves on the date you chose. To end one early, open
the Decks screen of that interest and choose
[Deck options]{.ui} › [Review Priority]{.ui}. While anything is on
hold, the sheet has a [Postponed]{.ui} section with the number of held
cards and a button for each active hold:

- [Resume this interest now]{.ui}
- [Resume *deck name* now]{.ui}, one for each held deck

::: gotcha
#### A single card can't be resumed early

The Postponed section lists interest and deck holds only. A hold on a
single card counts in the total but has no Resume button. It simply runs
out on its date. To shorten it, open the deck's [All Cards]{.ui} review,
which ignores holds. When the card comes up, postpone it again with
[Tomorrow]{.ui}.
:::

::: tip
#### All Cards is the cram mode

[All Cards]{.ui} deliberately includes retired and postponed cards. Use
it the night before an exam, or when you want to go through a postponed
deck anyway. Your grades there count like any others.
:::

## Progress trackers (Pro) {#trackers}

Some skills don't fit on a flashcard: a piece you're practising on the
piano, a climbing technique, a book you're working through. A **progress
tracker** is a special card with a name, optional notes and a progress
bar that you set yourself.

To add one, open a deck, tap the [More actions]{.ui} menu and choose
[Add Progress Tracker]{.ui}. The first time, a short introduction
explains the idea. Give the tracker a name ([What are you
tracking?]{.ui}) and, if you like, notes. Later, tap the tracker and
move the [Progress]{.ui} slider, from 0 to 100 in steps of five, to
match how far along you feel.

![A deck of progress trackers, each with its own progress bar and percentage.](images/manual/{lang}/06-progress-tracker.jpg){.phone}

What a tracker does and doesn't do:

- It is **never reviewed.** Trackers stay out of every review session,
  Today, due counts, the Statistics stages and Speak Cards.
- It **doesn't count towards your streak.** Nobody quizzes you, so there
  is nothing to count.
- It **does count towards deck mastery.** A flashcard adds 1 to the
  deck's mastery when its last grade was Good or Easy. A tracker adds its
  own progress: 60 % adds 0.6. A deck that holds only trackers shows
  their average progress as its mastery.
<!-- VERIFY: the in-app intro string trackerIntroPoint3Text says trackers "never affect deck mastery", but DeckStatistics.masteryIncludingTrackers (used by the card list and BackgroundStatsActor) blends them in. The manual follows the code; one of the two should be aligned. -->

::: gotcha
#### Trackers are self-judged

A tracker says exactly what you tell it, nothing more. That is the
point, but it also means a tracker set to 100 % pulls a deck's mastery up
as much as a card you really know. Be honest with the slider.
:::

Progress trackers are a Pro feature. Without Pro, the menu item carries a
lock and opens the Pro screen. Trackers you already have are kept safe.
In their place the deck shows a single row saying how many trackers it
holds, and they come back as soon as Pro is active again.

## Retired cards {#retire}

**Retiring** a card ("I know this, stop testing me") takes it out of
Due and Struggling without deleting its history. It is explained in
Chapter 2. For scheduling, remember two things:

- A retired card keeps its interval, ease and due date. Reactivate it
  and it picks up exactly where it stopped.
- A retired card still counts towards mastery, but it no longer counts
  towards urgency or due counts.

## Quick reference {#reference}

| Setting or value | Where | Default |
|---|---|---|
| First steps (Again / Hard / Good / Easy) | built in | 5 min / 20 min / 1 day / 4 days |
| Starting ease | built in | 2.5 (range 1.3–3.5) |
| Reviewing / Graduated | built in | interval ≥ 7 / ≥ 30 days |
| [Cards per session]{.ui} | Settings › Behavior | 20 |
| [New cards per day]{.ui} | Settings › Behavior | 10 |
| [Smart Schedule]{.ui} (Pro) | Settings › Behavior | off |
| Review pace | Settings › Review pace | Steady |
| [Learning priority]{.ui} | Edit Interest / Edit Deck / Review Priority | 75 %, decks inherit |
| Postpone | review screen, clock icon | — |
| Retire suggestion | results screen | interval ≥ 90 days and 4 correct in a row |
