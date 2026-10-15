---
slug: accessibility-themes
number: 11
title: Bedienungshilfen und Designs
description: "Wie JustFlip! mit VoiceOver, größerem Text, „Bewegung reduzieren“, „Kontrast erhöhen“ und der Sprachsteuerung zusammenarbeitet, wie du Design und Textgröße wählst und wie du Karten schreibst, mit denen alle lernen können."
---

# Bedienungshilfen und Designs {#accessibility-themes number="11"}

::: lede
JustFlip! baut auf den Bedienungshilfen auf, die du auf deinem iPhone,
iPad und Mac ohnehin schon nutzt. In der App musst du nichts
einschalten. VoiceOver, größerer Text, „Bewegung reduzieren“ und
„Kontrast erhöhen“ funktionieren einfach. Dazu hat JustFlip! eine eigene
Textgröße und fünf Designs, damit sich die App angenehm lesen lässt und
so aussieht, wie es dir gefällt.
:::

::: inthischapter
- Sehen, welchen Systemeinstellungen JustFlip! folgt und was jede bewirkt
- Mit VoiceOver wiederholen: umdrehen, bewerten und Lücken hören
- Die Textgröße einstellen, für das ganze Gerät oder nur für JustFlip!
- Ein Design wählen: JustFlip Hell, JustFlip Dunkel, Nebel, Nebel Dunkel oder System
- Karten schreiben, die für alle Lernenden funktionieren, wie auch immer sie sehen und hören
:::

## Sie folgt deinen Einstellungen {#system-settings}

JustFlip! hat keinen Barrierefreiheitsmodus, den du einschalten müsstest.
Die App liest die Einstellungen unter **Einstellungen › Bedienungshilfen**
auf deinem Gerät und passt sich ihnen an. Das bewirkt jede davon:

| Systemeinstellung | Was JustFlip! tut |
|---|---|
| VoiceOver | Liest jede Karte, jede Taste und jedes Diagramm vor, mit benannten Aktionen zum Umdrehen und Bewerten |
| Größerer Text | Vergrößert den Text in der App, auch den Text auf deinen Karten |
| Fettgedruckter Text | Stellt den Text der App kräftiger dar |
| Bewegung reduzieren | Die Karte dreht sich beim Umdrehen nicht mehr, und andere Animationen werden ruhiger |
| Kontrast erhöhen | Wechselt zu kontrastreicheren Farben und ergänzt Umrandungen, wo Farbe allein nicht genügt |
| Ohne Farbe unterscheiden | Ergänzt Anzeigen, die sonst nur Farbe nutzen, um Symbole, Punkte und Umrandungen |
| Sprachsteuerung | Jede Taste reagiert auf ihren sichtbaren Namen, die Karte zusätzlich auf ein paar weitere Ausdrücke |

Die einzige Bedienungshilfe in der App selbst ist deine **Textgröße**
unter **Einstellungen › Darstellung**. Mehr dazu findest du unter
[Größerer Text](#larger-text).

::: note
#### Unser öffentlicher Barrierefreiheits-Report

Unter https://just-flip.app/accessibility/ führen wir einen ehrlichen,
ausführlichen Bericht darüber, was umgesetzt ist und was noch getestet
wird, Gerät für Gerät. Apples Angaben zur Barrierefreiheit
(Accessibility Nutrition Labels) im App Store veröffentlichen wir
Kategorie für Kategorie, jeweils erst, nachdem eine Kategorie die Tests
auf echten Geräten bestanden hat.
:::

## VoiceOver {#voiceover}

VoiceOver liest JustFlip! so vor wie Apples eigene Apps. Listen,
Formulare und Einstellungen verwenden Standard-Bedienelemente, und
zusammengehörige Elemente wie eine Stapelzeile oder ein Statistikwert
werden als ein Element vorgelesen statt als Folge von Bruchstücken.

### Karten und Wiederholungen

Eine Karte ist für VoiceOver **ein einziges Element**. VoiceOver liest
die Seite vor, die du gerade siehst, und ein Hinweis sagt dir, dass du
zum Umdrehen doppeltippen kannst. Nach dem Umdrehen sagt VoiceOver
„Frage“ oder „Antwort“, damit du immer weißt, auf welcher Seite du bist.

Streiche auf einer Karte nach oben oder unten, um ihre Aktionen zu
erreichen:

- [Karte umdrehen]{.ui} dreht die Karte um.
- [Vollständigen Inhalt anzeigen]{.ui} öffnet eine Karte, die zu lang
  ist, in einem eigenen Fenster, in dem du alles lesen kannst.
- [Bild im Vollbild anzeigen]{.ui} oder [Diagramm im Vollbild
  anzeigen]{.ui} öffnet ein Bild oder Diagramm in voller Größe, wo du
  zoomen kannst.

Die Bewertungstasten werden mit der Bewertung zuerst und den Details
danach vorgelesen: die Bewertung, dann wann die Karte zurückkäme, dann
wie oft du diese Bewertung in dieser Sitzung gewählt hast. Nach jeder
Bewertung sagt dir VoiceOver, wo du stehst, zum Beispiel „Karte 4 von
20“, und am Ende der Sitzung kündigt es [Übung abgeschlossen]{.ui} an.

:::: pair
```markdown
The capital of France
is {{c1::Paris}}.
```

::: {.card side="question" spoken="The capital of France is blank."}
The capital of France is [[…]]{.blank}.
:::
::::

**Lücken werden nie verraten.** Auf der Frageseite sagt VoiceOver
„Lücke“ an der Stelle der verborgenen Wörter oder liest den Hinweis vor,
falls die Lücke einen hat. Die Antwort kommt erst nach dem Umdrehen.

Den Rest der Karte liest VoiceOver so vor wie die eigene Stimme von
JustFlip!:

- **Gesprochene Hinweise** werden verwendet. `[iOS]{eye oh ess}` wird
  als „eye oh ess“ gelesen (Kapitel 3).
- **Formeln** werden aus ihrem gesprochenen Hinweis gelesen, oder aus
  ihrem TeX-Quelltext, wenn es keinen Hinweis gibt.
- **Diagramme** werden über ihre Beschriftungen gelesen, nicht über ihre
  Pfeile.
- **Tabellen** werden Zeile für Zeile und Zelle für Zelle gelesen.
- **Bilder** werden über ihre Beschreibung gelesen (siehe
  [Barrierefreie Karten schreiben](#accessible-cards)). Ein Bild ohne
  Beschreibung wird einfach als „Bild“ vorgelesen.
- **Markierungen** werden mit ihrem Namen vorgelesen, zum Beispiel „Rote
  Markierung“.

### Listen und Aktionen

Auch die Menüs, die du durch Gedrückthalten öffnest, haben
VoiceOver-Aktionen, du brauchst die Geste also nicht. Streiche auf einer
Interessenzeile nach oben oder unten für [Interesse bearbeiten]{.ui},
[Karten importieren]{.ui}, [Archiv exportieren]{.ui}, [Statistiken
exportieren]{.ui} und [Löschen]{.ui}. Eine Stapelzeile bietet [Stapel
bearbeiten]{.ui} und [Stapel löschen]{.ui}. Im Tag-Feld bestätigt
VoiceOver jedes Tag, das du hinzufügst oder entfernst.

In den Statistiken lassen sich die Diagramme Punkt für Punkt erkunden:
Jeder Punkt wird mit Datum und Wert vorgelesen.

Auf einer Bildabdeckungs-Karte bietet das Bild [Vergrößern]{.ui},
[Verkleinern]{.ui} und [Zoom zurücksetzen]{.ui} als Aktionen anstelle
des Aufziehens und Zusammenziehens.

### Auf der Apple Watch

Die Watch liest jede Karte als „Frage“ oder „Antwort“ vor, gefolgt von
ihrem Text. Bewerten heißt auf der Watch normalerweise, die Karte
gedrückt zu halten (Kapitel 8). VoiceOver kann nicht gedrückt halten,
deshalb werden die vier Bewertungen auch als Aktionen auf der Karte
angeboten: Streiche nach oben oder unten, um Nochmal, Schwer, Gut oder
Leicht zu wählen.

## Größerer Text {#larger-text}

Ab Werk verwendet JustFlip! die Textgröße, die du für dein ganzes Gerät
unter **Einstellungen › Bedienungshilfen › Anzeige & Textgröße ›
Größerer Text** eingestellt hast. Tasten, Listen, Statistiken und der
Text auf deinen Karten wachsen alle mit.

Du kannst JustFlip! aber auch eine eigene Größe geben, unabhängig vom
Rest des Geräts. Geh zu **Einstellungen › Darstellung**:

![Der Abschnitt „Darstellung“ in den Einstellungen: das Designmenü, der Schalter „Systemtextgröße übernehmen“ und der Schieberegler „Textgröße“ mit seiner Vorschau.](images/manual/{lang}/11-appearance-settings.jpg){.phone}

- [Systemtextgröße übernehmen]{.ui} ist standardmäßig eingeschaltet.
  JustFlip! verwendet dann die Größe des Geräts.
- Der Schieberegler [Textgröße]{.ui} wählt die Größe nur für JustFlip!.
  Sobald du ihn bewegst, wird [Systemtextgröße übernehmen]{.ui} für dich
  ausgeschaltet. Die Zeile darunter, „Karten und Listen sehen so aus.“,
  zeigt die Größe, die du gerade wählst.

Der Schieberegler hat zehn Stufen, von der kleinsten Systemgröße bis zur
dritten Bedienungshilfen-Größe. Die beiden größten Stufen, die du in iOS
einstellen kannst, funktionieren in JustFlip! weiterhin, wenn sie aus
deiner Geräteeinstellung kommen. Der Schieberegler bietet sie nur nicht
an. Bei diesen Größen passen die meisten Karten nicht mehr auf die
Karte, und du müsstest fast jede in einem eigenen Fenster öffnen.

Der letzte Schritt der Willkommenstour bietet denselben Schieberegler,
damit du schon vor deiner ersten Wiederholung eine angenehme Größe
einstellen kannst.

::: gotcha
#### Großer Text wird nicht passend verkleinert

In der Standardgröße verkleinert JustFlip! eine lange Karte ein wenig,
damit sie passt (Kapitel 3). Bei größerer Textgröße passiert das nicht.
Deine Karte wird genau in der Größe dargestellt, die du eingestellt
hast. Was nicht passt, blendet unten aus, und die Taste **•••** (oder
die VoiceOver-Aktion [Vollständigen Inhalt anzeigen]{.ui}) öffnet den
Rest. Passiert das bei den meisten deiner Karten, teil sie in kürzere
auf. Das tut deinem Gedächtnis sowieso gut.
:::

::: note
#### Woran noch gearbeitet wird

Die Unterstützung für größeren Text ist fast vollständig, wurde aber
noch nicht in jeder Größe auf Geräten getestet. Die eine bekannte
Lücke: In den allergrößten Stufen kann der Überschrift und den
Bewertungstasten rund um die Karte auf dem Wiederholungsbildschirm der
Platz ausgehen. Die Karte selbst ist in Ordnung. Wenn du die größten
Stufen brauchst, stell die eigene Textgröße von JustFlip! eine oder zwei
Stufen kleiner ein, dann bleibt der Wiederholungsbildschirm aufgeräumt.
:::
<!-- VERIFY: Readiness doc (2026-07-19) says "at AX3 and above the Review/Testing chrome (screen title, response buttons) overflows the screen with nothing to scroll". Confirm this is still open before publishing. -->

## Bewegung, Schriftstärke und Kontrast {#visual}

### Bewegung reduzieren

Ist **Bewegung reduzieren** eingeschaltet, dreht sich die Karte beim
Umdrehen nicht mehr in 3D. Sie wechselt die Seite an Ort und Stelle,
etwas schneller. Auch die übrigen Bewegungen in der App werden ruhiger:
Karten, die nach einer Bewertung davonfliegen, das Schimmern beim Laden
von Listen, die Illustrationen der Willkommenstour, sich füllende
Fortschrittsbalken und die Ergebnisse der Wiederholung.

### Fettgedruckter Text

**Fettgedruckter Text** macht den Text der App kräftiger, genau wie
überall sonst auf deinem Gerät. Kräftigerer Text braucht mehr Platz,
deshalb berücksichtigt JustFlip! das, wenn es berechnet, ob eine Karte
passt.
<!-- VERIFY: card body text is drawn by CardMarkupView from an explicit UIFont; confirm Bold Text actually thickens card question/answer text, not only system-styled UI text. -->

### Kontrast erhöhen

Ist **Kontrast erhöhen** eingeschaltet, wechselt JustFlip! zu
kontrastreicheren Versionen seiner Farben, hell wie dunkel. An einigen
Stellen kommen Umrandungen hinzu, wo sonst allein die Farbe die
Information tragen würde:

- die **Markierung** einer Karte bekommt eine Umrandung um ihre Farbe,
- auf einer **Bildabdeckungs**-Karte wird der Bereich, nach dem gefragt
  wird, zusätzlich hervorgehoben,
- **Diagramme** verwenden auf der Karte und im Vollbild ebenfalls die
  kontrastreicheren Farben.

Jedes Farbpaar, das die App für Text verwendet, wird gegen seinen
Hintergrund gemessen, in Hell, in Dunkel und in beiden Varianten von
„Kontrast erhöhen“, und jedes erreicht ein Kontrastverhältnis von
mindestens 4,5:1.

### Ohne Farbe unterscheiden

Ist **Ohne Farbe unterscheiden** eingeschaltet, bekommen die kleinen
Anzeigen, die Farbe verwenden, zusätzlich eine Form:

- die kleinen Anzeigen dafür, wie dringend eine Karte ist und wie du sie
  zuletzt bewertet hast, wechseln zu unterscheidbaren Symbolen,
- die Aktivitäts-Heatmap in den Statistiken ergänzt einen, zwei oder drei
  Punkte für geringe, mittlere und hohe Aktivität und umrandet das
  Quadrat für heute,
- Bereiche bei der Bildabdeckung werden zusätzlich hervorgehoben, wie bei
  „Kontrast erhöhen“.

Manches verlässt sich nie auf Farbe, ganz gleich, wie du es eingestellt
hast: Die Bewertungstasten tragen immer eine Beschriftung und ein
Symbol, und die ausgewählte Markierung in der Markierungsauswahl ist mit
einem Ring und einem Häkchen gekennzeichnet.

## Sprachsteuerung und Tastaturen {#voice-control}

Die **Sprachsteuerung** verwendet die Namen, die du auf dem Bildschirm
siehst, also funktionieren „Tippe auf Nochmal“, „Tippe auf Gut“ oder
„Tippe auf Einstellungen“ wie erwartet. Einige Bedienelemente reagieren
auf zusätzliche Ausdrücke:

| Sag | Bewirkt |
|---|---|
| „Tippe auf Karte umdrehen“, „Tippe auf Karte drehen“, „Tippe auf Andere Seite anzeigen“ oder „Tippe auf Umdrehen“ | Dreht die Karte um |
| „Tippe auf Zurückstellen“ oder „Tippe auf Schlummern“ | Öffnet während einer Wiederholung das Menü zum Zurückstellen |

Die Sprachsteuerung wurde noch nicht auf jedem Gerät durchgängig
getestet. Am wenigsten getestet sind die Schieberegler und die Menüs,
die du durch Gedrückthalten öffnest. Funktioniert ein Name dort nicht,
klappt „Nummern einblenden“ immer.

**Mit einer Tastatur** brauchst du für eine Wiederholung gar keinen
Zeiger: Die Leertaste dreht die Karte um, und die Tasten 1 bis 4
bewerten sie, auf dem Mac und auf einem iPad mit Hardwaretastatur. Die
vollständige Übersicht steht in Kapitel 8. JustFlip! verwendet
durchgehend Standardtasten, -menüs und -schalter, aber der **Voller
Tastaturzugriff** wurde noch nicht durchgängig getestet.

## Designs {#themes}

Ein Design ist die Farbpalette, in der die ganze App gezeichnet wird.
Wähle eines unter **Einstellungen › Darstellung › Design**. Das Menü zeigt
ein kleines Farbmuster des aktuellen Designs:

| Design | So sieht es aus |
|---|---|
| [System]{.ui} | Die goldene JustFlip!-Palette, hell oder dunkel passend zu deinem Gerät. Die Standardeinstellung. |
| [JustFlip Hell]{.ui} | Die goldene Palette, immer hell, egal wie dein Gerät eingestellt ist |
| [JustFlip Dunkel]{.ui} | Die goldene Palette, immer dunkel |
| [Nebel]{.ui} | Eine ruhige, mineralische helle Palette mit klarem Wasserblau, Wacholder und Salbei |
| [Nebel Dunkel]{.ui} | Nebel auf tiefen, tintenfarbenen Flächen |

![Die fünf Designs nebeneinander: System, JustFlip Hell, JustFlip Dunkel, Nebel und Nebel Dunkel.](images/manual/{lang}/11-theme-swatches.jpg){.shot width=80%}

Die Änderung wirkt sofort: Die ganze App färbt sich um, sobald du ein
Design wählst, ohne Neustart. Jedes Design hat Hell oder Dunkel schon
eingebaut, deshalb gibt es keinen eigenen Hell-/Dunkel-Schalter. Wenn
die App dem Dunkelmodus des Geräts folgen soll, wähle [System]{.ui}.

::: note
#### Wohin Designs nicht reichen

Das Design gilt für die App selbst. Das Widget auf dem Home-Bildschirm
behält das JustFlip!-Gold und folgt der Hell- oder Dunkel-Einstellung
des Geräts. Die App auf der Apple Watch ist immer dunkel. Die Bilder auf
deinen Karten werden in jedem Design genau so gezeigt, wie sie sind.
:::

::: gotcha
#### Ein festgelegtes Design ignoriert den Dunkelmodus

[JustFlip Hell]{.ui} und [Nebel]{.ui} bleiben hell, auch wenn dein Gerät
bei Sonnenuntergang in den Dunkelmodus wechselt, und die beiden dunklen
Designs bleiben bei Tageslicht dunkel. Folgt JustFlip! deinem
Dunkelmodus nicht, sieh unter **Einstellungen › Darstellung › Design**
nach. Nur [System]{.ui} folgt ihm.
:::

## Barrierefreie Karten schreiben {#accessible-cards}

Die App kann nur vorlesen, was auf deinen Karten steht. Mit diesen
Gewohnheiten funktioniert ein Stapel für alle, die ihn nutzen, auch für
dich, wenn du beim Spazierengehen mit „Karten vorlesen“ zuhörst.

1. **Beschreibe jedes Bild.** Hat eine Seite ein Bild, zeigt der Editor
   ein Feld [Bildbeschreibung]{.ui} („Bild beschreiben (optional)“).
   VoiceOver liest es anstelle des Bildes vor. Beschreibe, was das Bild
   zeigt: „Ein kleiner brauner Vogel mit roter Brust auf einem
   Zaunpfosten“ sagt viel mehr als „Vogelfoto“. Auf einer Karte „Welcher
   Vogel ist das?“ lässt du den Namen weg, sonst verrät die Beschreibung
   die Antwort (Kapitel 4). Die Beschreibung macht außerdem eine Karte,
   die nur aus einem Bild besteht, in Spotlight auffindbar (Kapitel 8).
   Und sie reist mit dem Stapel mit, wenn du ihn exportierst und teilst.
2. **Leg die Sprache jeder Seite fest.** Die Auswahl [Sprache]{.ui}
   bestimmt, welche Stimme die Seite über die Lautsprechertaste und mit
   „Karten vorlesen“ vorliest (Kapitel 7). Eine Seite ohne Sprache wird
   von der eigenen Stimme von JustFlip! nie vorgelesen.
3. **Ergänze gesprochene Hinweise, wo das Vorlesen danebengeht.** Ein
   Hinweis wie `$c^2${c squared}` korrigiert, was die Stimme von
   JustFlip! sagt, *und* was VoiceOver vorliest, in einem Schritt.
4. **Gib Lücken einen Hinweis, wenn der Zusammenhang dünn ist.** Mit
   Hinweis lesen VoiceOver und die Stimme den Hinweis vor statt nur
   „Lücke“.
5. **Lass nicht die Farbe die Bedeutung tragen.** Markierungen werden
   mit Namen vorgelesen, aber was jede Farbe *bedeutet*, legst du fest.
   Wenn „Rot“ für „Prüfung nächste Woche“ steht, vermerke das auch in
   einem Tag. Tags sind Text, also lassen sie sich vorlesen und
   durchsuchen.
6. **Beschrifte deine Diagramme gut.** Ein Diagramm wird über seine
   Beschriftungen vorgelesen, also sagt „Wiederholung starten → Karte
   fällig?“ mehr als „A → B“.
7. **Halte Karten kurz.** Eine kurze Karte passt auch bei großem Text
   und auf die Apple Watch, und man merkt sie sich auch leichter.

::: gotcha
#### Die Sprache ist für die Stimme, nicht für VoiceOver

Die Auswahl [Sprache]{.ui} steuert die eigene Stimme von JustFlip!: die
Lautsprechertaste und „Karten vorlesen“. VoiceOver liest Karten mit der
Stimme, die du in den Einstellungen von VoiceOver festgelegt hast. Bei
einer Karte in einer anderen Sprache ist die Lautsprechertaste auf der
Karte der zuverlässigste Weg, sie richtig ausgesprochen zu hören.
:::
<!-- VERIFY: CardMarkupView sets accessibilityLabel from speech text with no accessibilityLanguage / speech-language attribute (grep found none). Confirm on device that VoiceOver does not switch to the card's language. -->
