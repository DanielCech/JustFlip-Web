---
slug: media
number: 4
title: Bilder, Ton und Bildabdeckung
description: "Bilder und Ton zu JustFlip!-Karten hinzufügen, sie für VoiceOver beschreiben, ihre Quellen angeben und ein beschriftetes Diagramm in Bildabdeckungs-Karten verwandeln — dazu die Regeln, damit Medien auf jedem Gerät gut aussehen."
---

# Bilder, Ton und Bildabdeckung {#media number="4"}

::: lede
Manches lässt sich leichter merken als beschreiben: ein Vogel, ein
Akkord, ein Knochen in der Hand, die Aussprache eines Wortes. In
JustFlip! kann eine Karte ein Bild zeigen, einen Ton abspielen und — mit
der Bildabdeckung — Teile eines Diagramms verdecken, damit du dich zu
jeder einzelnen Beschriftung abfragen kannst.
:::

::: inthischapter
- Bilder aus Fotos oder der Zwischenablage hinzufügen und bestimmen, wo sie stehen
- Wissen, welchen Tab der Editor speichert, damit nichts verloren geht
- Bilder für VoiceOver beschreiben und ihre Urheber nennen
- Ton auf eine Karte legen und mehrere Spuren aus Anki abspielen
- Ein beschriftetes Diagramm in eine Reihe von Bildabdeckungs-Karten verwandeln
- Bilder vorbereiten, die scharf, klein und im Dunkelmodus sichtbar bleiben
:::

Für nichts in diesem Kapitel brauchst du JustFlip! Pro. Bilder, Ton und
Bildabdeckung funktionieren in der kostenlosen Version genauso.

## Ein Bild hinzufügen {#pictures}

Jede Seite einer Karte hat ihr eigenes Bild. Es gibt drei Wege, eines
hinzuzufügen, und sie unterscheiden sich darin, wo das Bild landet.

**Im Text.** Tippe im Tab [Text]{.ui} auf die Bildtaste ganz links in
der Formatierungsleiste ([Bild einfügen]{.ui}) und wähle ein Foto.
JustFlip! setzt die Markierung `![attachment:0]` an die Cursorposition,
und das Bild erscheint genau dort auf der Karte, zwischen den Wörtern
drumherum.

**Als ganze Seite.** Wechsle zum Tab [Bild]{.ui} und tippe auf
[Bild auswählen]{.ui}. Ohne Text füllt das Bild die Seite, zentriert und
passend skaliert. Das ist die richtige Wahl für „Was ist das?“-Karten:
eine Flagge, ein Blatt, ein Röntgenbild.

**Aus der Zwischenablage.** Kopiere irgendwo ein Bild und füge es dann
ins Textfeld ein. JustFlip! speichert das Bild selbst, nicht einen Link
auf seine Herkunft, und setzt die Markierung für dich.

![Der Tab „Bild“ im Karteneditor mit einem ausgewählten Foto und darunter den Feldern für Beschreibung und Lizenz.](images/manual/{lang}/04-image-tab.jpg){.phone}

Eine Seite enthält ein Bild. Wählst du ein anderes, ersetzt es das
alte; um ein Bild zu entfernen, öffne den Tab [Bild]{.ui} und tippe auf
[Entfernen]{.ui}.

::: tip
#### Auf dem Mac

Die Bildtaste öffnet deine Fotos-Mediathek. Ein Bild, das woanders
liegt — ein Download, ein Bildschirmfoto, ein Scan —, fügst du zuerst
zu Fotos hinzu und wählst es dann im Karteneditor aus.
:::

::: tip
#### Ein Foto für eine Karte aufnehmen

Nimm das Foto zuerst mit der Kamera-App auf und wähle es dann im
Karteneditor aus Fotos aus.
:::

### Wo ein Bild steht {#placement}

Ein Bild kann an einer von drei Stellen landen. JustFlip! entscheidet
das anhand dessen, was auf der Seite steht, nicht über eine Einstellung:

| Auf der Seite | Wohin das Bild kommt |
|---|---|
| Ein Bild und kein Text | Füllt die Seite, zentriert |
| Text mit einer Markierung `![attachment:0]` | In den Text, an die Stelle der Markierung |
| Text ohne Markierung | Unter den Text, als eigener Block |

Den dritten Fall bekommst du bei importierten Stapeln (Kapitel 5) und
bei vielen kuratierten Stapeln: Die Datei nennt ein Bild, aber der Text
enthält keine Markierung. Ein solches Bild bleibt an seinem Platz, wenn
du den Text bearbeitest, und entfernt wird es im Tab [Bild]{.ui}.

Steht die Markierung in deinem Text und du löschst sie, verschwindet das
Bild beim Speichern mit.

::: note
#### Mehrere Bilder auf einer Seite

Eine Seite, die du selbst anlegst, enthält ein Bild. Aus Anki importierte
Karten können mehrere mitbringen, jedes mit seiner eigenen nummerierten
Markierung — `![attachment:0]`, `![attachment:1]` und so weiter. Löschst
du eine Markierung, verschwindet nur dieses Bild; die anderen bleiben.
:::

Ein großes Bild auf einer Karte zeigt eine Taste [Zoomen]{.ui}. Sie
öffnet das Bild im Vollbild, wo du es mit zwei Fingern aufziehen oder
per Doppeltippen näher ansehen kannst.

## Gespeichert wird der Tab, der gerade offen ist {#tabs}

Die Tabs [Text]{.ui}, [Bild]{.ui} und [Audio]{.ui} sehen aus wie drei
Schubladen einer Seite. Eigentlich sind sie eher drei *Arten* von Seite,
und [Speichern]{.ui} sichert die, deren Tab gerade zu sehen ist:

| Gespeichert in | Was diese Seite behält |
|---|---|
| [Text]{.ui} | Den Text; ein Bild, wenn es im Text oder darunter steht; einen Ton, den die Karte schon hatte |
| [Bild]{.ui} | Das Bild; einen Ton, den die Karte schon hatte. Der Text fällt weg |
| [Audio]{.ui} | Den Ton und die Sprache der Seite. Text und Bild fallen weg |

::: gotcha
#### Vor dem Speichern zurück zu Text

Du ersetzt den Ton oder das Bild einer Karte, die auch Text hat? Nimm
die Änderung im Tab [Audio]{.ui} oder [Bild]{.ui} vor, wechsle dann
zurück zu [Text]{.ui} und tippe dort auf [Speichern]{.ui}. Speicherst du
im anderen Tab, verliert diese Seite ihren Text.
:::

Aus dieser Regel ergeben sich einfache Rezepte für gemischte Karten:

- **Text und ein Bild:** Bleib im Tab [Text]{.ui} und füge das Bild mit
  der Bildtaste der Leiste hinzu.
- **Ein Bild und ein Ton:** Wähle den Ton im Tab [Audio]{.ui} und
  speichere. Bearbeite die Karte dann erneut, wähle das Bild im Tab
  [Bild]{.ui} und speichere noch einmal.
- **Text und ein Ton:** Wähle den Ton im Tab [Audio]{.ui} und speichere.
  Bearbeite die Karte dann erneut, schreib den Text im Tab [Text]{.ui}
  und speichere.

Die zweistufigen Rezepte sind nötig, weil ein Ton auf einer *neuen*
Karte nur aus dem Tab [Audio]{.ui} gespeichert wird. Hat die Karte erst
einmal einen Ton, behalten ihn die anderen Tabs.

## Bilder beschreiben und Quellen angeben {#descriptions}

Hat eine Seite ein Bild, erscheinen darunter zwei Felder:
[Bildbeschreibung]{.ui} und [Bildlizenz]{.ui}. Beide sind optional, und
beide sind ein paar Sekunden wert.

### Die Beschreibung

VoiceOver liest die Beschreibung anstelle des Bildes vor. Ohne
Beschreibung sagt es nur „Bild“, und das verrät jemandem, der die Karte
nicht sehen kann, nichts darüber.

Beschreibe, was das Bild *zeigt*, nicht, was es *bedeutet*. Auf einer
Karte, die fragt „Welcher Vogel ist das?“, schreibst du „Ein kleiner
brauner Vogel mit roter Brust auf einem Zaunpfahl“ — nicht
„Ein Rotkehlchen“, denn das verrät die Antwort.

::: note
#### Beschreibungen und gesprochene Hinweise sind zwei verschiedene Dinge

Die Beschreibung ist für VoiceOver. Der gesprochene Hinweis aus
Kapitel 3, `![attachment:0]{a red apple}`, ist das, was die
Lautsprechertaste und Karten vorlesen sagen. Ein Bild ohne Hinweis
bleibt stumm, wenn die Karte vorgelesen wird, egal was in seiner
Beschreibung steht.
:::

### Die Lizenz

Du verwendest das Foto oder die Zeichnung eines anderen Menschen? Trage
Urheber und Lizenz in [Bildlizenz]{.ui} ein — zum Beispiel
„Foto: Erika Mustermann, CC BY 4.0“. Links in der Form
`[label](https://…)` funktionieren in diesem Feld.

Auf der Karte erscheint unten in der Fußzeile eine kleine Taste ⓘ. Ein
Tipp darauf öffnet ein Blatt mit dem vollständigen Text, sodass die
Quellenangabe für alle da ist, die sie sehen wollen, ohne die Karte zu
überladen.

![Eine Karte mit einem Foto und der Lizenztaste ⓘ in der Fußzeile; darüber das geöffnete Blatt „Bildlizenz“.](images/manual/{lang}/04-licence-sheet.jpg){.phone}

Auch kuratierte und KI-erstellte Stapel können Lizenzen mitbringen, in
ihren Feldern `q_image_license` und `a_image_license` (Kapitel 5).

## Größe, Formate und Synchronisierung {#size}

Das Bild einer Karte reist mit der Karte. Es wird in deiner Bibliothek
gespeichert und über iCloud mit jedem Gerät synchronisiert, sodass ein
Bild, das du am Mac hinzufügst, einen Moment später auf deinem iPhone
ist.

Dieser Komfort hat seinen Preis: Jedes Megabyte wird auf jedes Gerät
synchronisiert. JustFlip! hält Bilder von sich aus im Rahmen. Beim
Speichern wird ein Bild, dessen lange Seite mehr als 3.000 Pixel misst,
auf 3.000 verkleinert; ein deckendes Foto wird als JPEG gespeichert, ein
Bild mit Transparenz behält sie. Kleinere Bilder werden genau so
gespeichert, wie sie sind.

Audiodateien werden genau so gespeichert, wie du sie auswählst. Eine
dreiminütige Aufnahme kann leicht mehr wiegen als hundert Karten Text,
also kürze Clips auf den Teil, den du brauchst.

| | Funktioniert | Funktioniert nicht |
|---|---|---|
| Bilder | Alles, was deine Fotos-Mediathek anzeigt; PNG, JPEG, GIF und WebP aus Importen | SVG und andere Vektorformate |
| Ton | Dateien, die das System als Audio erkennt, etwa `.mp3`, `.m4a` und `.wav` | Video |

::: gotcha
#### Kein SVG

Vektorzeichnungen (`.svg`) können nicht auf einer Karte angezeigt
werden. Exportiere die Zeichnung zuerst als PNG — mit etwa 2.000 Pixeln
Breite und weißem Hintergrund (siehe [Bilder, die funktionieren](#good-images)).
:::

## Ton auf einer Karte {#audio}

Öffne den Tab [Audio]{.ui} und tippe auf [Audiodatei auswählen]{.ui},
um eine Datei aus Dateien auszuwählen. Der Tab zeigt dann Name und Größe
der Datei, eine Papierkorbtaste zum Entfernen und
[Audio ersetzen]{.ui}. Darunter steht die [Sprache]{.ui} der Seite.

JustFlip! nimmt nicht über das Mikrofon auf. Nimm mit Sprachmemos auf,
teile das Memo in Dateien und wähle es dort aus.

![Der Tab „Audio“ mit einer ausgewählten Audiodatei: Name, Größe, Papierkorbtaste und „Audio ersetzen“.](images/manual/{lang}/04-audio-tab.jpg){.phone}

### Wie er abgespielt wird

Nichts spielt von selbst. Was du siehst, hängt von der Seite ab:

- **Eine Seite, die nur aus Ton besteht,** zeigt eine große
  Wiedergabetaste in der Mitte der Karte.
- **Eine Seite, die auch Text oder ein Bild hat,** hat eine kleine Taste
  [Audio]{.ui} in der Fußzeile, neben der Lautsprechertaste. Während der
  Ton läuft, steht darauf [Wiedergabe]{.ui}.

Startest du den Ton, verstummt die Stimme, falls sie gerade die Karte
vorliest, und umgekehrt.

### Mehrere Spuren

Anki-Notizen haben manchmal mehr als einen Ton auf einer Seite — ein
Wort, dann einen Beispielsatz. JustFlip! behält sie alle, in ihrer
ursprünglichen Reihenfolge. Die Taste in der Fußzeile heißt dann
**Audio (2)**, **Audio (3)** und so weiter und öffnet ein Menü mit
einem Eintrag pro Spur.

::: gotcha
#### Eine Spur ersetzen ersetzt alle

Der Editor zeigt nur die erste Spur. [Audio ersetzen]{.ui} oder die
Papierkorbtaste wirkt auf *jede* Spur dieser Seite. Wenn du die
zusätzlichen Spuren behalten willst, lass den Tab [Audio]{.ui} in Ruhe.
:::

## Bildabdeckung {#occlusion}

Die **Bildabdeckung** macht aus einem Bild viele Karten. Du deckst Teile
eines Diagramms mit Formen ab; jeder abgedeckte Teil wird zu einer
eigenen Karte, die fragt: „Was steckt hier darunter?“ Schneller lernst
du keine Landkarte, keine Anatomietafel, keinen Schaltplan und keine
Grifftabelle — nichts, was ein Bild voller Beschriftungen ist.

![Der Abdeckungseditor: ein Anatomiediagramm mit Rechtecken über den Beschriftungen und darüber die Werkzeugleiste.](images/manual/{lang}/04-occlusion-editor.jpg){.shot width=80%}

### Bildabdeckungs-Karten erstellen

1. Öffne einen Stapel, tippe auf die Taste [Weitere Aktionen]{.ui}
   (•••) und wähle [Bildabdeckungs-Karten hinzufügen]{.ui}.
2. Tippe auf [Bild auswählen]{.ui} und wähle das Bild.
3. Zieh über das Bild, um einen Bereich abzudecken. Wiederhole das für
   jede Beschriftung, die du lernen willst.
4. Wähle einen Modus, ergänze bei Bedarf Text und tippe auf
   **N Karten sichern**.

Die Werkzeuge über dem Bild:

| Werkzeug | Was es tut |
|---|---|
| [Rechteck]{.ui} / [Ellipse]{.ui} | Einen neuen Bereich durch Ziehen zeichnen |
| [Auswählen]{.ui} | Einen Bereich durch Ziehen verschieben; über den Eckgriff seine Größe ändern |
| [Widerrufen]{.ui} / [Wiederholen]{.ui} | Durch deine Änderungen zurück- und vorgehen |
| [Bereich duplizieren]{.ui} | Den ausgewählten Bereich kopieren |
| [Bereich löschen]{.ui} | Den ausgewählten Bereich entfernen |
| [Bild ändern]{.ui} | Das Bild darunter austauschen |

### Zwei Modi {#occlusion-modes}

Unter [Modus]{.ui} legst du fest, wie viel vom Bild verdeckt ist,
während eine Karte ihre Frage stellt. So oder so wird jeder Bereich zu
einer eigenen Karte.

| Modus | Beim Abfragen | Am besten für |
|---|---|---|
| [Eine verbergen, eine raten]{.ui} | Nur der abgefragte Bereich ist verdeckt; alle anderen Beschriftungen siehst du | Lernen, wo sich etwas befindet, mit den Nachbarn als Hinweis |
| [Alle verbergen, eine raten]{.ui} | Alle Bereiche sind verdeckt; der abgefragte hat einen kräftigeren Rand und ein Fragezeichen | Dich richtig abzufragen, ohne dass die anderen Beschriftungen etwas verraten |

Fang mit [Eine verbergen, eine raten]{.ui} an. Sobald dir ein Bild
leichtfällt, ist ein zweiter Satz Karten mit [Alle verbergen, eine
raten]{.ui} eine gute Prüfung.

### Der Text drumherum

Unter dem Modus stehen drei optionale Felder:

- **[Überschrift (optional)]{.ui}** — erscheint auf jeder Karte über dem
  Bild. Schreib die Frage hierhin: „Benenne den Knochen.“
- **[Antwortnotizen (optional)]{.ui}** — erscheint unter dem Bild,
  sobald die Antwort aufgedeckt ist. Gut für eine Eselsbrücke oder ein
  Detail.
- **[Kommentare (optional)]{.ui}** — eine Notiz für dich selbst. Sie
  wird mit den Karten gespeichert, beim Wiederholen aber nicht
  angezeigt.

Dann gibt es noch [Bildbeschreibung]{.ui}. Wie der Editor sagt, liest
VoiceOver sie anstelle des Bildes vor, also beschreibe das Diagramm,
ohne eine Antwort zu verraten: „Das menschliche Skelett von vorn“ statt
einer Liste der Knochen.

::: gotcha
#### Abdeckungen verdecken das Bild, nicht den Text darin

Ein Bereich verdeckt genau die Fläche, die du gezeichnet hast. Ragt eine
Beschriftung aus ihrem Rechteck heraus, ist die Antwort sichtbar.
Zeichne großzügig — ein Rand um jede Beschriftung kostet nichts.
:::

### Eine Bildabdeckungs-Karte wiederholen {#occlusion-review}

Eine Bildabdeckungs-Karte dreht sich nicht um. Das Bild bleibt, wo es
ist; tippe oben auf [Antwort anzeigen]{.ui} — oder drück auf einer
Tastatur die Leertaste —, und der abgedeckte Bereich öffnet sich,
umrandet, während der Rest bleibt, wie er war. Dann bewertest du sie wie
jede andere Karte. Ein detailreiches Diagramm vergrößerst du mit zwei
Fingern.

![Eine Bildabdeckungs-Karte beim Wiederholen, vor und nach „Antwort anzeigen“.](images/manual/{lang}/04-occlusion-review.jpg){.phone}

Bildabdeckungs-Karten gehören auf iPhone, iPad und Mac zu deinen ganz
normalen Wiederholungen. Die Apple Watch lässt sie aus und sagt dir, wie
viele Karten auf deinem iPhone warten.

### Eine Bildabdeckungs-Karte bearbeiten {#occlusion-edit}

Bearbeite eine beliebige Karte des Satzes — halte sie gedrückt (oder
klicke auf dem Mac mit der rechten Maustaste) und wähle
[Karte bearbeiten]{.ui} —, und JustFlip! öffnet den Bereichseditor,
nicht den Texteditor. Dort kannst du Bereiche verschieben, hinzufügen
oder löschen, den Modus ändern, den Text oder sogar das Bild.

Bereiche, die du behältst, behalten ihren Wiederholungsverlauf. Ein
Bereich, den du hinzufügst, wird zu einer neuen Karte; ein Bereich, den
du löschst, nimmt seine Karte mit.

::: note
#### Bildabdeckung aus Anki und aus Dateien

Ankis eigene Bildabdeckungs-Notizen und das ältere Add-on Image
Occlusion Enhanced kommen beim Import des Stapels als native
Bildabdeckungs-Karten in JustFlip! an (Kapitel 5). Auch Stapeldateien,
die mit dem Skill für Coding-Agenten erstellt wurden, können
Bildabdeckungs-Karten enthalten.
:::

## Bilder, die funktionieren {#good-images}

Eine Karte zeichnet dein Bild genau so, wie es ist. Es gibt keine
Hintergrundplatte dahinter, keinen Rahmen und keine automatische
Kontrastkorrektur. So wirken Fotos natürlich, und ein paar Gewohnheiten
lohnen sich.

::: gotcha
#### Transparente Strichzeichnungen verschwinden im Dunkelmodus

Ein PNG mit schwarzen Linien auf transparentem Hintergrund sieht im
hellen Modus perfekt aus. Im Dunkelmodus ist die Karte dahinter fast
schwarz, und die Zeichnung verschwindet — Linien, Beschriftungen, Noten
auf einem Notensystem, alles. Bevor du ein Diagramm, ein Formelbild oder
eine eingescannte Skizze hinzufügst, gib ihm einen deckenden weißen oder
hellen Hintergrund. Die meisten Bildbearbeitungsprogramme nennen das
*auf eine Ebene reduzieren*; ein Export als JPEG erledigt es ebenfalls.
Prüfe die Karte einmal im Dunkelmodus, bevor du fünfzig weitere dieser
Art anlegst.
:::

Noch ein paar Faustregeln:

1. **Verwende Rasterbilder.** PNG für Diagramme, Text und
   Strichzeichnungen; JPEG für Fotos. Kein SVG.
2. **Etwa 2.000 Pixel an der langen Seite reichen völlig.** JustFlip!
   zeichnet ein Bild auf einer Karte nie größer als etwa 2.200 Pixel und
   verkleinert beim Speichern alles über 3.000. Mehr Auflösung kostet
   nur Synchronisierungszeit.
3. **Schneide knapp zu.** Eine Karte ist klein. Schneide alles weg, was
   nicht zu dem gehört, wonach du fragst — so wird das Bild gratis
   größer.
4. **Halte Text im Bild groß.** Beschriftungen, die auf einem
   Laptop-Bildschirm lesbar sind, verschwimmen auf einer iPhone-Karte
   oft. Zoomen hilft, aber eine Karte, die du erst vergrößern musst,
   wiederholst du langsamer.
5. **Eine Idee pro Bild.** Ein Diagramm mit zwanzig Beschriftungen ergibt
   eine schlechte Karte und zwanzig gute Bildabdeckungs-Karten.

## Kurzübersicht {#reference .cheatsheet}

| Aufgabe | Wo |
|---|---|
| Bild im Text | Tab [Text]{.ui} → Bildtaste der Leiste |
| Bild als ganze Seite | Tab [Bild]{.ui} → [Bild auswählen]{.ui} |
| Bild aus der Zwischenablage | Ins Textfeld einfügen (⌘V auf dem Mac) |
| Bild entfernen | Tab [Bild]{.ui} → [Entfernen]{.ui} |
| Für VoiceOver beschreiben | [Bildbeschreibung]{.ui}, unter dem Bild |
| Urheber nennen | [Bildlizenz]{.ui} → die Taste ⓘ auf der Karte |
| Ton hinzufügen | Tab [Audio]{.ui} → [Audiodatei auswählen]{.ui} |
| Ton ersetzen oder entfernen | Tab [Audio]{.ui} → [Audio ersetzen]{.ui} oder die Papierkorbtaste |
| Neue Bildabdeckungs-Karten | Stapel → [Weitere Aktionen]{.ui} → [Bildabdeckungs-Karten hinzufügen]{.ui} |
| Abdeckungsbereiche bearbeiten | Eine beliebige Karte des Satzes bearbeiten |
| Bildabdeckungs-Karte aufdecken | [Antwort anzeigen]{.ui} oder die Leertaste |
