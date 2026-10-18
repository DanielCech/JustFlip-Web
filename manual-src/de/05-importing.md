---
slug: importing
number: 5
title: Stapel importieren
description: "Anki-Pakete, CSV-Tabellen, KI-erstellte und kuratierte Stapel in JustFlip! importieren, verstehen, was beim erneuten Import derselben Datei passiert, und ein Interesse zum Teilen oder Aufbewahren exportieren."
---

# Stapel importieren {#importing number="5"}

::: lede
Du musst nicht jede Karte selbst eintippen. JustFlip! liest Anki-Pakete,
Tabellen und Stapeldateien, die eine KI geschrieben hat, und es kann ein
Interesse als ein einziges Archiv wieder herausgeben. Dieses Kapitel
zeigt, wo welche Art von Datei hineinkommt, was dabei mitkommt — und die
wenigen Regeln, die entscheiden, ob ein Import Karten hinzufügt oder
deine vorhandenen aktualisiert.
:::

::: inthischapter
- Den Import auf iPhone, iPad und Mac finden
- Einen Anki-Stapel übernehmen und den Importbericht lesen
- Aus einer Tabelle einen Stapel machen
- Von einer KI erstellte Stapel oder Stapel aus der kuratierten Bibliothek importieren
- Wissen, was ein erneuter Import bewirkt, bevor du ihn startest
- Ein Interesse zum Aufbewahren oder Teilen exportieren
:::

Importieren gehört zur kostenlosen Version, wie alles in diesem Kapitel.

## Wo du importierst {#where}

Jeder Import beginnt auf dem Bildschirm **Interessen**. JustFlip! erkennt
die Datei an ihrem Namen und Inhalt, deshalb nehmen dieselben Wege jedes
Format an.

| Auf | So geht's |
|---|---|
| iPhone, iPad | Das Menü [Hinzufügen oder importieren]{.ui} (die Ablagetaste) → [Karten importieren]{.ui} |
| iPhone, iPad | In Dateien, Mail oder Safari: die Datei teilen oder mit JustFlip! öffnen |
| iPad, Mac | Dateien auf die Liste der Interessen ziehen — sie zeigt [Zum Importieren ablegen]{.ui} |
| Mac | **Ablage › Import Cards…** (⇧⌘I) oder **Ablage › Import Interest Archive…** |
| Überall | Ein Interesse gedrückt halten → [Karten importieren]{.ui}: eine CSV- oder Anki-Datei direkt in dieses Interesse |
| Überall | [Hinzufügen oder importieren]{.ui} → [Karten einfügen]{.ui}: kopierte Karten (siehe [Karten einfügen](#paste)) |

Der Hauptimport nimmt mehrere Dateien auf einmal an, auch ganze Ordner:
Jede unterstützte Datei darin wird importiert.

![Das Menü „Hinzufügen oder importieren“ auf dem Bildschirm „Interessen“, mit „Karten importieren“ und „Karten einfügen“.](images/manual/{lang}/05-import-menu.jpg){.phone}

### Was aus welcher Datei wird

| Datei | Was sie ist | Wo sie landet |
|---|---|---|
| `.apkg`, `.colpkg` | Ein Anki-Stapel oder eine Anki-Sammlung | In einem Interesse deiner Wahl; ein Stapel pro Anki-Stapel |
| `.csv` | Eine Tabelle, eine Karte pro Zeile | In einem Interesse deiner Wahl; immer als neuer Stapel |
| `.flashcards` | Eine Stapeldatei, nur Text — von einer KI erstellt oder kuratiert | Im Interesse, das in der Datei genannt ist |
| `.flashcards.zip` | Eine Stapeldatei mit Bildern und Ton oder ein exportiertes Interesse | Im Interesse, das in der Datei genannt ist |

Bei Anki- und CSV-Dateien fragt JustFlip! zuerst, wohin die Karten
sollen. Das Blatt [Karten importieren]{.ui} hat ein Menü
[Interesse]{.ui} — samt [Neues Interesse…]{.ui} — und bei einer Tabelle
ein Feld [Stapelname]{.ui}. Tippe auf [Weiter]{.ui}.

Legt der Import ein neues Interesse an, bietet das Blatt außerdem
[In die Gerätesuche aufnehmen]{.ui} an. Damit legst du fest, ob seine
Karten in Spotlight erscheinen können (Kapitel 8).

## Anki-Stapel {#anki}

JustFlip! importiert Ankis Stapelpakete (`.apkg`) und Sammlungspakete
(`.colpkg`), aus alten wie aktuellen Anki-Versionen. Wähle in Anki
**Datei › Exportieren**, nimm *Anki-Stapelpaket* und schließe die Medien
ein. Importiere die Datei dann wie oben beschrieben.

Soll auch dein Lernfortschritt mitkommen, setze beim Export zusätzlich das Häkchen bei *Include scheduling information* (Planungsinformationen einschließen).

Das Versprechen ist einfach: **Der Lerninhalt kommt mit, Ankis
Darstellung nicht.** Deine Wörter, Bilder, Töne, Formeln und Tags kommen
an. Auch dein Lernfortschritt kann mitkommen. Ankis Gestaltung und Skripte bleiben zurück.

### Was mitkommt

- **Jede Karte.** Jede Anki-Karte wird zu einer JustFlip!-Karte.
  Notiztypen mit Vorder-/Rückseite, umgekehrter und optional umgekehrter
  Karte funktionieren alle.
- **Lückentext-Notizen, aufgeteilt.** Eine Notiz mit `{{c1::…}}`,
  `{{c2::…}}` und `{{c3::…}}` ergibt drei JustFlip!-Karten, eine pro
  Nummer, genau wie in Anki. Jede Karte lässt ihre eigene Nummer als
  Lücke und zeigt die anderen ausgefüllt. Ein Hinweis wie
  `{{c1::Paris::capital}}` bleibt erhalten.
- **Bilder**, im Text, in der Reihenfolge, in der sie vorkommen. Der
  Alternativtext eines Anki-Bildes wird zu dem, was die Stimme dafür
  sagt.
- **Ton.** Jedes `[sound:…]` auf einer Seite bleibt erhalten, in
  Reihenfolge (Kapitel 4).
- **Bildabdeckung**, aus Ankis eigenem Werkzeug und aus dem älteren
  Add-on Image Occlusion Enhanced. Beides wird zu nativen
  Bildabdeckungs-Karten.
- **Formatierung**: fett, kursiv, Listen, Links, kleine Tabellen,
  Mathematik sowie tief- und hochgestellter Text.
- **Tags.**
- **Stapelstruktur, abgeflacht.** Aus `Languages::Spanish::Verbs` wird
  ein einziger Stapel namens **Languages / Spanish / Verbs**, denn
  JustFlip! kennt keine Unterstapel.
- **Dein Lernfortschritt**, wenn der Export Planungsinformationen enthält. Jede gelernte Karte behält Intervall, Leichtigkeit, Fälligkeitsdatum und Fehler, und ihr Wiederholungsverlauf kommt mit. Ein Stapel, den du seit Jahren lernst, macht also dort weiter, wo er war. Ausgesetzte Karten kommen als abgelegt an. Schalte im Importblatt [Anki-Fortschritt übernehmen]{.ui} aus, wenn alle Karten neu beginnen sollen.

### Was in Anki bleibt

- **Ankis FSRS-Parameter.** Wenn du in Anki FSRS nutzt, werden seine Parameter und der Gedächtniszustand der Karten nicht importiert. Eine Karte behält Intervall, Fälligkeitsdatum und Wiederholungsverlauf und bekommt die Standard-Leichtigkeit.
- **Fortschritt aus geteilten Stapeln.** Ein heruntergeladener Stapel, mit dem du nie gelernt hast, bringt keinen Verlauf mit, seine Karten beginnen also als neu.
- **Gestaltung.** Eigenes CSS, Schriften und Farben werden
  weggelassen.
- **Code.** JavaScript und Add-ons laufen nie und werden nicht
  übernommen.
- **Alles Online.** Bilder aus dem Netz, eingebettete Seiten und iframes
  werden nicht abgerufen.
- **Video.**
- **Markierungen.** Ankis Kartenmarkierungen werden nicht übernommen.
- **Die wiederholte Frage.** Anki zeigt die Frage auf der Antwortseite
  noch einmal; JustFlip! dreht die Karte an Ort und Stelle um, deshalb
  fällt diese Kopie weg. Lückentextkarten sind die Ausnahme, denn dort
  *ist* der wiederholte Satz die Antwort.

::: gotcha
#### Eine Anki-Lückentext-Notiz sind mehrere Karten

Ein Stapel, der in Anki 300 Notizen zeigt, kann als 700 Karten
ankommen. Das ist keine Verdopplung: Jede Lückennummer ist eine Karte, in
Anki wie in JustFlip!. Die Zahl im Importblatt ist die Zahl der Karten.
:::

::: gotcha
#### Importierte Karten haben keine Sprache

Anki speichert nicht, in welcher Sprache ein Feld ist, deshalb beginnt
jede importierte Karte mit der [Sprache]{.ui} **Keine** — und eine Seite
ohne Sprache wird nie vorgelesen (Kapitel 3). Wenn du dir einen
importierten Stapel anhören willst, stell die Sprache auf seinen Karten
ein.
:::

### Das Importblatt {#anki-report}

Importierst du eine einzelne Anki-Datei über das Menü [Hinzufügen oder
importieren]{.ui}, aus Dateien oder per Ziehen, öffnet sich
[Aus Anki importieren]{.ui}. Es liest zuerst das Paket —
[Paket wird geprüft…]{.ui}, [Wird entpackt…]{.ui},
[Karten werden gelesen…]{.ui} — und zeigt dann [Bereit zum Lernen]{.ui}:
wie viele Anki-Stapel, [Karten]{.ui}, [Bilder]{.ui} und [Audio]{.ui} es
gefunden hat.

Enthält das Paket Karten, die du schon gelernt hast, zeigt das Blatt außerdem [Anki-Fortschritt übernehmen]{.ui}, standardmäßig eingeschaltet. Dann behalten diese Karten ihren Anki-Zeitplan und Lernverlauf. Schaltest du es aus, beginnen alle Karten von vorn.

![Das Blatt „Aus Anki importieren“: die Zusammenfassung, „Was sich geändert hat“ und „Optionen“.](images/manual/{lang}/05-anki-report.jpg){.phone}

Unter [Was sich geändert hat]{.ui} steht der Importbericht: ein
schlichter Satz für alles, was du wissen solltest, bevor du loslegst.
Zum Beispiel:

- *240 Karten behalten ihren Anki-Zeitplan und Lernverlauf.* (Bei einem geteilten Stapel oder mit ausgeschaltetem [Anki-Fortschritt übernehmen]{.ui}: *Die Karten starten hier von vorn. Dein Anki-Lernverlauf bleibt in Anki.*)
- *Antworten wiederholen die Frage nicht mehr — JustFlip zeigt sie beim
  Umdrehen weiter an.*
- *12 Bilder konnten nicht gelesen werden und wurden weggelassen.*
- *3 Karten hatten nichts auf ihrer Frageseite und wurden übersprungen.*
- *2 Felder stammten aus Anki-Add-ons und wurden weggelassen.*

Nichts davon wird *in* deine Karten geschrieben. Ein fehlendes Bild
fehlt einfach, und der Bericht ist die einzige Stelle, die das sagt.

Unter [Optionen]{.ui} stehen die [Stapel]{.ui}, die der Import anlegen
wird, und eine Wahl — [Falls du diese Karten schon hast]{.ui}:

| Option | Karten, die du aus diesem Paket schon importiert hast |
|---|---|
| [Neue Kopie hinzufügen]{.ui} | Bleiben unberührt; das ganze Paket wird noch einmal als neue Stapel hinzugefügt. Die Voreinstellung |
| [Vorhandene überspringen]{.ui} | Bleiben, wie sie sind; nur neue Karten kommen hinzu |
| [Aktualisieren, Fortschritt behalten]{.ui} | Text, Bilder und Tags werden aus der Datei aufgefrischt; dein Lernplan bleibt unberührt |

JustFlip! merkt sich, aus welcher Anki-Notiz und -Karte jede importierte
Karte stammt, deshalb klappt der Abgleich auch, nachdem du die Frage in
JustFlip! bearbeitet hast. Tippe auf [Importieren]{.ui}, um die Karten
hinzuzufügen.

::: tip
#### Einen Stapel aktualisieren, den du noch in Anki lernst

Arbeite weiter in Anki, exportiere erneut und importiere mit
[Aktualisieren, Fortschritt behalten]{.ui}. Korrekturen kommen mit, neue
Notizen werden hinzugefügt, und dein JustFlip!-Lernplan bleibt deiner.
:::

::: gotcha
#### Der Schnellimport überspringt die Wahl

Zwei Anki-Wege importieren sofort, ohne Blatt und immer als neue Kopie:
[Karten importieren]{.ui} aus dem Menü eines Interesses und mehrere auf
einmal ausgewählte Anki-Dateien. Um vorhandene Karten zu überspringen
oder zu aktualisieren, importiere jeweils eine Datei über das Menü
[Hinzufügen oder importieren]{.ui}.
:::

## Tabellen (CSV) {#csv}

Eine CSV-Datei ist der einfachste Weg, eine Liste nach JustFlip! zu
bringen: eine Vokabelliste, ein Glossar, ein Export aus einer anderen
App. Jede Zeile ist eine Karte; eine Spalte ist die Frage, eine andere
die Antwort.

```csv
Question,Answer
el perro,the dog
el gato,the cat
"la casa, el hogar",the home
```

Nach [Weiter]{.ui} zeigt [CSV importieren]{.ui} eine Live-Vorschau:

- **[Trennzeichen]{.ui}** — Komma, Semikolon, senkrechter Strich oder
  Tabulator. JustFlip! errät es aus den ersten Zeilen; ändere es, wenn
  die Spalten falsch aussehen.
- **[Erste Zeile als Kopfzeile überspringen]{.ui}** — anfangs aus.
  Schalte es ein, wenn deine erste Zeile Spaltentitel enthält.
- **[Spaltenzuordnung]{.ui}** — wähle, welche Spalte
  [Vorderseite (Frage)]{.ui} und welche [Rückseite (Antwort)]{.ui} ist.
  Andere Spalten werden ignoriert.
- **[Vorschau]{.ui}** — die ersten Zeilen so, wie sie gelesen werden.

Tippe auf **Importieren (N)**, wenn alles stimmt.

![Die Vorschau „CSV importieren“ mit Trennzeichen, Kopfzeilen-Schalter, Spaltenzuordnung und einer Vorschau der Zeilen.](images/manual/{lang}/05-csv-preview.jpg){.phone}

Ein paar Details, die dir einen zweiten Versuch ersparen:

- Setze ein Feld in doppelte Anführungszeichen, wenn es das
  Trennzeichen oder einen Zeilenumbruch enthält; ein Anführungszeichen
  darin schreibst du als `""`.
- Der Text kann das Karten-Markup aus Kapitel 3 verwenden — fett,
  Mathematik, Lückentext. Ein `{{c1::…}}` in einer CSV-Zelle bleibt
  **eine** Karte mit all ihren Lücken; CSV-Karten werden nie so
  aufgeteilt wie Anki-Lückentext-Notizen.
- Eine Zeile mit leerer Frage wird übersprungen. Eine Zeile mit leerer
  Antwort wird als Karte ohne Antwort importiert.
- CSV-Karten haben keine Sprache, keine Bilder und keine Tags.

::: gotcha
#### Die Kopfzeile wird zur Karte

[Erste Zeile als Kopfzeile überspringen]{.ui} ist anfangs aus. Vergisst
du es, werden deine Spaltentitel zu einer Karte namens „Question“ mit der
Antwort „Answer“. Prüfe vor dem Import die erste Zeile der Vorschau.
:::

::: gotcha
#### Eine CSV aktualisiert nie etwas

Jeder CSV-Import legt einen **neuen** Stapel an, auch wenn schon ein
Stapel mit demselben Namen existiert — am Ende hast du zwei. Um Karten
zu ändern, die du aus einer Tabelle importiert hast, bearbeite sie in
JustFlip! oder lösche den alten Stapel, bevor du die korrigierte Datei
importierst.
:::

## Mit KI erstellte Stapel {#ai}

Am leichtesten lernst du mit einem Stapel aus *deinem* Material: deinen
Notizen, einem Buchkapitel, der Mitschrift einer Vorlesung. JustFlip!
spricht selbst mit keiner KI. Stattdessen gibt die Website deiner KI die
Anleitung, wie man eine JustFlip!-Stapeldatei schreibt, und du
importierst das Ergebnis.

| Seite | Für | Du bekommst |
|---|---|---|
| [KI-Prompt](https://just-flip.app/ai-prompt.html) | Jede Chat-KI — ChatGPT, Claude, Gemini | Eine reine Text-Datei `.flashcards` |
| [KI-Skill](https://just-flip.app/ai-skill.html) | Einen Coding-Agenten, der Dateien auf deinem Computer lesen kann | Eine `.flashcards.zip` mit Bildern und Ton |

Eine Chat-KI kann nur Text zurückgeben, deshalb verlangt die Seite
„KI-Prompt“ einen reinen Textstapel. Ein Coding-Agent kann deine lokalen
Bilder und Audiodateien öffnen und sie in ein ZIP packen, samt
Beschreibungen, Lizenzen und sogar Bildabdeckung.

Importiere die Datei wie jede andere. Die Datei nennt ihr eigenes
Interesse und ihre Stapel, deshalb gibt es kein Einrichtungsblatt:
JustFlip! verwendet ein Interesse mit diesem Namen, wenn du eines hast,
und legt es sonst an. Eine Stapeldatei kann auch die Sprache jedes
Stapels festlegen, sodass die Karten gleich vorgelesen werden können.

::: tip
#### Erst prüfen, dann lernen

Eine KI kann sich mit voller Überzeugung irren. Überfliege einen neuen
Stapel einmal vor deiner ersten Wiederholung und korrigiere oder lösche
alles Zweifelhafte. Zehn Minuten Bearbeiten sind besser als wochenlanges
Wiederholen einer falschen Antwort.
:::

## Karten einfügen {#paste}

Manchmal liegen die Karten schon in deiner Zwischenablage — die Antwort
einer Chat-KI, eine Spalte aus einer Tabelle, eine Liste in Notizen.
Wähle [Hinzufügen oder importieren]{.ui} → [Karten einfügen]{.ui}. Wie
der Hinweis [So funktioniert es]{.ui} erklärt, kopierst du die Karten —
eine pro Zeile, Frage und Antwort durch ein Komma getrennt — und tippst
auf „Einfügen“. JustFlip! findet die Karten in dem, was du kopiert hast,
auch im Codeblock einer Chat-KI, und ignoriert den Text drumherum.

Eine eingefügte Liste durchläuft dieselben Blätter
[Karten importieren]{.ui} und [CSV importieren]{.ui} wie eine CSV-Datei
und landet in einem Stapel namens **Eingefügte Karten**, sofern du ihn
nicht umbenennst. Eine eingefügte Stapeldatei — das JSON, das eine KI
mit der Seite „KI-Prompt“ schreibt — wird wie eine `.flashcards`-Datei
importiert. Nichts verlässt dein Gerät.

## Kuratierte Stapel {#curated}

Die [Stapel-Seite](https://just-flip.app/decks/) der Website ist eine
kleine Bibliothek fertiger Stapel — Sprachen, Musik, Mathematik,
Programmieren und Naturwissenschaften — in jeder Sprache, die die App
spricht. Tippe auf **Stapel herunterladen** und öffne die Datei dann mit
JustFlip!. Es sind ganz normale `.flashcards`- und
`.flashcards.zip`-Dateien, deshalb gilt alles unter
[Dieselbe Datei erneut importieren](#reimport) auch für sie.

## Dieselbe Datei erneut importieren {#reimport}

Stapeldateien — `.flashcards` und `.flashcards.zip` von einer KI, aus
der kuratierten Bibliothek oder aus deinem eigenen Editor — sind dafür
gemacht, immer wieder importiert zu werden. Korrigiere einen Tippfehler
in der Datei, füge zehn Karten hinzu, importiere sie: Dein Stapel wird
aktualisiert statt verdoppelt.

So ordnet JustFlip! die Inhalte zu:

1. **Das Interesse** ist das mit dem Interessennamen aus der Datei.
   Groß- und Kleinschreibung und überzählige Leerzeichen spielen keine
   Rolle.
2. **Der Stapel** ist der in diesem Interesse mit *exakt* dem
   Stapelnamen aus der Datei.
3. **Jede Karte** wird über ihren **Fragetext** zugeordnet, exakt so,
   wie er geschrieben ist. Ein Treffer wird an Ort und Stelle
   aktualisiert — Antwort, Bilder und Töne werden aus der Datei
   ersetzt, sein Fortschritt bleibt erhalten. Eine Karte ohne Treffer
   wird hinzugefügt.

Karten, die in deinem Stapel stehen, aber nicht in der Datei, bleiben
unberührt; ein Import löscht nie etwas.

::: gotcha
#### Zwei Karten, eine Frage

Weil Karten über ihre Frage zugeordnet werden, werden zwei Karten in
einem Stapel mit demselben Fragetext — „Benenne diesen Ton.“,
„Übersetze:“ — zu einer einzigen Karte, selbst bei einem ganz neuen
Import. Gib jeder Karte ihre eigene Frage oder verschiebe die gemeinsame
Aufforderung in den Stapelnamen.
:::

::: gotcha
#### Reine Bildkarten kommen jedes Mal dazu

Eine Karte ganz ohne Fragetext — nur mit einem Bild — lässt sich nicht
zuordnen und wird daher nie zusammengeführt. So bleibt ein Stapel mit
„Was ist das?“-Bildern intakt, aber es bedeutet auch, dass ein erneuter
Import der Datei diese Karten ein zweites Mal hinzufügt. Lass in einer
Stapeldatei das Feld `q` bei solchen Karten ganz weg: Ein leeres
`"q": ""` zählt als Fragetext und wird mit jedem anderen leeren
zusammengeführt.
:::

::: gotcha
#### Deine Änderungen überleben keinen erneuten Import

Beim Aktualisieren einer Karte wird ihr Inhalt durch den aus der Datei
ersetzt. Hast du in JustFlip! eine Antwort korrigiert, korrigiere sie
auch in der Datei — sonst bringt der nächste Import die alte Antwort
zurück. Und benennst du den Stapel in JustFlip! um, findet ihn die Datei
nicht mehr: Der nächste Import legt einen neuen Stapel unter dem alten
Namen an.
:::

Anki-Pakete folgen ihrer eigenen Regel — der Wahl im
[Importblatt](#anki-report). CSV-Dateien werden überhaupt nicht
zugeordnet.

## Exportieren und teilen {#export}

Um ein Interesse mitzunehmen, halte es gedrückt (Rechtsklick auf dem
Mac) und wähle [Archiv exportieren]{.ui}. Auf dem Mac erledigt
**Ablage › Export Interest…** (⇧⌘E) dasselbe für das ausgewählte
Interesse. JustFlip! schreibt eine Datei,
*Name des Interesses*.flashcards.zip, und fragt, wo sie gesichert werden
soll.

Das Archiv enthält alles aus diesem Interesse: jeden Stapel und jede
Karte, die Bilder und Töne und **deinen vollständigen
Lernfortschritt**. Sichere es in Dateien oder iCloud Drive, schick es per
AirDrop oder versende es wie jede andere Datei.

Ein importiertes Archiv stellt genau dieses Interesse wieder her.
Interesse, Stapel und Karten werden über die versteckten Kennungen
zugeordnet, die das Archiv mitbringt, nicht über ihre Namen, deshalb
wird nichts verdoppelt — auch umbenannte Stapel werden gefunden.

::: gotcha
#### Ein Archiv bringt seinen Lernplan mit

Ein importiertes Archiv setzt den Lernplan jeder Karte auf den im Archiv
gespeicherten. Importierst du ein altes Archiv über ein Interesse, das
du noch lernst, springen diese Karten dahin zurück, wo sie beim Export
standen. Dein Wiederholungsverlauf wird zusammengeführt, nicht
verdoppelt. Karten, die du nach dem Export hinzugefügt hast, bleiben —
und Karten, die du danach gelöscht hast, kommen zurück.
:::

::: note
#### Einen Stapel mit jemandem teilen

Ein Archiv enthält auch deinen Fortschritt, und wer es importiert,
bekommt deinen Lernplan für diese Karten. Für eine saubere Kopie teile
stattdessen die ursprüngliche Stapeldatei — die `.flashcards` oder
`.flashcards.zip`, die du importiert hast.
:::

Im selben Menü steht [Statistiken exportieren]{.ui}, als
[Tabelle (CSV)]{.ui} oder [Vollständige Daten (JSON)]{.ui}. Diese
Dateien sind zum Lesen und Auswerten gedacht, nicht zum
Zurückimportieren (Kapitel 9). Eine Sicherung deiner ganzen Bibliothek
beschreibt Kapitel 10.

## Wenn ein Import dich überrascht {#troubleshooting .cheatsheet}

| Was du siehst | Warum, und was zu tun ist |
|---|---|
| Weniger Karten als Zeilen oder Notizen | Karten mit demselben Fragetext wurden zusammengeführt (Stapeldateien), oder Zeilen mit leerer Frage wurden übersprungen (CSV) |
| Mehr Karten als Anki-Notizen | Jede Lückennummer ist eine eigene Karte — das ist so gewollt |
| Der Stapel ist doppelt da | Eine CSV legt immer einen neuen Stapel an; ein Anki-Import mit [Neue Kopie hinzufügen]{.ui} fügt neue Stapel hinzu |
| Reine Bildkarten sind doppelt | Sie lassen sich beim erneuten Import nicht zuordnen; lösche die überzähligen oder importiere in einen neuen Stapel |
| Importierte Karten bleiben stumm | Anki- und CSV-Karten haben keine Sprache — stell eine auf den Karten ein (Kapitel 3) |
| Die erste Karte ist „Question / Answer“ | Schalte [Erste Zeile als Kopfzeile überspringen]{.ui} ein |
| Der ganze Text steht in einer Spalte | Ändere das [Trennzeichen]{.ui} in der CSV-Vorschau |
| Ein Bild fehlt | Sieh im Anki-Bericht nach, und denk daran, dass SVG nicht unterstützt wird (Kapitel 4) |
| Meine Korrektur ist nach einem Import verschwunden | Die Version aus der Datei hat sie ersetzt — korrigiere auch die Datei |
| Der Lernplan einer Karte ist zurückgesprungen | Du hast ein älteres Archiv dieses Interesses importiert |
