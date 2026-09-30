---
slug: sync-backup
number: 10
title: Sync, backups and your data
description: "How JustFlip! keeps your cards and learning progress safe: iCloud sync, automatic backups, Recently Deleted, restoring, exporting archives, and a checklist for when sync seems stuck."
---

# Sync, backups and your data {#sync-backup number="10"}

::: lede
Cards can be rewritten or imported again. Your learning progress can't:
every grade, every interval, every streak day exists only because you
put in the time. So JustFlip! protects it in three separate layers,
each one covering a failure the others can't. This chapter explains what
each layer does, where to find it, and what to do when something looks
wrong.
:::

::: inthischapter
- Understand the three layers: iCloud sync, automatic backups and manual export
- Read the sync status and the iCloud Sync screen
- Find, restore and understand your automatic backups
- Know what deleting does, and what Recently Deleted holds
- Export an archive of an interest, progress included
- Work through a checklist when sync seems stuck
:::

## Three layers of safety {#layers}

| Layer | What it is | What it protects you from |
|---|---|---|
| **1. iCloud sync** | Your library, kept the same on every device | A lost, broken or replaced device |
| **2. Automatic backups** | Regular snapshots that JustFlip! takes on its own | Mistakes that sync would copy everywhere |
| **3. Manual export** | Archive files you save wherever you like | Everything else, including leaving iCloud |

All three live in **Settings › Data Safety**. Open Settings from the
gear icon at the top of the Interests list and scroll to the
[Data Safety]{.ui} section.

![Settings › Data Safety: Sync status, the last full backup and progress snapshot, Backup Location, Recently Deleted, and the Export Backup and Restore Backup buttons.](images/manual/{lang}/10-data-safety.png){.phone}

::: gotcha
#### Sync is not a backup

Sync makes every device match. That includes your mistakes: delete an
interest on your iPad and it disappears from your iPhone and Mac within
minutes. Sync has no undo of its own. That is exactly why layers 2 and
3 exist.
:::

## iCloud sync {#icloud-sync}

Sync is included for everyone, free and Pro. There is nothing to switch
on inside JustFlip!: if your device is signed in to iCloud, your library
syncs through your own iCloud account.

### What syncs

- Interests, decks and cards, including pictures and sounds
- Your learning progress: every grade, interval, due date and lapse
- Retired and postponed cards, card flags, priorities and progress
  trackers
- Deletions, including what is waiting in Recently Deleted

Your **settings stay on each device**: the theme, the text size, voices,
reminders, and daily limits such as [New cards per day]{.ui}. That lets
you have a quiet phone and a busy iPad. Apple Watch gets its cards from
your iPhone rather than from iCloud (see Chapter 8).

### How it behaves

- **Offline first.** Everything works without a connection. Your changes
  are saved on the device straight away and sent when you are back online.
- **In the background.** There is no sync button. Changes travel on
  their own, usually within seconds to a few minutes.
- **Last change wins.** If you edit the same card on two devices before
  they sync, the later edit is the one that stays.

::: tip
#### A new device, the easy way

Install JustFlip! on the new device, sign in with the same Apple
Account, and open the app. Your interests appear as they arrive; the
empty list says so while it waits. A large library with lots of pictures
can take a while on the first sync, so leave the app open on Wi-Fi.
:::

## The sync status {#sync-status}

The first row of Data Safety, [Sync status]{.ui}, shows the state of
iCloud on this device, with the time of the last successful upload
underneath.

| Status | What it means |
|---|---|
| [Checking…]{.ui} | JustFlip! is asking iCloud whether your account is available |
| [Available]{.ui} | Your iCloud account is ready and sync can run |
| [Syncing…]{.ui} | Changes are being sent or received right now |
| [Unavailable]{.ui} | No iCloud account is available on this device, so nothing syncs |
| [Sync failed]{.ui} | iCloud reported an error the last time it tried |

[Unavailable]{.ui} and [Sync failed]{.ui} are shown in red.

::: note
#### "Available" doesn't mean "all uploaded"

[Available]{.ui} only says that your account is ready. It doesn't
promise that every change has already reached iCloud. For that, look at
the upload and download times on the iCloud Sync screen.
:::

### The iCloud Sync screen

Tap [Sync status]{.ui} for the details:

- [Current status]{.ui}: the state from the table above.
- **Last successful upload** and **Last successful download**: when
  iCloud last *confirmed* that changes were sent from, or received on,
  this device. A local save doesn't count; only a confirmed transfer
  does.
- **Upload in progress**, while one is running.
- [Check Again]{.ui}: asks iCloud once more whether your account is
  available.
- [Troubleshooting]{.ui}: the last error iCloud reported, or [No sync
  errors]{.ui}.
- [Recent Sync Activity]{.ui}: a log of recent sync events on this
  device, useful when you contact support.

![The iCloud Sync screen with the upload and download times, Check Again, and the recent activity log.](images/manual/{lang}/10-icloud-sync.png){.phone}

::: tip
#### Compare two devices side by side

When a change made on one device never shows up on the other, open this
screen on both. If one device's **Last successful upload** is older than
the change, the problem is on that device: it hasn't sent it yet. If the
upload is recent but the other device's **Last successful download** is
old, the receiving device hasn't fetched it yet.
:::

## Automatic backups {#automatic-backups}

JustFlip! backs up your library on its own. You will find two kinds in
Data Safety:

| Backup | Row in Data Safety | Contents | Roughly how often | Kept |
|---|---|---|---|---|
| **Full backup** | [Last full backup]{.ui} | One archive with every interest: cards, pictures, sounds and all progress | Weekly | The newest 10 |
| **Progress snapshot** | [Last progress snapshot]{.ui} | Every interest with its progress, without pictures and sounds | Daily | The newest 30 |

On iPhone and iPad the system runs backups in the background, when it
decides the moment is right. On the Mac, JustFlip! checks each time you
bring the app to the front and catches up on anything overdue. A backup
is skipped when nothing has changed since the previous one.
<!-- VERIFY: the skip check compares interests' modifiedAt with the last backup date; confirm that reviewing cards (not only editing) counts as a change. -->
When the oldest backup falls out of the "kept" count, it is deleted
automatically.

The dates turn red when a backup is overdue: a full backup older than
four weeks or a progress snapshot older than four days.

### Export Backup: a full backup right now

[Export Backup]{.ui} creates a full backup immediately and adds it to
the list, for example before you try something risky. It writes a file
named like `JustFlip-2026-09-30_14-05-12.justflip`.

### Where backups are kept

The [Backup Location]{.ui} row shows where your backups are stored:

- [iCloud Drive]{.ui}: the backups are kept in JustFlip!'s iCloud Drive
  storage, apart from sync. A sync problem or a synced deletion doesn't
  touch them.
- [Local only]{.ui}: iCloud Drive isn't available, so backups stay on
  this device. Tap the row to see why: [Not signed in to iCloud]{.ui},
  [iCloud Drive is disabled]{.ui} or [Your iCloud storage quota is
  full]{.ui}.
<!-- VERIFY: the app's entitlements list only the CloudKit iCloud service (no CloudDocuments / ubiquity container). If so, url(forUbiquityContainerIdentifier:) returns nil and Backup Location is always "Local only" in shipping builds. Also verify whether the backup folder is visible in the Files app. -->

::: gotcha
#### Local backups leave with the app

"Local storage works, but it will not travel across devices or survive
an app removal," as the app itself warns. If Backup Location says
[Local only]{.ui}, deleting JustFlip! deletes its backups too. Keep an
[exported archive](#export) somewhere safe as well.
:::

## Restoring a backup {#restore}

Tap [Restore Backup]{.ui} in Data Safety to see [Available
Archives]{.ui}, newest first, each with its file name and date. Tap one
to restore it. A message confirms when it is done: "Restore completed.
Interests have been merged."

![Restore Backup: the list of available archives, newest first.](images/manual/{lang}/10-restore-backup.png){.phone}

A restore **merges**; it never wipes your library first:

- Interests, decks and cards in the backup are brought back. Anything
  that was created after the backup stays as it is.
- For each card in the backup, the **schedule is set back** to what it
  was when the backup was taken: learning stage, interval, due date,
  ease and lapses.
- Review **history is combined**. Reviews you did after the backup are
  kept, and restoring the same backup twice doesn't duplicate anything.

::: gotcha
#### A restore starts the moment you tap

There is no confirmation step: tapping a backup restores it. Pick the
right date before you touch the list. And remember that the cards in it
go back to their schedule *at that time*, so restoring an old backup to
fix one deck also turns back the clock for every other card it contains.
:::

::: gotcha
#### After a restore, give your devices time

A restore writes a lot of changes at once, and every other device has to
receive them. Keep JustFlip! open on the device you restored, on Wi-Fi,
until its **Last successful upload** is recent. Then open JustFlip! on
your other devices and give them a few minutes before you start
reviewing there.
:::

## Deleting, and Recently Deleted {#recently-deleted}

::: gotcha
#### Deleting is permanent

When you delete an interest, a deck or a card, it is gone straight
away, on every device. Before you delete anything you might want back,
choose [Export archive]{.ui} from the interest's context menu. The
archive keeps its decks, cards and progress, and you can import it
again later. A card you only want out of your reviews is better
retired than deleted (Chapter 2).
:::

**Settings › Data Safety › Recently Deleted** holds interests and decks
that JustFlip! set aside for you, such as the empty copy left behind
after two interests or decks were merged. The row shows how many items
are waiting, or [Empty]{.ui}.

![Recently Deleted, with an item and its Restore and Delete buttons.](images/manual/{lang}/10-recently-deleted.png){.phone}

Each item shows its name, the interest it belonged to, and when it was
set aside. Two buttons:

- [Restore]{.ui} brings it back with all its cards and progress.
- [Delete]{.ui} removes it permanently, right away. This can't be undone.

After **30 days**, JustFlip! permanently deletes what is left.

## Exporting an archive {#export}

The third layer is yours to control: an archive file you can keep in
Files, on a drive, or in any cloud service.

| You want to… | Do this | You get |
|---|---|---|
| Keep or move one interest, with progress | Long-press the interest › [Export archive]{.ui} | `Name.flashcards.zip` |
| Do the same on a Mac | Select the interest › **File › Export Interest…** (⇧⌘E) | `Name.flashcards.zip` |
| Back up the whole library now | **Settings › Data Safety › Export Backup** | a `.justflip` file among your backups |
| Analyse your numbers | Long-press › [Export statistics]{.ui} | CSV or JSON (Chapter 9) |

An interest archive contains every deck and card of the interest, its
pictures and sounds, **and your learning progress**. To bring it back,
open the file with JustFlip! from Files, the share sheet or AirDrop, or
on the Mac drop it on the window or use **File › Import Interest
Archive…**. Importing works like a restore: it merges, so the same file
can be opened twice without creating duplicates. Chapter 5 covers
importing in detail.

::: gotcha
#### An archive carries your progress

[Export archive]{.ui} always includes your learning progress. That is
what you want for a backup. When you send the file to a friend, though,
your due dates and history travel with it.
<!-- VERIFY: whether importing someone else's archive applies the sender's progress to the recipient's copy (importProgress writes schedule fields unconditionally when the card ids match). -->
:::

## Duplicate interests from two devices {#duplicates}

Interest names are unique in your library, ignoring letter case. But if
two devices are both offline and you create an interest with the same
name on each, for example "Spanish" on the iPhone on a flight and
"spanish" on the iPad at home, both copies exist once the devices sync
again.

JustFlip! notices this and **merges them automatically**: the decks from
both copies are gathered under one interest, and you see a short
message such as "Merged duplicate copies of 'Spanish' created on another
device". Names are compared without regard to letter case, accents and
extra spaces. Every device picks the same surviving copy, so they all
end up with the same single interest, and a deck that arrives later
for the merged-away copy still finds its way to the right place.

## Troubleshooting sync {#troubleshooting}

When a change doesn't show up on another device, go through this list
in order. Most problems end at step 3 or 4.

1. **Give it a few minutes.** Sync is not instant. Keep JustFlip! open
   on both devices for a minute or two.
2. **Check the status.** Open **Settings › Data Safety › Sync status**
   on both devices. [Unavailable]{.ui} means no iCloud account is
   available; [Sync failed]{.ui} shows the error under
   [Troubleshooting]{.ui}. Tap [Check Again]{.ui} after fixing
   anything.
3. **Same Apple Account.** Both devices must be signed in with the
   **same** Apple Account. In the system Settings, tap your name at the
   top to check.
4. **iCloud is on for JustFlip!** In the system Settings, go to your
   name › **iCloud** and make sure iCloud Drive is on and JustFlip! is
   allowed to use iCloud.
5. **Enough iCloud storage.** A full iCloud account stops sync. Check
   under your name › **iCloud** › **Manage Storage**, and free up space
   if needed.
6. **A working connection.** Make sure the device is online.
7. **Compare upload and download times** on the iCloud Sync screen, as
   described in [The sync status](#sync-status), to find which device
   is behind.
8. **Restart and update.** Close and reopen JustFlip!, restart the
   device, and install any JustFlip! update. As a last step, sign out
   of iCloud and back in.
9. **Still stuck?** Use [Send Feedback]{.ui} in Settings and mention
   what the [Recent Sync Activity]{.ui} log shows.

::: tip
#### Before you try anything drastic

Before you delete and reinstall the app, or sign out of iCloud, tap
[Export Backup]{.ui} and export an archive of your most important
interests. Then, whatever happens next, your progress is safe.
:::
