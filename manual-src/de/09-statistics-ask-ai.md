---
slug: statistics-ask-ai
number: 9
title: Statistiken und KI fragen
description: "Wie JustFlip! fällige Karten, Beherrschung, Serien und Behaltensrate misst, wie du den Bildschirm „Statistiken“ ehrlich liest und wie KI fragen aus deinem Wiederholungsverlauf einen Lernbericht für deinen eigenen KI-Tutor macht."
---

# Statistiken und KI fragen {#statistics-ask-ai number="9"}

::: lede
Jede Bewertung, die du vergibst, ist ein kleines Indiz dafür, wie dein
Gedächtnis arbeitet. JustFlip! bewahrt sie alle auf, und dieses Kapitel
zeigt dir, wie du sie liest: die Zahlen, die du jeden Tag siehst, den
ausführlicheren Bildschirm „Statistiken“ und KI fragen, das aus dem, was
du kannst und was dir immer wieder entwischt, ein Briefing für die
Chat-KI deiner Wahl macht.
:::

::: inthischapter
- Fällige Karten, Beherrschung und Serien verstehen, und wie jede Zahl berechnet wird
- Behaltensrate, Aktivitäts-Heatmap, Stapel-Rangliste und Vorschau lesen
- „Besser lernen“ von „einfach mehr wiederholen“ unterscheiden
- ChatGPT, Claude oder Gemini mit einem Lernbericht von KI fragen briefen
- Deine Statistiken als Tabelle oder als vollständige JSON-Daten exportieren
:::

## Die Zahlen, die du jeden Tag siehst {#everyday}

Du brauchst den Bildschirm „Statistiken“ nicht, um zu wissen, wie es
läuft. Drei Zahlen begegnen dir überall in der App, und alle sind
kostenlos.

| Zahl | Wo du sie siehst | Was sie bedeutet |
|---|---|---|
| **Fällig** | Heute, Stapelzeilen, Kartenliste | Karten, deren nächstes Wiederholungsdatum erreicht ist |
| **Beherrschung** | Interessen- und Stapelzeilen | Der Anteil der Karten, deren *letzte* Bewertung Gut oder Leicht war |
| **Serie** | Heute, als „*N* Tage in Folge“ | Tage in Folge mit mindestens einer Wiederholung |

### Fällig

Eine Karte ist fällig, wenn ihr geplantes Wiederholungsdatum erreicht
ist. Heute zählt die fälligen Karten aus all deinen Interessen zusammen,
dazu die neuen Karten, die der Tag erlaubt, und gibt dir eine
Schätzung wie „Etwa 6 Min.“. Ist nichts fällig, zeigt Heute [Alles
erledigt]{.ui} und einen kleinen Streifen [Nächste 7 Tage]{.ui}, damit
du siehst, was morgen auf dich zukommt. Wie Fälligkeitsdaten festgelegt
werden, ist Thema von Kapitel 6.

### Beherrschung

Die Beherrschung eines Stapels zählt jede Karte, deren **letzte**
Bewertung Gut oder Leicht war, und teilt durch die Zahl der Karten im
Stapel. Karten, die du nie wiederholt hast, zählen mit, und zwar als
noch nicht beherrscht. Ein frisch importierter Stapel beginnt also bei
0 %. Die Beherrschung eines Interesses ist der Durchschnitt der
Beherrschung seiner Stapel, wobei jeder Stapel gleich viel zählt, egal
wie groß er ist.

::: note
#### Beherrschung geht in beide Richtungen

Weil nur die letzte Bewertung zählt, ist die Beherrschung eine
Momentaufnahme, keine Trophäe. Drückst du Nochmal bei einer Karte, die
du letzte Woche noch wusstest, zählt diese Karte nicht mehr, bis du sie
wieder richtig hast. Genau darum geht es: Die Zahl sagt dir, was du
*heute* kannst.
:::

### Serie

Deine Serie zählt die Tage, an denen du mindestens eine Karte wiederholt
hast. Eine Karte genügt. Außerdem bekommst du einen Gnadentag: Hast du
heute noch nicht wiederholt, bleibt die Serie von gestern bestehen, bis
der Tag vorbei ist.

JustFlip! ist nachsichtig, wenn mal ein Tag ausfällt. Bis zu **zwei
verpasste Tage** innerhalb deiner aktuellen Serie werden automatisch
überbrückt, sodass ein einzelner voller Tag nicht eine monatelange
Gewohnheit auslöscht. Die überbrückten Tage selbst zählen nicht mit.
Möchtest du einen Schubs, bevor eine Serie reißt, schalte [Serien-Rettung]{.ui}
unter **Einstellungen › Erinnerungen** ein. Sie schickt abends eine
Erinnerung, wenn du an diesem Tag noch nicht wiederholt hast.

## Statistiken öffnen (Pro) {#opening}

Der vollständige Bildschirm „Statistiken“ ist eine **Pro**-Funktion.
Öffne ihn über das Menü [Einstellungen]{.ui} (das Zahnradsymbol) oben in
der Liste der Interessen und wähle dann [Statistiken]{.ui}. Ohne Pro
trägt der Menüpunkt ein Schloss und öffnet stattdessen den
Pro-Bildschirm. Auch eine kostenlose Pro-Testphase schaltet ihn frei.

![Der Bildschirm „Statistiken“: die Auswahl des Interesses, die vier Übersichtskacheln und die Phasen der Sammlung.](images/manual/{lang}/09-statistics-overview.jpg){.phone}

Die Statistiken betrachten immer **ein Interesse auf einmal**. Wähle es
oben unter [Umfang]{.ui}. Alles darunter, von den Übersichtskacheln bis
zur Vorschau, fasst alle Stapel dieses Interesses zusammen. So bleiben
die Zahlen über die Zeit vergleichbar. Um zwei Themengebiete zu
vergleichen, schalte die Auswahl hin und her.

Der Bildschirm aktualisiert sich nach dem Wiederholen von selbst, du
kannst ihn also auf iPad oder Mac neben einer Lernsitzung offen lassen.

### Die Übersichtskacheln

| Kachel | Was sie zeigt |
|---|---|
| [Reife Behaltensrate]{.ui} | Wie oft du dich im Zeitraum [Letzte 30 Tage]{.ui} an *reife* Karten erinnert hast (siehe [Behaltensrate](#retention)) |
| [Wiederholungen]{.ui} | Wie viele Wiederholungen du im Zeitraum [Letzte 7 Tage]{.ui} gemacht hast, heute eingeschlossen |
| [Aktuelle Serie]{.ui} | Deine Serie in diesem Interesse, dazu deine bisher längste |
| [Jetzt fällig]{.ui} | Jetzt fällige Karten, dazu wie viele morgen fällig werden |

Die Serie wird hier genauso berechnet wie bei Heute, aber nur aus
Wiederholungen im ausgewählten Interesse. Sie kann kürzer sein als deine
Serie bei Heute, die jedes Interesse mitzählt.

### Phasen der Sammlung

Unter [Sammlung]{.ui} wird jede Karte des Interesses einer von vier
Phasen zugeordnet:

| Phase | Untertitel | Bedeutung |
|---|---|---|
| [Neu]{.ui} | Noch zu entdecken | Nie wiederholt |
| [Lernend]{.ui} | Gedächtnis aufbauen | Wird gelernt oder nach einem Fehler neu gelernt |
| [Wiederholung]{.ui} | Festigen | Im regulären Wiederholungszyklus |
| [Gemeistert]{.ui} | Langzeitgedächtnis | Intervalle von 30 Tagen und mehr |

Eine gesunde Sammlung wandert über die Wochen nach rechts. Wie eine
Karte von Phase zu Phase wechselt, erklärt Kapitel 6.

::: gotcha
#### Jetzt fällig ist nicht dasselbe wie Heute

[Jetzt fällig]{.ui} zählt **jede** Karte im Interesse, deren
Wiederholungsdatum erreicht ist, auch Karten, die du zurückgestellt
hast. Heute bietet nur an, was in eine Sitzung passt: Zurückgestellte
Karten bleiben draußen, und [Karten pro Sitzung]{.ui} sowie [Neue Karten
pro Tag]{.ui} begrenzen den Rest. Eine große Zahl bei Jetzt fällig neben
einer kurzen Sitzung bei Heute ist normal und kein Fehler.
:::

## Behaltensrate: gesamt und reif {#retention}

Die Behaltensrate beantwortet eine einzige Frage: *Als die Karte
drankam, wusstest du sie noch?* Eine Wiederholung gilt als erinnert,
wenn du sie mit **Gut oder Leicht** bewertet hast. Nochmal und Schwer
zählen beide als nicht erinnert.
<!-- VERIFY: whether a "Seen" response is stored as a review and so also counts as not remembered in retention, reviews and streaks. -->

Das Diagramm [Reife Behaltensrate]{.ui} zeigt diese Quote pro Tag. Den
Zeitraum wählst du mit dem Segmentschalter: [7D]{.ui}, [30D]{.ui},
[90D]{.ui} oder [Alle]{.ui}.

![Das Diagramm der Behaltensrate über 90 Tage. Jeder Punkt ist der Anteil erinnerter reifer Wiederholungen an einem Tag.](images/manual/{lang}/09-retention-chart.jpg){.shot width=80%}

**Reif** ist das entscheidende Wort. Eine Wiederholung gilt als reif,
wenn die Karte bereits ein Intervall von **mindestens 30 Tagen** erreicht
hatte, bevor du sie beantwortet hast. Neue Karten lassen sich leicht
„erinnern“: Du hast sie vor einer Minute gesehen. Eine Karte, die du
zuletzt vor einem Monat gesehen hast, ist der echte Test für dein
Langzeitgedächtnis, und genau das zeigt die reife Linie.

In den ersten Wochen hast du noch keine reifen Wiederholungen. Das
Diagramm greift dann auf die **gesamte Behaltensrate** zurück, also jede
Wiederholung jeder Karte, und der Untertitel darunter sagt das auch:
„Alle Wiederholungen werden angezeigt – das Reife-Signal erscheint,
sobald Karten 30-Tage-Intervalle erreichen.“ Sobald deine ersten Karten
die 30-Tage-Grenze überschreiten, wechselt das Diagramm von selbst zum
reifen Signal. Gibt es im Zeitraum überhaupt keine Wiederholungen,
siehst du [Noch nicht genug reife Wiederholungen]{.ui}.

::: tip
#### Lies den Trend, nicht den Punkt

Ein einzelner Tag kann bei drei Wiederholungen zwischen 60 % und 100 %
schwanken. Wähle [30D]{.ui} oder [90D]{.ui} und achte auf den Verlauf
der Linie. Eine flache Linie zwischen 80 und 99 % bedeutet, dass dein
Plan seine Arbeit macht.
:::

## Konsistenz: Serien und die Heatmap {#consistency}

Der Bereich [Konsistenz]{.ui} zeigt deine Serien [Aktuell]{.ui} und
[Längste]{.ui} für das Interesse, darüber eine Heatmap der
**letzten 12 Wochen**. Jedes Quadrat ist ein Tag, und ein dunkleres
Quadrat bedeutet mehr Wiederholungen an diesem Tag, gemessen an deinem
aktivsten Tag im Zeitraum. Das Quadrat von heute trägt einen kleinen
Punkt.

![Die Konsistenz-Heatmap: 12 Wochen Wiederholungstage, dunklere Quadrate für aktivere Tage.](images/manual/{lang}/09-heatmap.jpg){.shot width=80%}

Achte auf Lücken und Häufungen, nicht auf die Farbe. Zehn Minuten jeden
Tag schlagen eine Stunde jeden Sonntag, denn verteilte Wiederholung lebt
davon, Karten nahe an ihrem Fälligkeitsdatum zu sehen.

::: note
#### „Längste“ kann kürzer aussehen als „Aktuell“

[Längste]{.ui} ist die beste Folge *aufeinanderfolgender* Tage, die du je
hattest, ohne die zwei überbrückten Tage, die [Aktuell]{.ui} schützen.
Eine aktuelle Serie, die einen verpassten Tag überstanden hat, kann
deshalb länger sein als deine „längste“. Beide Zahlen stimmen, sie
messen nur leicht unterschiedliche Dinge.
:::

## Stapelvergleich {#deck-comparison}

[Stapelvergleich]{.ui} ordnet die Stapel des Interesses nach
Behaltensrate, mit dem **niedrigsten oben**. Dieser Balken zählt jede
Wiederholung, die du je in dem Stapel gemacht hast, nicht nur die der
letzten 30 Tage, und ändert sich daher langsam. Unter dem Diagramm
stehen bei den ersten vier Stapeln die Zahl der jetzt fälligen Karten
und die Gesamtzahl der Fehler, also wie oft eine Karte, die du konntest,
wieder vergessen wurde.

Beim obersten Stapel bringt deine Mühe am meisten. Meist steckt eines
von drei Dingen dahinter:

1. **Die Karten sind unklar.** Zwei mögliche Antworten oder zu viel auf
   einer Karte. Kapitel 3 zeigt, wie du das behebst.
2. **Der Stoff baut auf etwas auf, das du nicht gelernt hast.** Genau
   dafür ist [KI fragen](#ask-ai) da.
3. **Du hetzt.** Du hast mehr neue Karten hinzugefügt, als du verdauen
   kannst. Senke [Neue Karten pro Tag]{.ui} für eine Weile.

## Vorschau bevorstehender Wiederholungen {#forecast}

Die Vorschau ist ein Balkendiagramm, das zeigt, wie viele Karten an
jedem der nächsten [7D]{.ui} oder [30D]{.ui} fällig werden, ausgehend
vom aktuellen Plan. Bereits überfällige Karten kommen zum Balken von
heute hinzu, damit ein Rückstand nie aus dem Blick gerät. Abgelegte
Karten bleiben außen vor.

Eine Spitze in zwei Wochen ist nach einem großen Import oder einer
Woche mit vielen neuen Karten normal. Siehst du eine kommen, verteile
sie: Wiederhole in den Tagen davor jeweils ein bisschen mehr.

::: gotcha
#### Die Vorschau kennt nur den heutigen Plan

Jede Bewertung verschiebt das Fälligkeitsdatum einer Karte, die Vorschau
ist also eine Hochrechnung, kein Versprechen. Karten, die du falsch
beantwortest, kommen früher wieder und machen den morgigen Tag voller,
als das Diagramm gesagt hat.
:::

## Die Zahlen ehrlich lesen {#reading}

Man kann sich leicht produktiv fühlen und trotzdem wenig lernen. Der
Bildschirm „Statistiken“ ist dafür gemacht, eine schwierigere Frage zu
beantworten: *Lerne ich besser, oder wiederhole ich nur mehr?* Ein paar
Faustregeln:

- **Mehr Wiederholungen, sinkende reife Behaltensrate.** Du fügst
  schneller hinzu, als du festigen kannst. Mach bei neuen Karten
  langsamer, dein Rückstand wird es dir danken.
- **Reife Behaltensrate stabil, Wiederholungen stabil.** Das ist das
  Ziel. Der Plan macht seine Arbeit, bleib dran.
- **Hohe Gesamt-Behaltensrate, aber noch kein reifes Signal.** Alles in
  Ordnung. Deine Karten haben einfach noch keine 30-Tage-Intervalle
  erreicht. Gib ihnen einen Monat.
- **Ein Stapel weit unter den anderen.** Dieser Stapel hat ein
  Kartenproblem oder ein Problem mit Vorwissen, kein Problem mit
  Willenskraft. Siehe [Stapelvergleich](#deck-comparison).
- **Eine lange Serie mit blassen Quadraten.** Eine Karte am Tag hält die
  Serie am Leben, aber nicht den Plan. Behalte auch [Jetzt fällig]{.ui}
  im Auge.

::: gotcha
#### Bewerte ehrlich, sonst lügen die Zahlen

Jede Zahl in diesem Kapitel beruht auf deinen Bewertungen. Drückst du
Gut bei einer Karte, die du nur halb wusstest, blähst du Beherrschung,
Behaltensrate und Intervalle gleichzeitig auf, und die Karte kommt
später wieder, als sie sollte. Schwer ist kein Versagen, sondern eine
Information.
:::

## KI fragen: Brief deinen eigenen Tutor {#ask-ai}

Nach ein paar Wochen weiß JustFlip! etwas, das keine Chat-KI weiß:
welche deiner Karten du beherrschst und welche dir immer wieder
entwischen. **KI fragen** macht daraus einen fertigen Prompt, einen
Lernbericht mit Anweisungen, den du in ChatGPT, Claude, Gemini oder
einen anderen Assistenten einfügst.

### Wo du es findest

| Von | Wähle | Umfang |
|---|---|---|
| Einer Karte in der Kartenliste (lange drücken oder Rechtsklick) | [KI fragen]{.ui} | Diese Karte |
| Der Funkeln-Taste oben in einer Wiederholung | [KI zur Karte fragen]{.ui} | Die angezeigte Karte |
| Der Funkeln-Taste oben in einer Wiederholung | [KI zum Stapel fragen]{.ui} **(Pro)** | Der ganze Stapel dieser Karte |
| Einem Stapel in der Stapelliste (lange drücken oder Rechtsklick) | [KI fragen]{.ui} **(Pro)** | Der ganze Stapel |
| Dem Ergebnisbildschirm nach einer Wiederholung | [KI fragen]{.ui} | Die Karten dieser Sitzung |

Einzelne Karten und Sitzungsberichte sind kostenlos. Stapelberichte
sind **Pro**: Ohne Pro zeigen diese Menüpunkte ein Schloss und öffnen
den Pro-Bildschirm.

![Das Fenster „KI fragen“: Prompt kopieren und Prompt sichern, die Links unter „In einem KI-Chat öffnen“ und die Prompt-Vorschau.](images/manual/{lang}/09-ask-ai-sheet.jpg){.phone}

### Was in den Bericht kommt

Ein **Stapelbericht** sortiert deine Karten nach ihrem Verlauf:

- **Karten, mit denen du kämpfst**: Karten mit mindestens einem Fehler,
  einer niedrigen Leichtigkeit oder solche, die noch gelernt werden. Sie
  stehen mit der schwächsten zuerst in der Liste, jede mit ihrer Antwort
  und einer Zeile Statistik, zum Beispiel „failed 4 of 6 review(s) · 2
  lapse(s) · ease 1.8 · avg 21s to answer“. Der Bericht enthält bis zu
  25 davon.
- **Karten, die du beherrschst**: nur mit der Frage aufgeführt, als
  Kontext, damit die KI deine Zeit nicht damit verschwendet, sie dir
  erneut beizubringen (bis zu 60).
- **Ein frischer Stapel** ohne Verlauf wird Karte für Karte aufgelistet,
  und die KI wird gebeten, das Thema zu erschließen und seine Grundlagen
  zu vermitteln.

Ein **Kartenbericht** umfasst eine Karte: ihre Frage und Antwort und
deinen Verlauf mit ihr. Ein **Sitzungsbericht** listet die Karten der
gerade beendeten Wiederholung, jeweils mit der Bewertung, die du
vergeben hast.

### Worum er die KI bittet

Die Anweisungen folgen in jedem Umfang derselben Idee:

1. **Die Voraussetzungen beibringen.** Deine Fehler deuten oft auf
   Hintergrundwissen hin, das der Stapel nicht abdeckt, deshalb wird die
   KI gebeten, es von Grund auf zu erklären.
2. **Die Missverständnisse erklären**, die deine falschen Antworten
   vermuten lassen.
3. **Quellen empfehlen**, jeweils mit direktem Link, bevorzugt offizielle
   Dokumentation und seriöse Nachschlagewerke.
4. **Optional neue Karteikarten schreiben** für die Lücken, als CSV
   (`question,answer`) in einem Codeblock, bereit zum Import.

Der Prompt selbst ist auf Englisch, weil Chat-Modelle englischen
Anweisungen am zuverlässigsten folgen. Er bittet die KI aber, **in der
Sprache deines Geräts zu antworten** und neue Karteikarten in der
Sprache des Stapels zu schreiben.

### Abschicken

Das Fenster bietet [Prompt kopieren]{.ui} und [Prompt sichern]{.ui},
das eine `.txt`-Datei speichert. Unter [In einem KI-Chat öffnen]{.ui}
öffnen die Zeilen ChatGPT, Claude und Gemini den Assistenten mit einer
neuen Unterhaltung, in seiner App, falls du sie installiert hast, sonst
im Browser. Deinen Prompt nehmen sie nicht mit: erst kopieren, dann
öffnen, dann einfügen. Die [Prompt-Vorschau]{.ui} ganz unten zeigt genau,
was du gleich teilst.

::: tip
#### Den Kreis schließen

Wenn die KI dir neue Karten schreibt, kopiere ihre Antwort, geh zurück
zur Liste der Interessen und wähle [Hinzufügen oder importieren]{.ui} ›
[Karten einfügen]{.ui}. JustFlip! findet das CSV in der Antwort, auch in
einem Codeblock, und zeigt dir eine Vorschau. Du wählst den Stapel, bevor
irgendetwas gespeichert wird.
:::

::: note
#### JustFlip! spricht nie mit einer KI

In KI fragen steckt keine KI. JustFlip! setzt nur Text auf deinem Gerät
zusammen und kontaktiert nie einen KI-Dienst. Der Bericht verlässt die
App erst, wenn **du** ihn kopierst oder speicherst. Was danach passiert,
ist eine Sache zwischen dir und dem Dienst, in den du ihn einfügst. Lies
also zuerst die Vorschau, wenn deine Karten etwas Privates enthalten.
:::

::: gotcha
#### Reine Bildkarten kommen als Platzhalter an

Der Bericht ist reiner Text. Eine Karte ohne Text auf einer Seite, nur
mit Bild oder Audio, erreicht die KI als „(no text — this card uses an
image, audio, or PDF)“. Fortschritts-Tracker bleiben in Stapelberichten
ganz außen vor. Besteht ein Stapel überwiegend aus Bildern, ergänze bei
den wichtigen Karten eine Zeile Text.
:::

## Deine Statistiken exportieren {#export}

Für eigene Tabellen und Diagramme kannst du die vollständigen
Statistiken eines Interesses exportieren. Der Export ist kostenlos.

- **iPhone und iPad:** Drücke lange auf ein Interesse in der Liste der
  Interessen und wähle [Statistiken exportieren]{.ui}, dann [Tabelle
  (CSV)]{.ui} oder [Vollständige Daten (JSON)]{.ui}. Wähle, wo die Datei
  gespeichert werden soll.
- **Mac:** Klicke mit der rechten Maustaste auf ein Interesse, um
  dasselbe Menü zu öffnen, oder wähle ein Interesse aus und dann
  **Ablage › Export Statistics…**, was das CSV speichert.

Die Dateien werden nach dem Interesse benannt, zum Beispiel
`Spanish.flashcards-stats.csv`.

### Das CSV: eine Zeile pro Karte

| Spalte | Inhalt |
|---|---|
| `interest`, `deck` | Wo die Karte liegt |
| `question`, `answer` | Der Text der Karte |
| `state` | `unseen`, `learning`, `reviewing`, `relearning` oder `graduated` |
| `ease_factor` | Die Leichtigkeit der Karte (2,5 bei einer neuen Karte) |
| `interval_days` | Das aktuelle Intervall in Tagen |
| `due_date` | Nächste Wiederholung, als Datum und Uhrzeit nach ISO 8601 |
| `lapses` | Wie oft die Karte vergessen wurde, nachdem sie gelernt war |
| `streak` | Richtige Antworten in Folge |
| `total_reviews` | Alle erfassten Wiederholungen |
| `success_rate` | Anteil der Antworten mit Gut oder Leicht, von 0 bis 1 |
| `avg_review_time_sec` | Durchschnittliche Antwortzeit |
| `last_reviewed` | Zeitpunkt der letzten Wiederholung, leer, falls nie |

### Das JSON: alles

Der JSON-Export enthält dieselben Felder pro Karte, dazu eine
Phasenübersicht für jeden Stapel, jede Lernsitzung mit Beginn, Ende,
Kartenzahl und Erfolgsquote sowie den vollständigen **Verlauf** jeder
Karte: jede Wiederholung mit Zeitpunkt, Bewertung, Antwortzeit und dem
Intervall und der Leichtigkeit davor und danach. Nimm es, wenn du deine
eigene Vergessenskurve zeichnen willst.

::: gotcha
#### Statistik-Exporte sind eine Einbahnstraße

Eine Statistikdatei ist zum Lesen da, nicht zum Wiederherstellen.
JustFlip! kann sie nicht wieder importieren, und sie enthält keine
Bilder oder Töne. Um ein Interesse *mit* seinem Fortschritt zu
verschieben oder zu sichern, nimm stattdessen [Archiv exportieren]{.ui};
siehe Kapitel 10.
:::
