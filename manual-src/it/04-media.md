---
slug: media
number: 4
title: Immagini, suoni e occlusione
description: "Aggiungi immagini e suoni alle carte di JustFlip!, descrivili per VoiceOver, cita le fonti e trasforma un diagramma con etichette in carte con occlusione immagine — più le regole che fanno apparire i contenuti multimediali come si deve su ogni dispositivo."
---

# Immagini, suoni e occlusione {#media number="4"}

::: lede
Certe cose sono più facili da ricordare che da descrivere: un uccello,
un accordo, un osso della mano, il modo in cui si pronuncia una parola.
JustFlip! permette a una carta di mostrare un'immagine, riprodurre un
suono e — con l'occlusione immagine — coprire parti di un diagramma, così
puoi metterti alla prova su ogni sua etichetta.
:::

::: inthischapter
- Aggiungi immagini da Foto o dagli appunti, e scegli dove collocarle
- Scopri quale scheda salva l'editor, così non perdi nulla
- Descrivi le immagini per VoiceOver e cita i loro autori
- Metti un suono su una carta, e riproduci più tracce da Anki
- Trasforma un diagramma con etichette in una serie di carte con occlusione immagine
- Prepara immagini nitide, leggere e visibili in modalità scura
:::

Niente in questo capitolo richiede JustFlip! Pro. Immagini, suoni e
occlusione immagine funzionano allo stesso modo nella versione gratuita.

## Aggiungere un'immagine {#pictures}

Ogni lato di una carta ha la sua immagine. Ci sono tre modi per
aggiungerne una, e si distinguono per dove finisce l'immagine.

**Nel testo.** Nella scheda [Testo]{.ui}, tocca il pulsante immagine
all'estrema sinistra della barra di formattazione
([Inserisci immagine]{.ui}) e scegli una foto. JustFlip! mette il
segnaposto `![attachment:0]` nel punto del cursore, e l'immagine compare
esattamente lì sulla carta, tra le parole che la circondano.

**Come lato intero.** Passa alla scheda [Immagine]{.ui} e tocca
[Scegli immagine]{.ui}. Senza testo, l'immagine riempie il lato,
centrata e ridimensionata per starci. È la scelta giusta per le carte
"Che cos'è?": una bandiera, una foglia, una radiografia.

**Dagli appunti.** Copia un'immagine da qualsiasi parte, poi incollala
nel campo di testo. JustFlip! salva l'immagine vera e propria, non un
link alla sua provenienza, e inserisce il segnaposto per te.

![La scheda Immagine dell'editor delle carte, con una foto scelta e sotto i campi descrizione e licenza.](images/manual/{lang}/04-image-tab.jpg){.phone}

Un lato contiene un'immagine. Sceglierne un'altra la sostituisce; per
togliere un'immagine, apri la scheda [Immagine]{.ui} e tocca
[Rimuovi]{.ui}.

::: tip
#### Sul Mac

Il pulsante immagine apre la tua libreria di Foto. Per un'immagine che si
trova altrove — un download, uno screenshot, una scansione — aggiungila
prima a Foto, poi sceglila nell'editor delle carte.
:::

::: tip
#### Scattare una foto per una carta

Scatta prima la foto con l'app Fotocamera, poi sceglila da Foto
nell'editor delle carte.
:::

### Dove si trova un'immagine {#placement}

Un'immagine può finire in uno di tre punti. JustFlip! lo decide in base
a ciò che c'è sul lato, non a un'impostazione:

| Sul lato | Dove va l'immagine |
|---|---|
| Un'immagine e nessun testo | Riempie il lato, centrata |
| Testo con un segnaposto `![attachment:0]` | Dentro il testo, dove si trova il segnaposto |
| Testo senza segnaposto | Sotto il testo, come blocco |

Il terzo caso è quello che ottieni con i mazzi importati (Capitolo 5) e
con molti mazzi curati: il file indica un'immagine, ma il testo non ha un
segnaposto. Un'immagine del genere resta al suo posto quando modifichi il
testo, ed è dalla scheda [Immagine]{.ui} che la rimuovi.

Se il segnaposto è nel testo e lo elimini, al salvataggio se ne va anche
l'immagine.

::: note
#### Più immagini su un lato

Un lato creato da te contiene un'immagine. Le carte importate da Anki
possono averne diverse, ognuna con il suo segnaposto numerato —
`![attachment:0]`, `![attachment:1]` e così via. Elimina un segnaposto e
sparisce solo quell'immagine; le altre restano.
:::

Un'immagine grande su una carta mostra un pulsante [Zoom]{.ui}. Apre
l'immagine a schermo intero, dove puoi pizzicare o toccare due volte per
guardare più da vicino.

## Si salva la scheda che vedi {#tabs}

Le schede [Testo]{.ui}, [Immagine]{.ui} e [Audio]{.ui} sembrano tre
cassetti dello stesso lato. In realtà sono più simili a tre *tipi* di
lato, e [Salva]{.ui} memorizza quello la cui scheda è visibile:

| Salvato da | Cosa conserva quel lato |
|---|---|
| [Testo]{.ui} | Il testo; un'immagine se si trova nel testo o sotto di esso; un suono che la carta aveva già |
| [Immagine]{.ui} | L'immagine; un suono che la carta aveva già. Il testo viene scartato |
| [Audio]{.ui} | Il suono e la lingua del lato. Testo e immagine vengono scartati |

::: gotcha
#### Torna su Testo prima di salvare

Devi sostituire il suono o l'immagine di una carta che ha anche del
testo? Fai la modifica nella scheda [Audio]{.ui} o [Immagine]{.ui}, poi
torna su [Testo]{.ui} e tocca [Salva]{.ui} da lì. Se salvi dall'altra
scheda, quel lato perde il suo testo.
:::

Questa regola ti dà delle ricette semplici per le carte miste:

- **Testo e immagine:** resta nella scheda [Testo]{.ui} e aggiungi
  l'immagine con il pulsante immagine della barra.
- **Immagine e suono:** scegli il suono nella scheda [Audio]{.ui} e
  salva. Poi modifica la carta, scegli l'immagine nella scheda
  [Immagine]{.ui} e salva di nuovo.
- **Testo e suono:** scegli il suono nella scheda [Audio]{.ui} e salva.
  Poi modifica la carta, scrivi il testo nella scheda [Testo]{.ui} e
  salva.

Le ricette in due passaggi servono perché un suono scelto su una carta
*nuova* viene salvato solo dalla scheda [Audio]{.ui}. Una volta che la
carta ha un suono, le altre schede lo conservano.

## Descrivere le immagini e citarne gli autori {#descriptions}

Quando un lato ha un'immagine, sotto compaiono due campi:
[Descrizione dell'immagine]{.ui} e [Licenza dell'immagine]{.ui}. Sono
entrambi facoltativi, ed entrambi valgono qualche secondo.

### La descrizione

VoiceOver legge la descrizione al posto dell'immagine. Senza descrizione
dice solo "Immagine", il che non dice nulla della carta a chi non può
vederla.

Descrivi ciò che l'immagine *mostra*, non ciò che *significa*. Su una
carta che chiede "Che uccello è questo?", scrivi "Un piccolo uccello
marrone con il petto rosso su un palo di recinzione" — non "Un
pettirosso", che svelerebbe la risposta.

::: note
#### Descrizioni e suggerimenti vocali sono cose diverse

La descrizione è per VoiceOver. Il suggerimento vocale del Capitolo 3,
`![attachment:0]{una mela rossa}`, è ciò che dicono il pulsante
dell'altoparlante e Leggi carte. Un'immagine senza suggerimento resta
muta quando la carta viene letta ad alta voce, qualunque cosa dica la sua
descrizione.
:::

### La licenza

Usi la foto o il disegno di qualcun altro? Scrivi l'autore e la licenza
in [Licenza dell'immagine]{.ui} — per esempio "Foto: Mario Rossi, CC BY
4.0". In questo campo funzionano i link scritti come
`[etichetta](https://…)`.

Sulla carta compare un piccolo pulsante ⓘ nella parte inferiore.
Toccandolo si apre un pannello con il testo completo, così il credito è
lì per chi lo vuole, senza ingombrare la carta.

![Una carta con una foto e il pulsante ⓘ della licenza in basso; sopra, il pannello Licenza dell'immagine aperto.](images/manual/{lang}/04-licence-sheet.jpg){.phone}

Anche i mazzi curati e quelli creati dall'IA possono includere licenze,
nei campi `q_image_license` e `a_image_license` (Capitolo 5).

## Dimensioni, formati e sincronizzazione {#size}

L'immagine di una carta viaggia con la carta. È salvata nella tua
libreria e sincronizzata tramite iCloud su ogni dispositivo, quindi
un'immagine che aggiungi sul Mac è sul tuo iPhone un attimo dopo.

Questa comodità ha un prezzo: ogni megabyte si sincronizza su ogni
dispositivo. JustFlip! tiene sotto controllo le immagini da solo. Quando
salvi, un'immagine di oltre 3.000 pixel sul lato lungo viene ridotta a
3.000; una foto opaca viene salvata in JPEG, e un'immagine con
trasparenza la mantiene. Le immagini più piccole vengono salvate
esattamente come sono.

I file audio vengono salvati esattamente come li scegli. Una
registrazione di tre minuti può facilmente pesare più di cento carte di
testo, quindi taglia le clip alla parte che ti serve.

| | Funziona | Non funziona |
|---|---|---|
| Immagini | Tutto ciò che mostra la tua libreria di Foto; PNG, JPEG, GIF e WebP dalle importazioni | SVG e altri formati vettoriali |
| Suono | File che il sistema riconosce come audio, come `.mp3`, `.m4a` e `.wav` | Video |

::: gotcha
#### Niente SVG

I disegni vettoriali (`.svg`) non possono essere mostrati su una carta.
Esporta prima il disegno in PNG — largo circa 2.000 pixel, con sfondo
bianco (vedi [Immagini che funzionano](#good-images)).
:::

## Il suono su una carta {#audio}

Apri la scheda [Audio]{.ui} e tocca [Scegli file audio]{.ui} per scegliere
un file da File. La scheda mostra poi il nome e la dimensione del file, un
pulsante cestino per rimuoverlo e [Sostituisci audio]{.ui}. Sotto c'è la
[Lingua]{.ui} del lato.

JustFlip! non registra dal microfono. Registra con Memo Vocali, condividi
il memo su File e sceglilo da lì.

![La scheda Audio con un file audio scelto: nome, dimensione, pulsante cestino e Sostituisci audio.](images/manual/{lang}/04-audio-tab.jpg){.phone}

### Come viene riprodotto

Niente parte da solo. Ciò che vedi dipende dal lato:

- **Un lato che è solo un suono** mostra un grande pulsante di
  riproduzione al centro della carta.
- **Un lato che ha anche testo o un'immagine** ha un piccolo pulsante
  [Audio]{.ui} in basso, accanto al pulsante dell'altoparlante. Mentre il
  suono è in riproduzione, il pulsante dice [In riproduzione]{.ui}.

Avviare il suono interrompe la voce se sta leggendo la carta, e
viceversa.

### Più tracce

Le note di Anki a volte hanno più di un suono su un lato — una parola, poi
una frase d'esempio. JustFlip! le conserva tutte, nell'ordine originale.
Il pulsante in basso diventa allora **Audio (2)**, **Audio (3)** e così
via, e apre un menu con una voce per traccia.

::: gotcha
#### Sostituire una traccia le sostituisce tutte

L'editor mostra solo la prima traccia. [Sostituisci audio]{.ui} o il
pulsante cestino agiscono su *tutte* le tracce di quel lato. Se vuoi
conservare le tracce in più, non toccare la scheda [Audio]{.ui}.
:::

## Occlusione immagine {#occlusion}

L'**occlusione immagine** trasforma un'immagine in tante carte. Copri
parti di un diagramma con delle forme; ogni parte coperta diventa una
carta a sé che chiede "Cosa c'è qui sotto?". È il modo più rapido per
imparare una cartina, una tavola anatomica, un circuito, una tabella
delle diteggiature — qualsiasi immagine piena di etichette.

![L'editor di occlusione: un diagramma anatomico con dei rettangoli disegnati sopra le etichette, e la riga degli strumenti in alto.](images/manual/{lang}/04-occlusion-editor.jpg){.shot width=80%}

### Creare carte con occlusione

1. Apri un mazzo, tocca il pulsante [Altre azioni]{.ui} (•••) e scegli
   [Aggiungi carte con occlusione immagine]{.ui}.
2. Tocca [Seleziona immagine]{.ui} e scegli l'immagine.
3. Trascina sull'immagine per coprire una zona. Ripeti per ogni etichetta
   che vuoi imparare.
4. Scegli una modalità, aggiungi il testo facoltativo e tocca **Salva N
   schede**.

Gli strumenti sopra l'immagine:

| Strumento | Cosa fa |
|---|---|
| [Rettangolo]{.ui} / [Ellisse]{.ui} | Disegna una nuova zona trascinando |
| [Seleziona]{.ui} | Sposta una zona trascinandola; ridimensionala dalla maniglia nell'angolo |
| [Annulla]{.ui} / [Ripristina]{.ui} | Vai avanti e indietro tra le modifiche |
| [Duplica zona]{.ui} | Copia la zona selezionata |
| [Elimina zona]{.ui} | Rimuove la zona selezionata |
| [Cambia immagine]{.ui} | Sostituisce l'immagine sottostante |

### Due modalità {#occlusion-modes}

In [Modalità]{.ui} scegli quanta parte dell'immagine resta nascosta
mentre una carta pone la sua domanda. In entrambi i casi, ogni zona
diventa una carta a sé.

| Modalità | Durante la domanda | Ideale per |
|---|---|---|
| [Nascondi una, indovina una]{.ui} | È coperta solo la zona richiesta; vedi tutte le altre etichette | Imparare dove si trovano le cose, con le vicine come indizi |
| [Nascondi tutte, indovina una]{.ui} | Tutte le zone sono coperte; quella richiesta ha un bordo più marcato e un punto interrogativo | Metterti davvero alla prova, senza che le altre etichette ti diano indizi |

Inizia con [Nascondi una, indovina una]{.ui}. Quando un'immagine ti
sembra facile, una seconda serie di carte in
[Nascondi tutte, indovina una]{.ui} è un ottimo esame.

### Il testo intorno

Sotto la modalità ci sono tre campi facoltativi:

- **[Intestazione (facoltativo)]{.ui}** — mostrata sopra l'immagine su
  ogni carta. Metti qui la domanda: "Come si chiama quest'osso?"
- **[Note sull'intera immagine (facoltativo)]{.ui}** — mostrate sotto
  l'immagine una volta svelata la risposta. Utili per un trucco
  mnemonico o un dettaglio.
- **[Commenti (facoltativo)]{.ui}** — una nota per te. Viene conservata
  con le carte ma non viene mostrata durante il ripasso.

Poi c'è [Descrizione immagine]{.ui}. Come dice l'editor, VoiceOver la
legge al posto dell'immagine, quindi descrivi il diagramma senza svelare
alcuna risposta: "Una vista frontale dello scheletro umano" invece di un
elenco delle ossa.

::: gotcha
#### Le coperture nascondono l'immagine, non il testo che contiene

Una zona copre esattamente l'area che hai disegnato. Se un'etichetta
sporge dal suo rettangolo, la risposta è visibile. Disegna con generosità
— un margine attorno a ogni etichetta non costa nulla.
:::

### Ripassare una carta con occlusione {#occlusion-review}

Una carta con occlusione non si gira. L'immagine resta al suo posto;
tocca [Mostra risposta]{.ui} in alto — o premi la barra spaziatrice su una
tastiera — e la zona coperta si apre, contornata, mentre il resto rimane
com'era. Poi valutala come qualsiasi altra carta. Pizzica per ingrandire
un diagramma dettagliato.

![Una carta con occlusione durante il ripasso, prima e dopo Mostra risposta.](images/manual/{lang}/04-occlusion-review.jpg){.phone}

Le carte con occlusione fanno parte dei normali ripassi su iPhone, iPad e
Mac. Apple Watch le esclude e ti dice quante carte aspettano il tuo
iPhone.

### Modificare una carta con occlusione {#occlusion-edit}

Modifica una qualsiasi carta della serie — tienila premuta (o fai clic
con il tasto destro sul Mac) e scegli [Modifica carta]{.ui} — e JustFlip!
apre l'editor delle zone, non quello del testo. Lì puoi spostare,
aggiungere o eliminare zone, cambiare la modalità, il testo o persino
l'immagine.

Le zone che mantieni conservano la loro cronologia di ripasso. Una zona
che aggiungi diventa una nuova carta; una zona che elimini si porta via
la sua carta.

::: note
#### Occlusione da Anki e da file

Le note con occlusione immagine di Anki, e quelle del vecchio componente
aggiuntivo Image Occlusion Enhanced, arrivano come carte con occlusione
native di JustFlip! quando importi il mazzo (Capitolo 5). Anche i file di
mazzo creati dalla skill per agenti di programmazione possono contenere
carte con occlusione.
:::

## Immagini che funzionano {#good-images}

Una carta disegna l'immagine esattamente com'è. Non c'è uno sfondo
dietro, nessuna cornice e nessuna correzione automatica del contrasto.
Così le foto restano naturali, e vale la pena imparare alcune abitudini.

::: gotcha
#### I disegni trasparenti spariscono in modalità scura

Un PNG con linee nere su sfondo trasparente è perfetto in modalità
chiara. In modalità scura la carta dietro è quasi nera, e il disegno
sparisce — linee, etichette, note sul pentagramma, tutto. Prima di
aggiungere un diagramma, l'immagine di una formula o uno schizzo
scansionato, dagli uno sfondo pieno bianco o chiaro. La maggior parte
degli editor di immagini chiama questa operazione *unisci livelli*
(flatten); anche esportare in JPEG la fa. Controlla la carta una volta in
modalità scura prima di crearne altre cinquanta uguali.
:::

Qualche altra regola pratica:

1. **Usa immagini raster.** PNG per diagrammi, testo e disegni al tratto;
   JPEG per le foto. Niente SVG.
2. **Circa 2.000 pixel sul lato lungo sono più che sufficienti.**
   JustFlip! non disegna mai un'immagine su una carta più grande di circa
   2.200 pixel, e al salvataggio riduce tutto ciò che supera i 3.000. Più
   risoluzione costa solo tempo di sincronizzazione.
3. **Ritaglia senza pietà.** Una carta è piccola. Elimina tutto ciò che
   non è l'oggetto della domanda — l'immagine diventa più grande
   gratis.
4. **Tieni grande il testo nell'immagine.** Etichette leggibili sullo
   schermo di un portatile spesso diventano una macchia su una carta
   dell'iPhone. Lo zoom aiuta, ma una carta da ingrandire si ripassa più
   lentamente.
5. **Un'idea per immagine.** Un diagramma con venti etichette fa una
   carta pessima e venti ottime carte con occlusione.

## Riferimento rapido {#reference .cheatsheet}

| Operazione | Dove |
|---|---|
| Immagine nel testo | Scheda [Testo]{.ui} → pulsante immagine della barra |
| Immagine come lato intero | Scheda [Immagine]{.ui} → [Scegli immagine]{.ui} |
| Immagine dagli appunti | Incolla nel campo di testo (⌘V sul Mac) |
| Rimuovere un'immagine | Scheda [Immagine]{.ui} → [Rimuovi]{.ui} |
| Descrivere per VoiceOver | [Descrizione dell'immagine]{.ui}, sotto l'immagine |
| Citare l'autore | [Licenza dell'immagine]{.ui} → il pulsante ⓘ sulla carta |
| Aggiungere un suono | Scheda [Audio]{.ui} → [Scegli file audio]{.ui} |
| Sostituire o rimuovere un suono | Scheda [Audio]{.ui} → [Sostituisci audio]{.ui} o il pulsante cestino |
| Nuove carte con occlusione | Mazzo → [Altre azioni]{.ui} → [Aggiungi carte con occlusione immagine]{.ui} |
| Modificare le zone di occlusione | Modifica una qualsiasi carta della serie |
| Svelare una carta con occlusione | [Mostra risposta]{.ui}, o la barra spaziatrice |
