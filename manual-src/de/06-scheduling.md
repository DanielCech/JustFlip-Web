---
slug: scheduling
number: 6
title: So funktioniert die Planung
description: "Wie JustFlip! entscheidet, wann du eine Karte wiedersiehst: Lernstufen, Intervalle und Leichtigkeit, wann eine Karte fällig ist, Wiederholungsprioritäten, Zurückstellen, Fortschritts-Tracker und Intelligente Planung."
---

# So funktioniert die Planung {#scheduling number="6"}

::: lede
Eine Wiederholung musst du nie selbst planen. Jede Bewertung verrät
JustFlip!, wie gut du eine Karte kannst, und die App rechnet aus, wann
sie sie dir wieder zeigt: bald, wenn sie dir entglitten ist, viel
später, wenn sie leicht war. Dieses Kapitel öffnet die Haube. Du siehst,
was die Stufen bedeuten, warum die Intervalle so wachsen, wie sie
wachsen, und mit welchen Reglern du die Warteschlange steuerst, ohne
dein Gedächtnis zu betrügen.
:::

::: inthischapter
- Die fünf Stufen, die eine Karte durchläuft, und was sie weiterbringt
- Intervalle und Leichtigkeit einfach erklärt, mit der genauen Mathematik für Neugierige
- Was „fällig“ bedeutet und wie JustFlip! entscheidet, was zuerst kommt
- Einem Thema mit Wiederholungsprioritäten mehr Zeit geben
- Eine Karte, einen Stapel oder ein ganzes Interesse zurückstellen und wieder zurückholen
- Fähigkeiten, die Karteikarten nicht bewerten können, mit Fortschritts-Trackern verfolgen
:::

## Die Idee in einer Minute {#idea}

Erinnerung verblasst entlang einer Kurve. Direkt nachdem du etwas
gelernt hast, vergisst du es schnell, und jedes Mal, wenn du dich wieder
daran erinnerst, wird die Kurve flacher. Verteilte Wiederholung nutzt
genau das: Sie zeigt dir eine Karte kurz bevor du sie vergessen hättest.
Jedes erfolgreiche Erinnern schiebt die nächste Wiederholung weiter
hinaus.

In JustFlip! trägt jede Karte drei Zahlen:

| Zahl | Was sie bedeutet |
|---|---|
| **Intervall** | Wie lange es dauert, bis die Karte zurückkommt, von Minuten bis zu Monaten |
| **Leichtigkeit** | Wie schnell das Intervall bei dieser Karte wächst. Sie startet bei 2,5 |
| **Fälligkeitsdatum** | Der Moment, in dem das Intervall abläuft und die Karte wieder bereit ist |

Deine Bewertung nach jedem Umdrehen ändert Leichtigkeit und Intervall,
und das Fälligkeitsdatum zieht nach. Die Bewertungstasten zeigen das
Intervall, das jede Wahl ergeben würde, es passiert also nichts hinter
deinem Rücken. Nach dem Bewerten bestätigt ein kurzer Hinweis
[Nächste: …]{.ui}, wann du die Karte wiedersiehst.

## Die fünf Stufen {#stages}

Jede Karte befindet sich in einer von fünf Stufen. Die Stufe ist ein
Etikett, das das Intervall der Karte beschreibt. Sie bestimmt das
Intervall nicht.

| Stufe | Bedeutung | Typisches Intervall |
|---|---|---|
| **Ungesehen** | Noch nie gelernt | — |
| **Lernend** | Frisch gelernt oder aus der Stufe „Wiederholung“ vergessen | Minuten bis einige Tage |
| **Wiederholung** | Das Intervall hat 7 Tage erreicht | eine bis vier Wochen |
| **Gemeistert** | Das Intervall hat 30 Tage erreicht | Monate |
| **Neu lernend** | Eine gemeisterte Karte, die du vergessen hast | wieder kurze Schritte |

```text
Unseen ──grade──▶ Learning ──7 days──▶ Reviewing ──30 days──▶ Graduated
                     ▲                     │                      │
                     └─────── Again ───────┘                Again │
                                                                  ▼
                                                             Relearning
```

Was eine Karte zwischen den Stufen bewegt:

- **Jede Bewertung** bringt eine ungesehene Karte in die Stufe „Lernend“.
- **Schwer, Gut oder Leicht** heben eine Karte eine Stufe höher, sobald
  ihr neues Intervall eine Schwelle überschreitet: Mit 7 Tagen kommt sie
  in „Wiederholung“, mit 30 Tagen gilt sie als „Gemeistert“. Die Stufen
  folgen dem Intervall, deshalb wird eine neue Karte durch ein Leicht
  nicht sofort gemeistert. Ihre 30 Tage muss sie sich erst verdienen.
- **Nochmal** schickt eine lernende Karte oder eine Karte in
  „Wiederholung“ zurück nach „Lernend“, eine gemeisterte Karte nach „Neu
  lernend“. So oder so fällt das Intervall auf 5 Minuten.
<!-- VERIFY: in SM-2 mode a Relearning card's Good/Easy interval is always the initial step (1 or 4 days), so it never reaches the 7-day threshold and appears to stay in Relearning. Confirm the intended exit path in CardStatistics+SRS.swift calculateNextInterval before describing how a card leaves Relearning. -->

Der Bildschirm „Statistiken“ zählt deine Karten nach Stufen, unter
**Sammlung**: [Neu]{.ui}, [Lernend]{.ui} (einschließlich „Neu lernend“),
[Wiederholung]{.ui} und [Gemeistert]{.ui}. Den Rest dieses Bildschirms
erklärt Kapitel 9.

::: note
#### Beherrschung ist nicht dasselbe wie Gemeistert

Der Prozentwert **Beherrschung** bei einem Stapel oder Interesse zählt
die Karten, deren *letzte* Bewertung Gut oder Leicht war. Er ist nicht
der Anteil gemeisterter Karten. Ein Stapel kann schon nach einer guten
Sitzung eine hohe Beherrschung zeigen, lange bevor irgendetwas
gemeistert ist. Die Beherrschung sagt dir, wie es zuletzt lief. Die
Stufen sagen dir, wie gefestigt das Wissen ist.
:::

## Intervalle und Leichtigkeit {#intervals}

### Die erste Bewertung

Eine Karte, die du noch nie bewertet hast oder gerade vergessen hast,
beginnt mit festen ersten Schritten:

| Bewertung | Nächste Wiederholung |
|---|---|
| Nochmal | in 5 Minuten |
| Schwer | in 20 Minuten |
| Gut | in 1 Tag |
| Leicht | in 4 Tagen |

### Jede weitere Bewertung

Danach geht jede Bewertung vom Intervall aus, das die Karte bereits hat:

- **Nochmal** fängt von vorn an: 5 Minuten und eine geringere
  Leichtigkeit.
- **Schwer** verlängert das Intervall ein wenig, um 20 %, und senkt die
  Leichtigkeit.
- **Gut** multipliziert das Intervall mit der Leichtigkeit der Karte:
  bei einer typischen Karte etwa 2,5×.
- **Leicht** multipliziert mit der Leichtigkeit *und* einem Bonus von
  1,3 und erhöht die Leichtigkeit.

Die Leichtigkeit ist die eigene Wachstumsrate der Karte. Jedes Schwer
und jedes Nochmal lässt eine Karte von da an langsamer wachsen, jedes
Leicht schneller. Die Leichtigkeit fällt nie unter 1,3 und steigt nie
über 3,5, sodass auch eine schwierige Karte vorankommt, nur in kleineren
Schritten.

So entwickelt sich eine neue Karte, die du jedes Mal mit **Gut**
beantwortest:

| Wiederholung | Intervall | Stufe danach |
|---|---|---|
| 1. | 1 Tag | Lernend |
| 2. | 2,5 Tage | Lernend |
| 3. | etwa 6 Tage | Lernend |
| 4. | etwa 16 Tage | Wiederholung |
| 5. | etwa 39 Tage | Gemeistert |

Fünf erfolgreiche Wiederholungen, verteilt über etwa zwei Monate, und
die Karte kommt nur noch einmal im Monat oder seltener.

::: tip
#### Warum die Tage schwanken

Intervalle ab zwei Tagen bekommen einen kleinen zufälligen Schubs von
bis zu ±10 %. Karten, die du am selben Abend gelernt hast, kämen sonst
für immer gemeinsam zurück, als ein großer Klumpen in deinem Kalender.
Der Schubs verteilt sie auf benachbarte Tage. Die Bewertungstasten
zeigen immer das Intervall vor dem Schubs, das tatsächliche Datum kann
also um etwa einen Tag abweichen.
:::

::: note
#### Unter der Haube: die SM-2-Variante

JustFlip! verwendet eine Variante von SM-2, dem Algorithmus hinter
SuperMemo und Anki. Mit der Leichtigkeit *E* und dem aktuellen
Intervall *I* aktualisiert eine Bewertung zuerst die Leichtigkeit,
begrenzt auf 1,3 bis 3,5:

$$
E' = \min\bigl(3.5,\ \max(1.3,\ E + \Delta)\bigr), \qquad \Delta \in \{-0.20,\ -0.15,\ 0,\ +0.15\}
$$

für Nochmal, Schwer, Gut und Leicht. Dann ist das neue Intervall für
eine Karte, die schon unterwegs ist:

$$
I_{\text{hard}} = \max(1.2\,I,\ 1\ \text{hour})
$$

$$
I_{\text{good}} = \max(E'\,I,\ 1\ \text{day})
$$

$$
I_{\text{easy}} = \max(1.3\,E'\,I,\ 4\ \text{days})
$$

Nochmal ergibt immer 5 Minuten. Intervalle ab zwei Tagen werden danach
mit einem Zufallsfaktor multipliziert:

$$
I_{\text{final}} = I \times (1 + u), \qquad u \in [-0.1,\ 0.1]
$$
:::

### Intelligente Planung (Pro) {#smart-schedule}

Unter **Einstellungen › Verhalten** ersetzt der Schalter
[Intelligente Planung]{.ui} (gekennzeichnet mit [BETA]{.ui}) die
SM-2-Intervalle durch **FSRS-5**, einen modernen Planungsalgorithmus.
FSRS legt jede Wiederholung auf den Moment, in dem deine Chance, dich an
die Karte zu erinnern, auf etwa 90 % sinkt. Ziel sind weniger
Wiederholungen bei gleicher Behaltensrate. Er ändert nur die Intervalle
für Schwer, Gut und Leicht. Nochmal bringt eine Karte weiterhin nach
5 Minuten zurück.

JustFlip! hält seine SM-2-Werte in jedem Fall aktuell, du kannst die
Intelligente Planung also jederzeit ausschalten, ohne dass etwas
verloren geht. Sie ist eine Pro-Funktion. Ohne Pro öffnet ein Tipp auf
den Schalter stattdessen den Pro-Bildschirm.

## Was „fällig“ bedeutet {#due}

Eine Karte ist **fällig**, sobald ihr Fälligkeitsdatum verstrichen ist,
es sei denn, du hast sie abgelegt oder zurückgestellt. Abgelegte Karten
(Kapitel 2) und zurückgestellte Karten (siehe
[Zurückstellen](#postponing)) behalten ihren Plan. Sie tauchen nur nicht
auf, solange sie beiseitegelegt sind.

Karten, die du noch nie gelernt hast, sind nicht fällig, sondern
**neu**. Die Sitzung [Heute]{.ui} mischt beides: zuerst die fälligen
Karten, dann frische aus deinem Tageskontingent. Standardmäßig sind es
20 [Karten pro Sitzung]{.ui} und 10 [Neue Karten pro Tag]{.ui}, beides
unter **Einstellungen › Verhalten**.

### Welche Karten zuerst kommen

In der Sitzung „Heute“ und im Wiederholungsmenü des Bildschirms „Stapel“
baut JustFlip! die Warteschlange so auf:

1. **Älteste zuerst.** Karten, die an einem früheren Tag fällig wurden,
   kommen vor Karten, die später fällig wurden.
2. **Tägliches Mischen innerhalb jedes Tages.** Karten, die am selben
   Tag fällig wurden, werden in einer Reihenfolge gemischt, die sich
   jeden Tag ändert. So greift eine kurze Sitzung nicht immer dieselbe
   vorderste Scheibe eines großen Rückstands heraus.
3. **Stapel wechseln sich ab.** Die Karten der einzelnen Stapel werden
   abwechselnd zusammengeführt, gewichtet nach Priorität (siehe
   [Wiederholungsprioritäten](#priorities)).
4. **Neue Karten zuletzt,** bis zu dem, was von deinem Tageskontingent
   und der Sitzungsgröße noch übrig ist.
5. **Geschwisterkarten aus Bildabdeckungen werden auseinandergezogen,**
   damit zwei Karten aus demselben Bild nicht direkt hintereinander
   kommen.

Eine Wiederholung, die du aus der Kartenliste eines einzelnen Stapels
startest, mischt die fälligen Karten dieses Stapels.

::: gotcha
#### Nochmal wiederholt die Karte nicht in derselben Sitzung

Eine Karte, die du mit **Nochmal** bewertest, ist in 5 Minuten wieder
fällig, taucht aber in der laufenden Sitzung nicht noch einmal auf. Du
begegnest ihr in deiner nächsten Sitzung. Willst du sofort einen zweiten
Versuch, beende die Sitzung und starte nach ein paar Minuten eine neue.
:::

### Dringlichkeit

Interessen und Stapel bekommen außerdem einen Wert für die
**Dringlichkeit**. Er steuert die farbige Anzeige in den Listen und die
Sortierung [Nach Dringlichkeit]{.ui}. Er setzt sich aus mehreren
Signalen zusammen. Am stärksten zählen der Anteil fälliger Karten und
wie überfällig die älteste Karte ist. Weniger stark zählen, wie lange du
den Stapel nicht mehr gelernt hast, eine niedrige Beherrschung und ein
paar neue Karten. Abgelegte und zurückgestellte Karten zählen nicht. Ein
paar Stunden, nachdem du einen Stapel gelernt hast, bleibt seine
Dringlichkeit bei null, damit die Anzeige nicht wegen der
5-Minuten-Wiedervorlagen aufflackert.

**Einstellungen › Wiederholungstempo** bestimmt, wie schnell die
Dringlichkeit steigt: **Entspannt** (langsam, mit kleineren ersten
Portionen), **Gleichmäßig** (die Voreinstellung) oder **Intensiv**
(schnell, mit der ganzen Warteschlange im Blick). Das
Wiederholungstempo ändert nie die Intervalle selbst.

## Wiederholungsprioritäten {#priorities}

Wenn du mehr fällige Karten als Zeit hast, entscheidet die Priorität,
wessen Karten du zuerst siehst. Jedes Interesse hat eine
[Lernpriorität]{.ui} von 0 % bis 100 %, in Schritten von 5 %. Sie
beginnt bei **75 %**. Jeder Stapel nutzt standardmäßig [Vom Interesse
übernehmen]{.ui} oder legt einen eigenen Wert fest.

Du stellst sie an einer von drei Stellen ein:

- **Bei einem Interesse:** Halte es in der Liste „Interessen“ gedrückt,
  wähle [Interesse bearbeiten]{.ui} und verschiebe den Regler
  [Lernpriorität]{.ui}.
- **Bei einem Stapel:** Halte ihn gedrückt, wähle [Stapel
  bearbeiten]{.ui}, schalte [Vom Interesse übernehmen]{.ui} aus und
  verschiebe den Regler.
- **Für alle Stapel eines Interesses auf einmal:** Öffne auf dem
  Bildschirm „Stapel“ das Menü [Stapeloptionen]{.ui} (das Ordnersymbol)
  und wähle [Wiederholungspriorität]{.ui}. Das Blatt zeigt den Regler
  [Interessenpriorität]{.ui} und darunter, unter
  [Stapelpriorität]{.ui}, eine Zeile für jeden Stapel.

![Das Blatt „Wiederholungspriorität“: oben der Regler für das Interesse, darunter eine Zeile pro Stapel mit eigenem Schalter „Vom Interesse übernehmen“.](images/manual/{lang}/06-review-priority.jpg){.phone}

### So funktioniert die Mischung

Die Priorität ändert die *Reihenfolge* der Warteschlange, nicht ihren
Inhalt. Stell dir vor, jeder Stapel teilt seine fälligen Karten
reihum aus. Ein Stapel mit doppelter Priorität ist doppelt so oft an der
Reihe:

| Stapel | Priorität | Position seiner Karten in der Sitzung |
|---|---|---|
| Spanisch | 100 % | 1., 3., 4., 6., 7. … |
| Chemie | 50 % | 2., 5., 8. … |

Mit der Voreinstellung von 75 % überall wechseln sich die Stapel einfach
ab, jeweils eine Karte. Eine höhere Priorität sichert sich mehr Platz in
einer begrenzten Sitzung, eine niedrigere rutscht Richtung Ende.

::: gotcha
#### Priorität versteckt nie eine Karte

Auch bei 0 % bleiben die fälligen Karten eines Stapels fällig. Sie
werden nur nach allem anderen angeboten. Die Zahl fälliger Karten im
Widget, in „Heute“ und auf dem Bildschirm „Stapel“ bleibt exakt gleich,
wenn du einen Regler verschiebst. Die Priorität zählt nur, wenn eine
Sitzung begrenzt ist: in „Heute“ und im Wiederholungsmenü des
Bildschirms „Stapel“. Eine Wiederholung eines einzelnen Stapels hat
keine Konkurrenz.
:::

## Zurückstellen {#postponing}

Manchmal ist eine Karte nicht falsch, es ist nur nicht der richtige
Moment: eine Prüfungswoche in einem anderen Fach, ein Urlaub, ein
Stapel, um den du dich erst nächsten Monat kümmerst. Mit Nochmal oder
Schwer würdest du ihren Plan beschädigen. **Zurückstellen** legt sie
stattdessen auf Eis, ohne den Plan überhaupt anzurühren.

### So stellst du zurück

Tippe während einer beliebigen Wiederholung auf die Taste
[Zurückstellen]{.ui} (das Uhrsymbol oben auf dem
Wiederholungsbildschirm). Wähle den Umfang:

- [Diese Karte zurückstellen]{.ui}
- [Diesen Stapel zurückstellen]{.ui}
- [Dieses Interesse zurückstellen]{.ui}

Wähle dann, wie lange: [Morgen]{.ui}, [In 3 Tagen]{.ui},
[In 1 Woche]{.ui} oder [Eigenes Datum…]{.ui}, um unter
[Fortsetzen am]{.ui} einen Tag auszuwählen. Eine Pause dauert bis zum
Beginn dieses Tages, „Morgen“ heißt also den ganzen morgigen Tag, nicht
24 Stunden ab jetzt.

![Das Menü „Zurückstellen“ während einer Wiederholung, mit den Optionen für Karte, Stapel und Interesse.](images/manual/{lang}/06-postpone-menu.jpg){.phone}

Die pausierten Karten verlassen die laufende Sitzung sofort. Stellst du
bei der Wiederholung eines einzelnen Stapels den Stapel oder das
Interesse zurück, endet die Sitzung, denn es bleibt nichts mehr zu
wiederholen.

### Was eine Pause bewirkt

Eine Pause ist ein reiner Filter. Nichts wird bewertet, Intervall und
Leichtigkeit bleiben, wie sie sind, und der Verlauf der Karte ändert
sich nicht. Solange die Pause dauert:

| Wo | Zurückgestellte Karten |
|---|---|
| „Heute“, das Widget, die Zahl fälliger Karten und die Prognose | ausgelassen |
| [Fällige Karten]{.ui} und [Schwierige Karten]{.ui} | ausgelassen |
| [Neue Karten]{.ui} (Menü auf dem Bildschirm „Stapel“) | ausgelassen, auch wenn nie gelernt |
| [Alle Karten]{.ui} | **enthalten** |

Sind eine Karte, ihr Stapel und ihr Interesse alle pausiert, gilt das
späteste Datum.

### So hebst du eine Pause auf

Pausen enden an dem Datum, das du gewählt hast, von selbst. Um eine
früher zu beenden, öffne den Bildschirm „Stapel“ des Interesses und
wähle [Stapeloptionen]{.ui} › [Wiederholungspriorität]{.ui}. Solange
etwas pausiert ist, hat das Blatt einen Abschnitt [Zurückgestellt]{.ui}
mit der Zahl der pausierten Karten und einer Taste für jede aktive
Pause:

- [Interesse jetzt fortsetzen]{.ui}
- [*Stapelname* jetzt fortsetzen]{.ui}, eine für jeden pausierten Stapel

::: gotcha
#### Eine einzelne Karte lässt sich nicht vorzeitig fortsetzen

Der Abschnitt „Zurückgestellt“ listet nur Pausen von Interessen und
Stapeln. Eine Pause für eine einzelne Karte zählt zur Gesamtzahl, hat
aber keine Taste zum Fortsetzen. Sie läuft einfach an ihrem Datum aus.
Um sie zu verkürzen, öffne die Wiederholung [Alle Karten]{.ui} des
Stapels, die Pausen ignoriert. Wenn die Karte kommt, stelle sie erneut
mit [Morgen]{.ui} zurück.
:::

::: tip
#### „Alle Karten“ ist der Paukmodus

[Alle Karten]{.ui} schließt abgelegte und zurückgestellte Karten
absichtlich ein. Nutze es am Abend vor einer Prüfung oder wenn du einen
zurückgestellten Stapel trotzdem durchgehen willst. Deine Bewertungen
dort zählen wie alle anderen.
:::

## Fortschritts-Tracker (Pro) {#trackers}

Manche Fähigkeiten passen nicht auf eine Karteikarte: ein Stück, das du
auf dem Klavier übst, eine Klettertechnik, ein Buch, das du dir
erarbeitest. Ein **Fortschritts-Tracker** ist eine besondere Karte mit
einem Namen, optionalen Notizen und einem Fortschrittsbalken, den du
selbst einstellst.

Um einen hinzuzufügen, öffne einen Stapel, tippe auf das Menü [Weitere
Aktionen]{.ui} und wähle [Fortschritts-Tracker hinzufügen]{.ui}. Beim
ersten Mal erklärt eine kurze Einführung die Idee. Gib dem Tracker einen
Namen ([Was möchtest du verfolgen?]{.ui}) und, wenn du magst, Notizen.
Tippe später auf den Tracker und schiebe den Regler
[Fortschritt]{.ui} von 0 bis 100 in Fünferschritten dorthin, wo du dich
gerade siehst.

![Ein Stapel mit Fortschritts-Trackern, jeder mit eigenem Fortschrittsbalken und Prozentwert.](images/manual/{lang}/06-progress-tracker.jpg){.phone}

Was ein Tracker tut und was nicht:

- Er wird **nie wiederholt.** Tracker bleiben außerhalb jeder
  Wiederholungssitzung, von „Heute“, der Zahl fälliger Karten, den
  Stufen in den Statistiken und von „Karten vorlesen“.
- Er **zählt nicht für deine Serie.** Niemand fragt dich ab, also gibt
  es nichts zu zählen.
- Er **zählt für die Beherrschung des Stapels.** Eine Karteikarte trägt
  1 zur Beherrschung des Stapels bei, wenn ihre letzte Bewertung Gut
  oder Leicht war. Ein Tracker trägt seinen eigenen Fortschritt bei:
  60 % ergeben 0,6. Ein Stapel, der nur Tracker enthält, zeigt ihren
  durchschnittlichen Fortschritt als Beherrschung.
<!-- VERIFY: the in-app intro string trackerIntroPoint3Text says trackers "never affect deck mastery", but DeckStatistics.masteryIncludingTrackers (used by the card list and BackgroundStatsActor) blends them in. The manual follows the code; one of the two should be aligned. -->

::: gotcha
#### Tracker beruhen auf Selbsteinschätzung

Ein Tracker sagt genau das, was du ihm sagst, nicht mehr. Das ist der
Sinn der Sache, bedeutet aber auch: Ein Tracker auf 100 % hebt die
Beherrschung eines Stapels genauso stark an wie eine Karte, die du
wirklich kannst. Sei ehrlich mit dem Regler.
:::

Fortschritts-Tracker sind eine Pro-Funktion. Ohne Pro trägt der
Menüpunkt ein Schloss und öffnet den Pro-Bildschirm. Vorhandene Tracker
bleiben sicher erhalten. An ihrer Stelle zeigt der Stapel eine einzelne
Zeile mit der Zahl seiner Tracker, und sie kommen zurück, sobald Pro
wieder aktiv ist.

## Abgelegte Karten {#retire}

Eine Karte **abzulegen** („Das kann ich, hör auf, mich abzufragen“)
nimmt sie aus „Fällig“ und „Schwierig“ heraus, ohne ihren Verlauf zu
löschen. Erklärt wird das in Kapitel 2. Für die Planung merk dir zwei
Dinge:

- Eine abgelegte Karte behält ihr Intervall, ihre Leichtigkeit und ihr
  Fälligkeitsdatum. Reaktivierst du sie, macht sie genau dort weiter, wo
  sie aufgehört hat.
- Eine abgelegte Karte zählt weiterhin für die Beherrschung, aber nicht
  mehr für die Dringlichkeit oder die Zahl fälliger Karten.

## Kurzübersicht {#reference}

| Einstellung oder Wert | Wo | Voreinstellung |
|---|---|---|
| Erste Schritte (Nochmal / Schwer / Gut / Leicht) | fest eingebaut | 5 Min. / 20 Min. / 1 Tag / 4 Tage |
| Anfängliche Leichtigkeit | fest eingebaut | 2,5 (Bereich 1,3–3,5) |
| Wiederholung / Gemeistert | fest eingebaut | Intervall ≥ 7 / ≥ 30 Tage |
| [Karten pro Sitzung]{.ui} | Einstellungen › Verhalten | 20 |
| [Neue Karten pro Tag]{.ui} | Einstellungen › Verhalten | 10 |
| [Intelligente Planung]{.ui} (Pro) | Einstellungen › Verhalten | aus |
| Wiederholungstempo | Einstellungen › Wiederholungstempo | Gleichmäßig |
| [Lernpriorität]{.ui} | Interesse bearbeiten / Stapel bearbeiten / Wiederholungspriorität | 75 %, Stapel übernehmen |
| Zurückstellen | Wiederholungsbildschirm, Uhrsymbol | — |
| Vorschlag zum Ablegen | Ergebnisbildschirm | Intervall ≥ 90 Tage und 4-mal in Folge richtig |
