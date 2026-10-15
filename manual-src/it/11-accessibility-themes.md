---
slug: accessibility-themes
number: 11
title: Accessibilità e temi
description: "Come JustFlip! funziona con VoiceOver, Testo più grande, Riduci movimento, Aumenta contrasto e Controllo vocale, come scegliere un tema e una dimensione del testo, e come scrivere carte da cui tutti possano imparare."
---

# Accessibilità e temi {#accessibility-themes number="11"}

::: lede
JustFlip! si basa sulle impostazioni di accessibilità che usi già su
iPhone, iPad e Mac. Non devi attivare nulla nell'app. VoiceOver, Testo
più grande, Riduci movimento e Aumenta contrasto funzionano e basta. In
più, JustFlip! ha una sua dimensione del testo e cinque temi, così l'app
si legge comodamente e ha l'aspetto che preferisci.
:::

::: inthischapter
- Scopri quali impostazioni di sistema segue JustFlip!, e cosa cambia ognuna
- Ripassa con VoiceOver: girare, valutare e ascoltare le lacune
- Imposta la dimensione del testo, per tutto il dispositivo o solo per JustFlip!
- Scegli un tema: JustFlip chiaro, JustFlip scuro, Nebbia, Nebbia scura o Sistema
- Scrivi carte che funzionano per ogni studente, qualunque siano i suoi occhi e le sue orecchie
:::

## Segue le tue impostazioni {#system-settings}

JustFlip! non ha una modalità di accessibilità da attivare. Legge le
impostazioni in **Impostazioni › Accessibilità** sul tuo dispositivo e
vi si adatta. Ecco cosa cambia ognuna:

| Impostazione di sistema | Cosa fa JustFlip! |
|---|---|
| VoiceOver | Legge ogni carta, pulsante e grafico, con azioni con nome per girare e valutare |
| Testo più grande | Ingrandisce il testo dell'app, compreso quello delle tue carte |
| Testo in grassetto | Disegna il testo dell'app con un peso maggiore |
| Riduci movimento | Ferma la rotazione della carta quando la giri, e attenua le altre animazioni |
| Aumenta contrasto | Passa a colori a contrasto più alto e aggiunge contorni dove il solo colore non basta |
| Differenzia senza colori | Aggiunge simboli, punti e contorni agli indicatori che altrimenti usano il colore |
| Controllo vocale | Ogni pulsante risponde al suo nome visibile, e la carta ad alcune frasi in più |

L'unica impostazione di accessibilità dentro l'app è la **dimensione del
testo**, in **Impostazioni › Aspetto**. Puoi saperne di più in
[Testo più grande](#larger-text).

::: note
#### Il nostro report pubblico sull'accessibilità

Teniamo un report onesto e dettagliato di ciò che è implementato e di
ciò che è ancora in fase di test, dispositivo per dispositivo, su
https://just-flip.app/accessibility/. Le etichette di accessibilità
dell'App Store vengono pubblicate una categoria alla volta, solo dopo che
quella categoria ha superato i test su dispositivi reali.
:::

## VoiceOver {#voiceover}

VoiceOver legge JustFlip! come legge le app di Apple. Elenchi, moduli e
Impostazioni usano controlli standard, e gli elementi raggruppati, come
la riga di un mazzo o una statistica, vengono letti come un unico
elemento invece che come una serie di frammenti.

### Carte e ripassi

Per VoiceOver una carta è **un solo elemento**. Legge il lato che stai
guardando, e un suggerimento ti dice di toccare due volte per girarla.
Dopo il giro, VoiceOver annuncia "Domanda" o "Risposta", così sai sempre
su quale lato sei.

Su una carta, scorri verso l'alto o verso il basso per raggiungere le
sue azioni:

- [Gira la carta]{.ui} gira la carta.
- [Mostra contenuto completo]{.ui} apre una carta troppo lunga in un
  pannello dove puoi leggerla tutta.
- [Visualizza l'immagine a schermo intero]{.ui} o
  [Visualizza il diagramma a schermo intero]{.ui} apre un'immagine o un
  diagramma a grandezza piena, dove puoi ingrandire.

I pulsanti di valutazione vengono letti con prima la valutazione e poi i
dettagli: la valutazione, poi quando tornerebbe la carta, poi quante
volte hai scelto quella valutazione in questa sessione. Dopo ogni
valutazione, VoiceOver ti dice dove sei, per esempio "Carta 4 di 20", e
annuncia [Esercitazione completata]{.ui} alla fine della sessione.

:::: pair
```markdown
La capitale della Francia
è {{c1::Parigi}}.
```

::: {.card side="question" spoken="La capitale della Francia è spazio vuoto."}
La capitale della Francia è [[…]]{.blank}.
:::
::::

**Le lacune non vengono mai svelate.** Sul lato della domanda, VoiceOver
dice "spazio vuoto" dove si trovano le parole nascoste, oppure legge
l'indizio se la lacuna ne ha uno. La risposta arriva solo dopo il giro.

VoiceOver legge il resto della carta come fa la voce di JustFlip!:

- **I suggerimenti vocali** vengono usati. `[iOS]{ai o esse}` viene letto
  "ai o esse" (Capitolo 3).
- **Le formule** vengono lette dal loro suggerimento vocale, o dal loro
  codice TeX quando non c'è un suggerimento.
- **I diagrammi** vengono letti come le loro etichette, non come le
  frecce.
- **Le tabelle** vengono lette riga per riga, cella per cella.
- **Le immagini** vengono lette dalla loro descrizione (vedi
  [Scrivere carte accessibili](#accessible-cards)). Un'immagine senza
  descrizione viene letta semplicemente come "Immagine".
- **Le bandierine** vengono lette con il loro nome, per esempio
  "Bandierina rossa".

### Elenchi e azioni

Anche i menu che si aprono tenendo premuto hanno azioni VoiceOver, così
non ti serve il gesto. Sulla riga di un interesse, scorri verso l'alto o
verso il basso per [Modifica interesse]{.ui}, [Importa carte]{.ui},
[Esporta archivio]{.ui}, [Esporta statistiche]{.ui} ed [Elimina]{.ui}. La
riga di un mazzo offre [Modifica mazzo]{.ui} ed [Elimina mazzo]{.ui}. Nel
campo dei tag, VoiceOver conferma ogni tag che aggiungi o rimuovi.

Nelle Statistiche, i grafici si possono esplorare punto per punto: ogni
punto viene letto con la sua data e il suo valore.

Su una carta con occlusione immagine, l'immagine offre come azioni
[Ingrandisci]{.ui}, [Riduci]{.ui} e [Ripristina zoom]{.ui}, al posto del
gesto di pizzicare.

### Su Apple Watch

Il Watch legge ogni carta come "Domanda" o "Risposta" seguita dal suo
testo. Valutare una carta sul Watch di solito significa tenerla premuta
(Capitolo 8). VoiceOver non può tenere premuto, quindi le quattro
valutazioni sono offerte anche come azioni sulla carta: scorri verso
l'alto o verso il basso per scegliere Di nuovo, Difficile, Bene o Facile.

## Testo più grande {#larger-text}

Di serie, JustFlip! usa la dimensione del testo che hai impostato per
tutto il dispositivo in **Impostazioni › Accessibilità › Schermo e
dimensioni testo › Testo più grande**. Pulsanti, elenchi, statistiche e
il testo delle carte crescono tutti di conseguenza.

Puoi anche dare a JustFlip! una dimensione tutta sua, separata dal resto
del dispositivo. Vai in **Impostazioni › Aspetto**:

![La sezione Aspetto nelle Impostazioni: il menu del tema, l'interruttore Usa la dimensione del testo di sistema e il cursore Dimensione del testo con la sua anteprima.](images/manual/{lang}/11-appearance-settings.jpg){.phone}

- [Usa la dimensione del testo di sistema]{.ui} è attivo per
  impostazione predefinita. JustFlip! usa allora la dimensione del
  dispositivo.
- Il cursore [Dimensione del testo]{.ui} sceglie la dimensione solo per
  JustFlip!. Spostarlo disattiva automaticamente
  [Usa la dimensione del testo di sistema]{.ui}. La riga sottostante,
  "Ecco come appaiono elenchi e pulsanti.", mostra la dimensione che stai
  scegliendo.

Il cursore ha dieci passi, dalla dimensione di sistema più piccola fino
alla terza dimensione di accessibilità. Le due dimensioni più grandi,
che puoi impostare in iOS, funzionano comunque in JustFlip! quando
arrivano dall'impostazione del dispositivo. Il cursore semplicemente non
le offre. A quelle dimensioni, la maggior parte delle carte non sta più
sulla carta, e finiresti per aprirne quasi ognuna in un pannello a parte.

L'ultimo passo del tour di benvenuto offre lo stesso cursore, così puoi
impostare una dimensione comoda prima del tuo primo ripasso.

::: gotcha
#### Il testo grande non si rimpicciolisce per starci

Alla dimensione predefinita, JustFlip! rimpicciolisce leggermente una
carta lunga perché ci stia (Capitolo 3). Con una dimensione del testo più
grande, non lo fa. La carta viene disegnata esattamente alla dimensione
che hai chiesto. Ciò che non ci sta sfuma in basso, e il pulsante **•••**
(o l'azione VoiceOver [Mostra contenuto completo]{.ui}) apre il resto. Se
succede con la maggior parte delle carte, dividile in carte più brevi.
Fa comunque bene alla tua memoria.
:::

::: note
#### Su cosa stiamo ancora lavorando

Il supporto al testo più grande è quasi completo, ma non è ancora stato
testato sui dispositivi a ogni dimensione. L'unica lacuna nota: alle
dimensioni più grandi in assoluto, il titolo e i pulsanti di valutazione
attorno alla carta nella schermata di ripasso possono restare senza
spazio. La carta in sé va bene. Se ti servono le dimensioni più grandi,
impostare la dimensione del testo di JustFlip! uno o due passi più in
basso mantiene ordinata la schermata di ripasso.
:::
<!-- VERIFY: Readiness doc (2026-07-19) says "at AX3 and above the Review/Testing chrome (screen title, response buttons) overflows the screen with nothing to scroll". Confirm this is still open before publishing. -->

## Movimento, peso e contrasto {#visual}

### Riduci movimento

Con **Riduci movimento** attivo, la carta non ruota più in 3D quando la
giri. Cambia lato sul posto, un po' più velocemente. Anche gli altri
movimenti dell'app si calmano: le carte che volano via dopo una
valutazione, il luccichio degli elenchi in caricamento, le illustrazioni
del tour di benvenuto, le barre di avanzamento che si riempiono e i
risultati del ripasso.

### Testo in grassetto

**Testo in grassetto** rende più spesso il testo dell'app, proprio come
fa ovunque sul tuo dispositivo. Il testo più spesso occupa più spazio,
quindi JustFlip! ne tiene conto quando calcola se una carta ci sta.
<!-- VERIFY: card body text is drawn by CardMarkupView from an explicit UIFont; confirm Bold Text actually thickens card question/answer text, not only system-styled UI text. -->

### Aumenta contrasto

Con **Aumenta contrasto** attivo, JustFlip! passa a versioni a contrasto
più alto dei suoi colori, sia in modalità chiara sia scura. In alcuni
punti aggiunge contorni dove altrimenti sarebbe solo il colore a
comunicare:

- la **bandierina** di una carta riceve un contorno attorno al suo
  colore,
- su una carta con **occlusione immagine**, la zona su cui sei
  interrogato riceve un'enfasi in più,
- anche i **diagrammi**, sulla carta e a schermo intero, usano i colori a
  contrasto più alto.

Ogni coppia di colori che l'app usa per il testo viene misurata rispetto
al suo sfondo in modalità chiara, scura e in entrambe le versioni con
Aumenta contrasto, e ognuna supera un rapporto di contrasto di 4,5:1.

### Differenzia senza colori

Quando **Differenzia senza colori** è attivo, i piccoli indicatori che
usano il colore acquistano anche una forma:

- i piccoli indicatori che mostrano quanto è urgente una carta e come
  l'hai valutata l'ultima volta passano a simboli distinti,
- la mappa di calore delle attività nelle Statistiche aggiunge uno, due o
  tre punti per un'attività bassa, media e alta, e contorna il quadratino
  di oggi,
- le zone di occlusione immagine ricevono un'enfasi in più, come con
  Aumenta contrasto.

Alcune cose non si affidano mai al colore, qualunque siano le tue
impostazioni: i pulsanti di valutazione hanno sempre un'etichetta e un
simbolo, e la bandierina selezionata nel selettore delle bandierine è
contrassegnata con un anello e un segno di spunta.

## Controllo vocale e tastiere {#voice-control}

**Controllo vocale** usa i nomi che vedi sullo schermo, quindi "Tocca Di
nuovo", "Tocca Bene" o "Tocca Impostazioni" funzionano come ti aspetti.
Alcuni controlli rispondono a frasi aggiuntive:

| Di' | Effetto |
|---|---|
| "Tocca Gira la carta", "Tocca Mostra l'altro lato" o "Tocca Gira" | Gira la carta |
| "Tocca Rinvia" o "Tocca Ripeti" | Apre il menu di rinvio durante un ripasso |

Controllo vocale non è ancora stato testato da cima a fondo su ogni
dispositivo. I cursori e i menu che si aprono tenendo premuto sono le
parti meno testate. Se lì un nome non funziona, "Mostra numeri" funziona
sempre.

**Con una tastiera**, un ripasso non ha bisogno di alcun puntatore: la
barra spaziatrice gira la carta e i tasti da 1 a 4 la valutano, sul Mac
e su un iPad con tastiera fisica. L'elenco completo è nel Capitolo 8.
JustFlip! usa ovunque pulsanti, menu e interruttori standard, ma
**Accesso completo da tastiera** non è ancora stato testato da cima a
fondo.

## Temi {#themes}

Un tema è la tavolozza di colori con cui è disegnata tutta l'app.
Sceglilo in **Impostazioni › Aspetto › Tema**. Il menu mostra un piccolo
campione del tema attuale:

| Tema | Com'è |
|---|---|
| [Sistema]{.ui} | La tavolozza oro di JustFlip!, chiara o scura in base al dispositivo. È l'impostazione predefinita. |
| [JustFlip chiaro]{.ui} | La tavolozza oro, sempre chiara, qualunque sia l'impostazione del dispositivo |
| [JustFlip scuro]{.ui} | La tavolozza oro, sempre scura |
| [Nebbia]{.ui} | Una tavolozza chiara, calma e minerale, con azzurro acqua limpida, ginepro e salvia |
| [Nebbia scura]{.ui} | Nebbia su superfici color inchiostro profondo |

![I cinque temi fianco a fianco: Sistema, JustFlip chiaro, JustFlip scuro, Nebbia e Nebbia scura.](images/manual/{lang}/11-theme-swatches.jpg){.shot width=80%}

Il cambio è istantaneo: tutta l'app si ridipinge non appena scegli un
tema, senza riavviare. Ogni tema ha già incorporata la modalità chiara o
scura, quindi non c'è un interruttore chiaro/scuro separato. Per seguire
la modalità scura del dispositivo, scegli [Sistema]{.ui}.

::: note
#### Dove i temi non arrivano

Il tema vale per l'app stessa. Il widget della schermata Home mantiene
l'oro di JustFlip! e segue l'impostazione chiara o scura del dispositivo.
L'app per Apple Watch è sempre scura. Le immagini sulle tue carte vengono
mostrate esattamente come sono, in ogni tema.
:::

::: gotcha
#### Un tema fisso ignora la modalità scura

[JustFlip chiaro]{.ui} e [Nebbia]{.ui} restano chiari anche quando il
dispositivo passa alla modalità scura al tramonto, e i due temi scuri
restano scuri alla luce del giorno. Se JustFlip! non segue la tua
modalità scura, controlla **Impostazioni › Aspetto › Tema**. Solo
[Sistema]{.ui} la segue.
:::

## Scrivere carte accessibili {#accessible-cards}

L'app può leggere solo ciò che c'è sulle tue carte. Queste abitudini
fanno funzionare un mazzo per chiunque lo usi, te compreso, quando lo
ascolti con Leggi carte durante una passeggiata.

1. **Descrivi ogni immagine.** Quando un lato ha un'immagine, l'editor
   mostra un campo [Descrizione dell'immagine]{.ui} ("Descrivi
   l'immagine (facoltativo)"). VoiceOver lo legge al posto
   dell'immagine. Descrivi ciò che l'immagine mostra: "Un piccolo
   uccello marrone con il petto rosso su un palo di recinzione" dice
   molto di più di "foto di uccello". Su una carta "Che uccello è
   questo?", lascia fuori il nome, o la descrizione svelerà la risposta
   (Capitolo 4). La descrizione rende anche una carta con sola immagine
   rintracciabile in Spotlight (Capitolo 8). E viaggia con il mazzo
   quando lo esporti e lo condividi.
2. **Imposta la lingua di ogni lato.** Il selettore [Lingua]{.ui} decide
   quale voce legge ad alta voce il lato con il pulsante
   dell'altoparlante e con Leggi carte (Capitolo 7). Un lato senza
   lingua non viene mai letto dalla voce di JustFlip!.
3. **Aggiungi suggerimenti vocali dove la lettura sbaglia.** Un
   suggerimento come `$c^2${c al quadrato}` corregge in un colpo solo ciò
   che dice la voce di JustFlip! *e* ciò che legge VoiceOver.
4. **Dai un indizio alle lacune quando il contesto è scarso.** Con un
   indizio, VoiceOver e la voce leggono l'indizio invece di un semplice
   "spazio vuoto".
5. **Non lasciare che sia il colore a portare il significato.** Le
   bandierine vengono lette per nome, ma cosa *significa* ogni colore lo
   decidi tu. Se "rosso" vuol dire "esame la prossima settimana", mettilo
   anche in un tag. I tag sono testo, quindi possono essere letti e
   cercati.
6. **Etichetta bene i tuoi diagrammi.** Un diagramma viene letto come le
   sue etichette, quindi "Avvia ripasso → Carta da ripassare?" dice più
   di "A → B".
7. **Mantieni le carte brevi.** Una carta breve ci sta anche con testo
   grande e su Apple Watch, ed è anche più facile da ricordare.

::: gotcha
#### La lingua è per la voce, non per VoiceOver

Il selettore [Lingua]{.ui} controlla la voce di JustFlip!: il pulsante
dell'altoparlante e Leggi carte. VoiceOver legge le carte con la voce
impostata nelle impostazioni di VoiceOver. Per una carta in un'altra
lingua, il pulsante dell'altoparlante sulla carta è il modo più
affidabile per sentirla pronunciata correttamente.
:::
<!-- VERIFY: CardMarkupView sets accessibilityLabel from speech text with no accessibilityLanguage / speech-language attribute (grep found none). Confirm on device that VoiceOver does not switch to the card's language. -->
