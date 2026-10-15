---
slug: sync-backup
number: 10
title: Sync, Sicherungen und deine Daten
description: "Wie JustFlip! deine Karten und deinen Lernfortschritt schützt: iCloud-Synchronisierung, automatische Sicherungen, Zuletzt gelöscht, Wiederherstellen, Archive exportieren und eine Checkliste, wenn die Synchronisierung zu hängen scheint."
---

# Sync, Sicherungen und deine Daten {#sync-backup number="10"}

::: lede
Karten kannst du neu schreiben oder noch einmal importieren. Deinen
Lernfortschritt nicht: Jede Bewertung, jedes Intervall, jeder Tag deiner
Serie existiert nur, weil du Zeit investiert hast. Deshalb schützt
JustFlip! ihn in drei getrennten Schichten, und jede fängt einen Fehler
ab, den die anderen nicht abfangen können. Dieses Kapitel erklärt, was
jede Schicht tut, wo du sie findest und was du tun kannst, wenn etwas
nicht stimmt.
:::

::: inthischapter
- Die drei Schichten verstehen: iCloud-Synchronisierung, automatische Sicherungen und manueller Export
- Den Synchronisierungsstatus und den Bildschirm „iCloud-Synchronisierung“ lesen
- Deine automatischen Sicherungen finden, wiederherstellen und verstehen
- Wissen, was Löschen bewirkt und was in „Zuletzt gelöscht“ liegt
- Ein Archiv eines Interesses exportieren, samt Fortschritt
- Eine Checkliste abarbeiten, wenn die Synchronisierung zu hängen scheint
:::

## Drei Schichten Sicherheit {#layers}

| Schicht | Was sie ist | Wovor sie dich schützt |
|---|---|---|
| **1. iCloud-Synchronisierung** | Deine Bibliothek, auf jedem Gerät gleich | Ein verlorenes, kaputtes oder ersetztes Gerät |
| **2. Automatische Sicherungen** | Regelmäßige Schnappschüsse, die JustFlip! selbst anlegt | Fehler, die die Synchronisierung überallhin kopieren würde |
| **3. Manueller Export** | Archivdateien, die du speicherst, wo du willst | Alles andere, auch einen Abschied von iCloud |

Alle drei findest du unter **Einstellungen › Datensicherheit**. Öffne
die Einstellungen über das Zahnradsymbol oben in der Liste „Interessen“
und scrolle zum Abschnitt [Datensicherheit]{.ui}.

![Einstellungen › Datensicherheit: Synchronisierungsstatus, die letzte vollständige Sicherung und der letzte Fortschritts-Schnappschuss, Sicherungsspeicherort, Zuletzt gelöscht sowie die Tasten „Sicherung exportieren“ und „Sicherung wiederherstellen“.](images/manual/{lang}/10-data-safety.jpg){.phone}

::: gotcha
#### Synchronisierung ist keine Sicherung

Die Synchronisierung gleicht alle Geräte an. Das gilt auch für deine
Fehler: Löschst du auf dem iPad ein Interesse, verschwindet es innerhalb
von Minuten auch von iPhone und Mac. Die Synchronisierung hat kein
eigenes Rückgängig. Genau deshalb gibt es die Schichten 2 und 3.
:::

## iCloud-Synchronisierung {#icloud-sync}

Die Synchronisierung ist für alle enthalten, in Free wie in Pro. In
JustFlip! musst du nichts einschalten: Ist dein Gerät bei iCloud
angemeldet, wird deine Bibliothek über deinen eigenen iCloud-Account
synchronisiert.

### Was synchronisiert wird

- Interessen, Stapel und Karten, samt Bildern und Tönen
- Dein Lernfortschritt: jede Bewertung, jedes Intervall, jedes
  Fälligkeitsdatum und jeder Fehlversuch
- Abgelegte und zurückgestellte Karten, Markierungen, Prioritäten und
  Fortschritts-Tracker
- Löschungen, auch das, was in „Zuletzt gelöscht“ wartet

Deine **Einstellungen bleiben auf dem jeweiligen Gerät**: das Design,
die Textgröße, die Stimmen, die Erinnerungen und Tageslimits wie [Neue
Karten pro Tag]{.ui}. So kannst du ein ruhiges iPhone und ein
vielbeschäftigtes iPad haben. Die Apple Watch bekommt ihre Karten vom
iPhone statt aus iCloud (siehe Kapitel 8).

### Wie sie sich verhält

- **Offline zuerst.** Alles funktioniert ohne Verbindung. Deine
  Änderungen werden sofort auf dem Gerät gespeichert und gesendet,
  sobald du wieder online bist.
- **Im Hintergrund.** Es gibt keine Sync-Taste. Änderungen wandern von
  selbst, meist innerhalb von Sekunden bis wenigen Minuten.
- **Die letzte Änderung gewinnt.** Bearbeitest du dieselbe Karte auf
  zwei Geräten, bevor sie sich synchronisieren, bleibt die spätere
  Bearbeitung erhalten.

::: tip
#### Ein neues Gerät, ganz einfach

Installiere JustFlip! auf dem neuen Gerät, melde dich mit demselben
Apple Account an und öffne die App. Deine Interessen erscheinen nach und
nach; solange sie noch unterwegs sind, sagt dir das die leere Liste. Eine
große Bibliothek mit vielen Bildern kann beim ersten Sync eine Weile
brauchen, also lass die App im WLAN geöffnet.
:::

## Der Synchronisierungsstatus {#sync-status}

Die erste Zeile unter „Datensicherheit“, [Synchronisierungsstatus]{.ui},
zeigt den Zustand von iCloud auf diesem Gerät, darunter die Uhrzeit des
letzten erfolgreichen Uploads.

| Status | Was er bedeutet |
|---|---|
| [Wird geprüft…]{.ui} | JustFlip! fragt bei iCloud nach, ob dein Account verfügbar ist |
| [Verfügbar]{.ui} | Dein iCloud-Account ist bereit, die Synchronisierung kann laufen |
| [Synchronisieren…]{.ui} | Gerade werden Änderungen gesendet oder empfangen |
| [Nicht verfügbar]{.ui} | Auf diesem Gerät ist kein iCloud-Account verfügbar, also wird nichts synchronisiert |
| [Synchronisierung fehlgeschlagen]{.ui} | iCloud hat beim letzten Versuch einen Fehler gemeldet |

[Nicht verfügbar]{.ui} und [Synchronisierung fehlgeschlagen]{.ui}
erscheinen in Rot.

::: note
#### „Verfügbar“ heißt nicht „alles hochgeladen“

[Verfügbar]{.ui} sagt nur, dass dein Account bereit ist. Es verspricht
nicht, dass jede Änderung schon in iCloud angekommen ist. Dafür schau
dir die Upload- und Download-Zeiten auf dem Bildschirm
„iCloud-Synchronisierung“ an.
:::

### Der Bildschirm „iCloud-Synchronisierung“

Tippe auf [Synchronisierungsstatus]{.ui}, um die Details zu sehen:

- [Aktueller Status]{.ui}: der Zustand aus der Tabelle oben.
- **Letzter erfolgreicher Upload** und **Letzter erfolgreicher
  Download**: wann iCloud zuletzt *bestätigt* hat, dass Änderungen von
  diesem Gerät gesendet oder auf ihm empfangen wurden. Lokales Speichern
  zählt nicht, nur eine bestätigte Übertragung.
- **Upload läuft**, solange einer im Gang ist.
- [Erneut prüfen]{.ui}: fragt iCloud noch einmal, ob dein Account
  verfügbar ist.
- [Fehlerbehebung]{.ui}: der letzte Fehler, den iCloud gemeldet hat,
  oder [Keine Synchronisierungsfehler]{.ui}.
- [Letzte Synchronisierungsaktivität]{.ui}: ein Protokoll der jüngsten
  Sync-Ereignisse auf diesem Gerät, nützlich, wenn du dich an den
  Support wendest.

![Der Bildschirm „iCloud-Synchronisierung“ mit den Upload- und Download-Zeiten, „Erneut prüfen“ und dem Protokoll der letzten Aktivität.](images/manual/{lang}/10-icloud-sync.jpg){.phone}

::: tip
#### Zwei Geräte nebeneinander vergleichen

Wenn eine Änderung von einem Gerät nie auf dem anderen ankommt, öffne
diesen Bildschirm auf beiden. Ist der **letzte erfolgreiche Upload**
eines Geräts älter als die Änderung, liegt das Problem bei diesem Gerät:
Es hat sie noch nicht gesendet. Ist der Upload aktuell, der **letzte
erfolgreiche Download** des anderen Geräts aber alt, hat das empfangende
Gerät sie noch nicht abgeholt.
:::

## Automatische Sicherungen {#automatic-backups}

JustFlip! sichert deine Bibliothek von selbst. Unter „Datensicherheit“
findest du zwei Arten:

| Sicherung | Zeile unter „Datensicherheit“ | Inhalt | Etwa wie oft | Aufbewahrt |
|---|---|---|---|---|
| **Vollständige Sicherung** | [Letzte vollständige Sicherung]{.ui} | Ein Archiv mit jedem Interesse: Karten, Bilder, Töne und der gesamte Fortschritt | Wöchentlich | Die neuesten 10 |
| **Fortschritts-Schnappschuss** | [Letzter Fortschritts-Schnappschuss]{.ui} | Jedes Interesse mit seinem Fortschritt, ohne Bilder und Töne | Täglich | Die neuesten 30 |

Auf iPhone und iPad führt das System die Sicherungen im Hintergrund aus,
wenn es den Moment für passend hält. Auf dem Mac prüft JustFlip! jedes
Mal, wenn du die App in den Vordergrund holst, und holt Überfälliges
nach. Eine Sicherung wird übersprungen, wenn sich seit der vorigen
nichts geändert hat.
<!-- VERIFY: the skip check compares interests' modifiedAt with the last backup date; confirm that reviewing cards (not only editing) counts as a change. -->
Fällt die älteste Sicherung aus der Anzahl der aufbewahrten heraus, wird
sie automatisch gelöscht.

Die Daten werden rot, wenn eine Sicherung überfällig ist: eine
vollständige Sicherung, die älter als vier Wochen ist, oder ein
Fortschritts-Schnappschuss, der älter als vier Tage ist.

### Sicherung exportieren: eine vollständige Sicherung, sofort

[Sicherung exportieren]{.ui} legt sofort eine vollständige Sicherung an
und fügt sie der Liste hinzu, zum Beispiel bevor du etwas Riskantes
ausprobierst. Dabei entsteht eine Datei mit einem Namen wie
`JustFlip-2026-09-30_14-05-12.justflip`.

### Wo Sicherungen liegen

Die Zeile [Sicherungsspeicherort]{.ui} zeigt, wo deine Sicherungen
gespeichert werden:

- [iCloud Drive]{.ui}: Die Sicherungen liegen im iCloud-Drive-Speicher
  von JustFlip!, getrennt von der Synchronisierung. Ein Sync-Problem
  oder eine synchronisierte Löschung kann ihnen nichts anhaben.
- [Nur lokal]{.ui}: iCloud Drive ist nicht verfügbar, also bleiben die
  Sicherungen auf diesem Gerät. Tippe auf die Zeile, um den Grund zu
  sehen: [Nicht bei iCloud angemeldet]{.ui}, [iCloud Drive ist
  deaktiviert]{.ui} oder [Ihr iCloud-Speicherkontingent ist voll]{.ui}.
<!-- VERIFY: the app's entitlements list only the CloudKit iCloud service (no CloudDocuments / ubiquity container). If so, url(forUbiquityContainerIdentifier:) returns nil and Backup Location is always "Local only" in shipping builds. Also verify whether the backup folder is visible in the Files app. -->

::: gotcha
#### Lokale Sicherungen gehen mit der App

„Lokaler Speicher funktioniert, wird aber nicht geräteübergreifend
synchronisiert und überlebt keine App-Deinstallation“, warnt die App
selbst. Zeigt der Sicherungsspeicherort [Nur lokal]{.ui}, löschst du mit
JustFlip! auch seine Sicherungen. Bewahre deshalb zusätzlich ein
[exportiertes Archiv](#export) an einem sicheren Ort auf.
:::

## Eine Sicherung wiederherstellen {#restore}

Tippe unter „Datensicherheit“ auf [Sicherung wiederherstellen]{.ui}, um
die [Verfügbaren Archive]{.ui} zu sehen, die neuesten zuerst, jeweils
mit Dateiname und Datum. Tippe auf eines, um es wiederherzustellen. Eine
Meldung bestätigt, wenn es fertig ist: „Wiederherstellung
abgeschlossen. Interessen wurden zusammengeführt.“

![Sicherung wiederherstellen: die Liste der verfügbaren Archive, die neuesten zuerst.](images/manual/{lang}/10-restore-backup.jpg){.phone}

Eine Wiederherstellung **führt zusammen**; sie leert deine Bibliothek
nie vorher:

- Interessen, Stapel und Karten aus der Sicherung kommen zurück. Alles,
  was nach der Sicherung entstanden ist, bleibt, wie es ist.
- Für jede Karte in der Sicherung wird der **Plan zurückgesetzt** auf den
  Stand zum Zeitpunkt der Sicherung: Lernphase, Intervall,
  Fälligkeitsdatum, Leichtigkeit und Fehlversuche.
- Der Wiederholungs**verlauf wird zusammengeführt**. Wiederholungen nach
  der Sicherung bleiben erhalten, und wer dieselbe Sicherung zweimal
  wiederherstellt, erzeugt keine Duplikate.

::: gotcha
#### Die Wiederherstellung beginnt, sobald du tippst

Es gibt keine Rückfrage: Ein Tipp auf eine Sicherung stellt sie wieder
her. Such dir das richtige Datum aus, bevor du die Liste berührst. Und
denk daran, dass die Karten darin auf ihren Plan *von damals*
zurückgehen. Stellst du eine alte Sicherung wieder her, um einen Stapel
zu retten, drehst du also auch für jede andere Karte darin die Uhr
zurück.
:::

::: gotcha
#### Gib deinen Geräten nach einer Wiederherstellung Zeit

Eine Wiederherstellung schreibt viele Änderungen auf einmal, und jedes
andere Gerät muss sie empfangen. Lass JustFlip! auf dem Gerät, auf dem du
wiederhergestellt hast, im WLAN geöffnet, bis sein **letzter
erfolgreicher Upload** aktuell ist. Öffne dann JustFlip! auf deinen
anderen Geräten und gib ihnen ein paar Minuten, bevor du dort
wiederholst.
:::

## Löschen und „Zuletzt gelöscht“ {#recently-deleted}

::: gotcha
#### Löschen ist endgültig

Wenn du ein Interesse, einen Stapel oder eine Karte löschst, ist es
sofort weg, auf jedem Gerät. Bevor du etwas löschst, das du vielleicht
zurückhaben möchtest, wähle im Kontextmenü des Interesses [Archiv
exportieren]{.ui}. Das Archiv bewahrt seine Stapel, Karten und den
Fortschritt, und du kannst es später wieder importieren. Eine Karte, die
du nur aus deinen Wiederholungen haben willst, legst du besser ab, statt
sie zu löschen (Kapitel 2).
:::

**Einstellungen › Datensicherheit › Zuletzt gelöscht** enthält Interessen
und Stapel, die JustFlip! für dich beiseitegelegt hat, etwa die leere
Kopie, die übrig bleibt, nachdem zwei Interessen oder Stapel
zusammengeführt wurden. Die Zeile zeigt, wie viele Elemente warten, oder
[Leer]{.ui}.

![Zuletzt gelöscht, mit einem Element und seinen Tasten „Wiederherstellen“ und „Löschen“.](images/manual/{lang}/10-recently-deleted.jpg){.phone}

Jedes Element zeigt seinen Namen, das Interesse, zu dem es gehörte, und
wann es beiseitegelegt wurde. Dazu zwei Tasten:

- [Wiederherstellen]{.ui} holt es mit allen Karten und dem Fortschritt
  zurück.
- [Löschen]{.ui} entfernt es endgültig, und zwar sofort. Das lässt sich
  nicht rückgängig machen.

Nach **30 Tagen** löscht JustFlip! endgültig, was noch übrig ist.

## Ein Archiv exportieren {#export}

Die dritte Schicht hast du selbst in der Hand: eine Archivdatei, die du
in „Dateien“, auf einem Laufwerk oder in einem beliebigen Cloud-Dienst
aufbewahren kannst.

| Du möchtest … | So geht's | Du bekommst |
|---|---|---|
| Ein Interesse mit Fortschritt aufbewahren oder umziehen | Interesse gedrückt halten › [Archiv exportieren]{.ui} | `Name.flashcards.zip` |
| Dasselbe auf dem Mac | Interesse auswählen › **Ablage › Export Interest…** (⇧⌘E) | `Name.flashcards.zip` |
| Sofort die ganze Bibliothek sichern | **Einstellungen › Datensicherheit › Sicherung exportieren** | eine `.justflip`-Datei bei deinen Sicherungen |
| Deine Zahlen auswerten | Gedrückt halten › [Statistiken exportieren]{.ui} | CSV oder JSON (Kapitel 9) |

Ein Interessen-Archiv enthält jeden Stapel und jede Karte des Interesses,
seine Bilder und Töne **und deinen Lernfortschritt**. Um es
zurückzuholen, öffne die Datei mit JustFlip! aus „Dateien“, über das
Teilen-Menü oder per AirDrop, oder zieh sie auf dem Mac ins Fenster bzw.
verwende **Ablage › Import Interest Archive…**. Der Import
funktioniert wie eine Wiederherstellung: Er führt zusammen, sodass du
dieselbe Datei zweimal öffnen kannst, ohne Duplikate zu erzeugen.
Kapitel 5 erklärt das Importieren im Detail.

::: gotcha
#### Ein Archiv trägt deinen Fortschritt mit sich

[Archiv exportieren]{.ui} enthält immer deinen Lernfortschritt. Für eine
Sicherung ist das genau richtig. Schickst du die Datei aber einer
Freundin oder einem Freund, reisen deine Fälligkeitsdaten und dein
Verlauf mit.
<!-- VERIFY: whether importing someone else's archive applies the sender's progress to the recipient's copy (importProgress writes schedule fields unconditionally when the card ids match). -->
:::

## Doppelte Interessen von zwei Geräten {#duplicates}

Interessennamen sind in deiner Bibliothek eindeutig, ohne Rücksicht auf
Groß- und Kleinschreibung. Sind aber zwei Geräte gleichzeitig offline
und du legst auf jedem ein Interesse mit demselben Namen an, zum
Beispiel „Spanisch“ auf dem iPhone im Flugzeug und „spanisch“ auf dem
iPad zu Hause, gibt es beide Kopien, sobald sich die Geräte wieder
synchronisieren.

JustFlip! bemerkt das und **führt sie automatisch zusammen**: Die Stapel
beider Kopien landen unter einem Interesse, und du siehst eine kurze
Meldung wie „Doppelte Kopien von ‚Spanisch‘ zusammengeführt, die auf
einem anderen Gerät erstellt wurden“. Namen werden ohne Rücksicht auf
Groß- und Kleinschreibung, Akzente und überzählige Leerzeichen
verglichen. Jedes Gerät wählt dieselbe Kopie als die bleibende, sodass
am Ende alle dasselbe eine Interesse haben, und ein Stapel, der später
noch für die aufgelöste Kopie eintrifft, findet trotzdem an den
richtigen Platz.

## Fehlerbehebung bei der Synchronisierung {#troubleshooting}

Wenn eine Änderung nicht auf einem anderen Gerät erscheint, geh diese
Liste der Reihe nach durch. Die meisten Probleme sind bei Schritt 3
oder 4 gelöst.

1. **Gib ihr ein paar Minuten.** Die Synchronisierung passiert nicht
   sofort. Lass JustFlip! auf beiden Geräten ein, zwei Minuten geöffnet.
2. **Prüfe den Status.** Öffne auf beiden Geräten **Einstellungen ›
   Datensicherheit › Synchronisierungsstatus**. [Nicht verfügbar]{.ui}
   heißt, dass kein iCloud-Account verfügbar ist; bei
   [Synchronisierung fehlgeschlagen]{.ui} steht der Fehler unter
   [Fehlerbehebung]{.ui}. Tippe auf [Erneut prüfen]{.ui}, nachdem du
   etwas behoben hast.
3. **Derselbe Apple Account.** Beide Geräte müssen mit **demselben**
   Apple Account angemeldet sein. Tippe dazu in der App „Einstellungen“
   des Systems oben auf deinen Namen.
4. **iCloud ist für JustFlip! aktiviert.** Geh in der App „Einstellungen“
   zu deinem Namen › **iCloud** und stelle sicher, dass iCloud Drive
   eingeschaltet ist und JustFlip! iCloud verwenden darf.
5. **Genug iCloud-Speicher.** Ein voller iCloud-Account stoppt die
   Synchronisierung. Sieh unter deinem Namen › **iCloud** › **Speicher
   verwalten** nach und schaffe bei Bedarf Platz.
6. **Eine funktionierende Verbindung.** Stelle sicher, dass das Gerät
   online ist.
7. **Vergleiche die Upload- und Download-Zeiten** auf dem Bildschirm
   „iCloud-Synchronisierung“, wie unter [Der
   Synchronisierungsstatus](#sync-status) beschrieben, um
   herauszufinden, welches Gerät hinterherhinkt.
8. **Neu starten und aktualisieren.** Schließe JustFlip! und öffne es
   wieder, starte das Gerät neu und installiere alle Updates für
   JustFlip!. Als letzten Schritt meldest du dich von iCloud ab und
   wieder an.
9. **Hängt es immer noch?** Nutze [Feedback senden]{.ui} in den
   Einstellungen und erwähne, was das Protokoll [Letzte
   Synchronisierungsaktivität]{.ui} zeigt.

::: tip
#### Bevor du zu drastischen Mitteln greifst

Bevor du die App löschst und neu installierst oder dich von iCloud
abmeldest, tippe auf [Sicherung exportieren]{.ui} und exportiere ein
Archiv deiner wichtigsten Interessen. Was auch immer danach passiert,
dein Fortschritt ist sicher.
:::
