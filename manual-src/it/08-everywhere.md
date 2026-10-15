---
slug: everywhere
number: 8
title: JustFlip! ovunque
description: "Usa JustFlip! su iPad, Mac e Apple Watch, con le abbreviazioni da tastiera, il widget della schermata Home, Siri e Comandi, la ricerca di Spotlight e il pannello Novità."
---

# JustFlip! ovunque {#everywhere number="8"}

::: lede
La tua libreria vive in iCloud, quindi ti segue da un dispositivo
all'altro. Ogni dispositivo gioca i suoi punti di forza: una vista divisa
spaziosa su iPad, una barra dei menu e la valutazione con una mano sola
dalla tastiera sul Mac, un ripasso veloce al polso, e il conteggio di ciò
che c'è da ripassare sulla schermata Home prima ancora di aprire l'app.
:::

::: inthischapter
- Lavora nelle viste divise di iPad e Mac, e trascina i mazzi da File o dal Finder
- Ripassa dalla tastiera, con l'elenco completo delle abbreviazioni
- Ripassa su Apple Watch, e scopri perché il Watch ha bisogno del tuo iPhone
- Aggiungi il widget Carte da ripassare alla schermata Home o alla schermata di blocco
- Chiedi a Siri cosa c'è da ripassare, o avvia un ripasso senza toccare lo schermo
- Trova qualsiasi carta da Spotlight, e tieni fuori i mazzi privati
:::

## iPad {#ipad}

Su iPad, JustFlip! usa un layout a due colonne, come l'app Impostazioni.
La **barra laterale** a sinistra contiene i tuoi Interessi e, quando ne
scegli uno, i Mazzi di quell'interesse. La **colonna dei dettagli** a
destra mostra le carte del mazzo selezionato. Sfogli a sinistra e studi
a destra, senza perdere il segno.

![JustFlip! su iPad: i mazzi di un interesse nella barra laterale, le carte di quel mazzo nella colonna dei dettagli.](images/manual/{lang}/08-ipad-split.jpg){.shot width=80%}

Il layout segue il modo in cui tieni l'iPad:

- **Quando c'è spazio in abbondanza** (in orizzontale, o un iPad grande in
  verticale), le due colonne stanno una accanto all'altra.
- **Quando lo spazio è poco** (un iPad più piccolo in verticale, o
  JustFlip! accanto a un'altra app), le carte occupano tutto lo schermo.
  La barra laterale scorre dentro quando tocchi il pulsante della barra
  laterale nell'angolo in alto o scorri dal bordo sinistro.

JustFlip! funziona anche in Split View e Slide Over accanto a un'altra
app, e le colonne si adattano allo spazio disponibile. Gira in una sola
finestra, quindi non puoi aprire due finestre di JustFlip! una accanto
all'altra.

### Trascinare e rilasciare

Il trascinamento funziona in due modi:

- **Importa un file rilasciandolo.** Trascina un file `.flashcards` o
  `.flashcards.zip`, un foglio di calcolo CSV o un pacchetto Anki `.apkg`
  dall'app File (o da un'altra app in Split View) su JustFlip!. Puoi
  rilasciarlo in qualsiasi punto della finestra, e l'importazione parte
  come se avessi aperto il file. Il Capitolo 5 spiega cosa porta con sé
  ogni formato.
- **Riordina la libreria.** Interessi, mazzi e carte si possono
  riorganizzare trascinandoli. Per gli interessi, scegli
  [Riordina]{.ui} dal menu in cima alla schermata Interessi. Per mazzi e
  carte, scegli [Modifica]{.ui} dal menu dell'elenco. Poi trascina le
  righe dalle loro maniglie e tocca [Fine]{.ui} quando hai finito.

::: tip
#### Puntatore e tastiera aiutano

Con un trackpad o un mouse, i pulsanti di valutazione si sollevano quando
ci passi sopra. Con una tastiera fisica, le abbreviazioni di ripasso
dell'[elenco delle abbreviazioni](#keyboard) funzionano su iPad esattamente
come sul Mac.
:::

## Mac {#mac}

Sul Mac, JustFlip! usa tutta la larghezza di una finestra desktop con tre
colonne: **Interessi**, **Mazzi** e **Carte**. Restringi la finestra e la
colonna Interessi si nasconde dietro il pulsante della barra laterale,
così mazzi e carte mantengono abbastanza spazio. In una finestra molto
stretta restano sullo schermo solo le carte. Allarga di nuovo la
finestra e tornano tutte e tre le colonne.

![JustFlip! sul Mac. Tre colonne: interessi, mazzi e l'elenco delle carte.](images/manual/{lang}/08-mac-three-columns.jpg){.shot width=80%}

### La barra dei menu

JustFlip! aggiunge i suoi comandi in cima al menu **Archivio**:

| Comando | Abbreviazione | Cosa fa |
|---|---|---|
| [Import Cards…]{.ui} | ⇧⌘I | Apre un selettore di file per qualsiasi file importabile |
| [Import Interest Archive…]{.ui} | — | Lo stesso selettore di file, con il nome che potresti cercare |
| [Export Interest…]{.ui} | ⇧⌘E | Esporta l'interesse selezionato come archivio |
| [Export Statistics…]{.ui} | — | Esporta le statistiche dell'interesse selezionato |

Entrambi i comandi di importazione aprono lo stesso selettore. JustFlip!
riconosce il formato dal file stesso, quindi non importa quale scegli. Il
resto della barra dei menu (Informazioni, Nascondi, Esci, Composizione,
Finestra, Aiuto) è la barra dei menu standard del Mac.

::: gotcha
#### L'esportazione richiede un interesse selezionato

[Export Interest…]{.ui} ed [Export Statistics…]{.ui} agiscono
sull'interesse selezionato nella barra laterale. Se nessun interesse è
selezionato, non fanno proprio nulla: nessun errore, nessuna finestra di
dialogo. Fai prima clic su un interesse, poi scegli il comando.
:::

::: note
#### I nomi dei menu sono in inglese

Per ora, i quattro comandi del menu Archivio qui sopra sono in inglese
qualunque sia la lingua dell'app. Tutto il resto di JustFlip! segue la
tua lingua.
:::

Alcune cose funzionano diversamente dalle altre app per Mac:

- **Non c'è ⌘, per le Impostazioni.** Apri le Impostazioni dal pulsante
  dell'ingranaggio in cima alla colonna Interessi, poi scegli
  [Impostazioni]{.ui}.
- **Non c'è ⌘F.** Per cercare tra tutte le carte, usa il pulsante con la
  lente d'ingrandimento in cima alla colonna Interessi.
- **Nessun tasto avvia un ripasso.** Fai clic su un pulsante di ripasso
  per iniziare, poi usa la tastiera per il resto.

Il trascinamento dal Finder funziona come su iPad: rilascia un file di
mazzo in qualsiasi punto della finestra per importarlo.

## Abbreviazioni da tastiera {#keyboard .cheatsheet}

Le abbreviazioni di ripasso funzionano sul Mac e su un iPad con tastiera
fisica. Sono pensate per una mano sola: giri con la barra spaziatrice,
valuti con i tasti numerici e non devi mai cercare il puntatore.

| Tasto | Azione | Dove funziona |
|---|---|---|
| Spazio | Gira la carta | Durante un ripasso |
| Spazio | Svela la zona nascosta | Durante il ripasso di una carta con occlusione immagine |
| 1 | Valuta **Di nuovo** | Durante un ripasso |
| 2 | Valuta **Difficile** | Durante un ripasso |
| 3 | Valuta **Bene** | Durante un ripasso |
| 4 | Valuta **Facile** | Durante un ripasso |
| Invio | Controlla la risposta digitata | Durante un ripasso con [Digita le risposte]{.ui} attivo |
| ⇧⌘I | [Import Cards…]{.ui} | Mac, ovunque (menu Archivio) |
| ⇧⌘E | [Export Interest…]{.ui} | Mac, con un interesse selezionato (menu Archivio) |


I tasti numerici sono semplici cifre, non ⌘ più cifra. Così valutare
richiede la pressione di un solo tasto.

::: gotcha
#### Tre motivi per cui un tasto non fa nulla

Ognuno di questi è voluto, e ognuno sembra un bug quando non lo conosci:

1. **Stai digitando una risposta.** Mentre il campo
   [Digita la tua risposta]{.ui} è attivo, Spazio e 1–4 scrivono
   caratteri. Altrimenti digitare "3" valuterebbe la carta Bene. Invio
   controlla comunque la risposta.
2. **Hai attivato la valutazione più rigorosa.** Con **Impostazioni ›
   Comportamento › Valutazione più rigorosa** attiva, girare la carta
   toglie i pulsanti Bene e Facile, e con loro i tasti 3 e 4. È
   disattivata per impostazione predefinita.
3. **La risposta dell'occlusione è ancora nascosta.** Su una carta con
   occlusione immagine i tasti di valutazione funzionano solo dopo che
   hai svelato la risposta con Spazio.
:::

## Apple Watch {#watch}

L'app per Watch è una compagna piccola e mirata. Mostra quante carte ci
sono da ripassare e ti permette di ripassarle dal polso. La troverai
comoda in coda, durante una passeggiata o ovunque tu non possa tirare
fuori il telefono.

:::: split
![La schermata Oggi del Watch: carte da ripassare, la tua serie, il pulsante Ripassa e una riga per interesse.](images/manual/{lang}/08-watch-today.jpg){.phone}

::: text
La schermata Oggi del Watch mostra:

- il numero di **carte da ripassare**,
- la tua **serie**, quando ne hai una,
- il pulsante [Ripassa]{.ui},
- fino a quattro dei tuoi interessi, ognuno con il suo conteggio.

La prima volta che lo apri, il Watch non ha ancora nulla da mostrare. Ti
chiede di [Apri JustFlip sul tuo iPhone per sincronizzare le
carte.]{.ui} Apri una volta l'app per iPhone, e il Watch si riempie.
:::
::::

### Ripassare al polso

1. Tocca [Ripassa]{.ui}.
2. Leggi la domanda. Tocca la carta, o [Mostra risposta]{.ui}, per
   girarla.
3. **Tieni premuta la carta** per valutarla. Le quattro valutazioni
   compaiono in una griglia, con gli stessi colori e simboli che hai
   sull'iPhone: Di nuovo, Difficile, Bene e Facile. Scegline una, e la
   carta successiva arriva da sola.
4. Quando la coda è finita, il Watch dice [Ottimo lavoro]{.ui} e ti
   indica quante carte hai ripassato.

Perché tenere premuto invece di quattro pulsanti? Lo schermo del Watch è
piccolo. Quattro pulsanti spingerebbero fuori dallo schermo la risposta,
cioè proprio ciò che stai giudicando. Tenendo premuta la carta, l'intero
display resta dedicato alla carta. La prima carta della tua prima
sessione spiega il gesto una volta, e poi sotto la carta resta un
piccolo suggerimento [Tieni premuto per valutare]{.ui}. Puoi valutare una
carta anche dal lato della domanda, quando la sai al primo sguardo.

![Valutare una carta su Apple Watch: tieni premuta la carta, poi scegli una valutazione.](images/manual/{lang}/08-watch-rating.jpg){.shot width=40%}

### Cosa mostra il Watch

L'iPhone prepara ogni carta per il Watch, così appare come sul telefono:
grassetto, corsivo e codice, formule, foto e diagrammi, rimpiccioliti per
il tuo polso.

- **Le carte con lacune** funzionano. Le lacune appaiono come
  [[…]]{.blank}, o come l'indizio se ne hai dato uno. Il retro mostra la
  frase con le lacune completate, più le eventuali note del lato della
  risposta.
- **Le bandierine** appaiono come un colore tenue dietro il nome del
  mazzo in cima alla carta. Le vedi sul Watch, ma le imposti
  sull'iPhone.
- **Codice e tabelle** appaiono in un semplice carattere a spaziatura
  fissa, senza colori di sintassi.

### Cosa il Watch lascia sull'iPhone

Alcune carte non stanno su un polso, quindi JustFlip! non le invia
proprio al Watch. È meglio che mostrare una carta senza la parte su cui
ti interroga. Queste carte restano sull'iPhone:

- le carte con **audio** o un **PDF** su uno dei due lati,
- i **monitoraggi dei progressi**, che si valutano con un cursore, non
  con quattro pulsanti,
- le carte con più di **280 caratteri** su uno dei due lati,
- le carte la cui foto o il cui diagramma è troppo grande da inviare, o
  troppo dettagliato per essere letto a misura di polso.

Il Watch porta con sé al massimo **60 carte** alla volta. Ogni volta che
alcune carte restano indietro, la schermata Oggi lo dice, per esempio
"12 carte richiedono il tuo iPhone". Se nessuna delle tue carte da
ripassare può essere ripassata sul Watch, al posto del pulsante Ripassa
vedrai [Ripassa su iPhone]{.ui}.

### È l'iPhone a tenere la pianificazione

Il Watch non pianifica nulla da solo. Il tuo **iPhone** è l'unico
dispositivo che decide quando torna ogni carta. Il Watch conserva una
copia delle carte che l'iPhone gli ha inviato per ultime e un elenco
delle valutazioni che hai dato. Rimanda queste valutazioni all'iPhone,
che aggiorna la pianificazione. L'iPhone poi si sincronizza con iCloud,
così gli altri dispositivi si allineano.

Nell'uso quotidiano non te ne accorgerai: con l'iPhone vicino, una
valutazione lo raggiunge in pochi secondi. Te ne accorgerai quando i due
sono lontani.

::: gotcha
#### Le valutazioni aspettano l'iPhone

Ripassa sul Watch con l'iPhone fuori portata, e le valutazioni restano
in attesa sul Watch. La schermata Oggi le mostra, per esempio
"3 in sincronizzazione con iPhone", finché l'iPhone non le riceve. Non si
perde nulla. Le valutazioni vengono consegnate quando i due si
riconnettono, e ognuna viene applicata una sola volta.

Fino ad allora, l'iPhone, il widget e gli altri dispositivi mostrano
ancora quelle carte come da ripassare. Anche l'intervallo successivo
parte dal momento in cui l'iPhone riceve la valutazione, non da quando
l'hai data. Dopo un lungo ripasso lontano dal telefono, alcune carte
potrebbero tornare qualche ora più tardi del solito.
:::

L'app per Watch ha solo un design scuro, come la maggior parte delle app
per Watch.

## Il widget della schermata Home {#widget}

Il widget **Carte da ripassare** mostra cosa ti aspetta senza aprire
l'app. Toccalo e JustFlip! si apre direttamente sul ripasso di oggi.

![Il widget Carte da ripassare sulla schermata di blocco (a sinistra) e, nella dimensione media, sulla schermata Home (a destra).](images/manual/{lang}/08-widget-sizes.jpg){.shot width=80%}

È disponibile in tre dimensioni per la schermata Home e tre per la
schermata di blocco:

| Dimensione | Mostra |
|---|---|
| Piccola | Il numero di carte da ripassare, la tua serie e gli ultimi sette giorni di ripassi come piccole barre verdi |
| Media | Lo stesso conteggio, la suddivisione tra da ripassare e nuove, e una cronologia: i giorni recenti in verde, quelli in arrivo in oro |
| Grande | Tutto quanto sopra, la tua serie migliore e una cronologia più completa di due settimane |
| Schermata di blocco, circolare | Il numero di carte da ripassare, o un segno di spunta |
| Schermata di blocco, rettangolare | Carte da ripassare e nuove, e la tua serie |
| Schermata di blocco, in linea | Un riepilogo di una riga accanto all'orologio |

Quando non resta nulla da fare, il widget dice [Tutto in pari]{.ui}, e ti
indica quando arriveranno le prossime carte, per esempio
"Prossimo domani · 12".

Per aggiungerlo:

1. Tieni premuto un punto vuoto della schermata Home finché le app non
   iniziano a muoversi.
2. Tocca **Modifica**, poi **Aggiungi widget**.
3. Cerca **JustFlip**, scegli **Carte da ripassare**, scorri fino alla
   dimensione che vuoi e tocca **Aggiungi widget**.

Per la schermata di blocco, tieni premuta la schermata di blocco, tocca
**Personalizza**, scegli la schermata di blocco e aggiungi Carte da
ripassare dall'elenco dei widget.

::: gotcha
#### Il widget mostra ciò che questo dispositivo ha visto per ultimo

Il widget non legge direttamente la tua libreria. Mostra un riepilogo
che l'app salva su questo dispositivo ogni volta che la apri, la lasci o
finisci un ripasso. Il widget si aggiorna da solo a mezzanotte e quando
arrivano le prossime carte da ripassare. Ma se ripassi su iPad o Mac, il
widget dell'iPhone si allinea solo dopo che avrai riaperto JustFlip!
sull'iPhone.
:::

Il widget è per iPhone e iPad. Usa l'oro di JustFlip! qualunque sia il
tema scelto nell'app, e segue l'impostazione chiara o scura del
dispositivo.

## Siri e Comandi {#siri}

JustFlip! offre a Siri e all'app Comandi due azioni. Non devi
configurare nulla: sono disponibili non appena hai aperto l'app una
volta.

| Azione | Cosa succede | Apre l'app? |
|---|---|---|
| **Quante carte da ripassare** | Siri ti dice quante carte ci sono da ripassare e quante carte nuove sono pronte | No |
| **Inizia il ripasso** | JustFlip! si apre e avvia il ripasso di oggi | Sì |

In italiano puoi dire:

- "Quante carte da ripassare in JustFlip"
- "Cosa c'è da ripassare in JustFlip"
- "Carte da ripassare in JustFlip"
- "Inizia un ripasso in JustFlip"
- "Ripassa le mie carte in JustFlip"
- "Studia con JustFlip"

Una risposta tipica è "Hai 14 carte da ripassare." oppure "Niente da
ripassare, ma ci sono 5 nuove carte pronte." Quando hai finito tutto,
Siri ti dice che sei in pari.

Entrambe le azioni compaiono anche nell'app **Comandi**. Cerca JustFlip
lì per aggiungerne una a un tuo comando, o per metterla sulla schermata
Home.

::: gotcha
#### Le frasi di Siri richiedono una lingua di Siri

Le frasi vocali funzionano in inglese, tedesco, spagnolo, francese,
italiano, giapponese, coreano e portoghese brasiliano. Siri non supporta
il ceco, quindi il ceco non ha frasi. Su un dispositivo in ceco puoi
comunque eseguire entrambe le azioni dall'app Comandi, e la risposta
arriva in ceco.
:::

::: note
#### Il conteggio viene dal riepilogo del widget

"Quante carte da ripassare" risponde all'istante, senza aprire l'app.
Legge lo stesso riepilogo salvato del widget, quindi vale la stessa
regola: sa ciò che questo dispositivo sapeva l'ultima volta che hai usato
JustFlip! qui.
:::

## Spotlight {#spotlight}

JustFlip! aggiunge le tue carte a Spotlight, la ricerca del tuo
dispositivo. Scorri verso il basso sulla schermata Home, digita qualche
lettera di una domanda, e la carta compare sotto JustFlip!. Toccala, e
JustFlip! apre il mazzo di quella carta, scorre fino alla carta e la
evidenzia per un attimo con un anello.

Spotlight cerca in:

- la **domanda** e la **risposta** della carta,
- i suoi **tag**,
- i nomi del **mazzo** e dell'**interesse**.

Una carta con sola immagine, senza testo, viene trovata grazie alla
**descrizione** dell'immagine. Un motivo in più per scriverne una
(Capitolo 11).

::: note
#### Spotlight cerca l'inizio delle parole

Spotlight cerca le parole che *iniziano* con ciò che digiti. "foto"
trova "fotosintesi", ma "sintesi" no. Ignora maiuscole e accenti, ma non
gli errori di battitura. Per trovare una parola all'interno di un'altra,
usa invece la ricerca dell'app: la lente d'ingrandimento nella schermata
Interessi, [Cerca carte]{.ui}, trova il testo ovunque.
:::

### Tenere i mazzi fuori dalla ricerca

All'inizio tutto è ricercabile. Per tenere un interesse o un mazzo fuori
da Spotlight, disattiva [Includi nella ricerca del dispositivo]{.ui}:

- **Per un interesse:** tieni premuto l'interesse (o fai clic con il
  tasto destro sul Mac), scegli [Modifica interesse]{.ui} e disattiva
  l'interruttore. Tutti i mazzi di quell'interesse spariscono dalla
  ricerca.
- **Per un singolo mazzo:** tieni premuto il mazzo, scegli
  [Modifica mazzo]{.ui} e disattiva l'interruttore. Gli altri mazzi di
  quell'interesse restano ricercabili.

Lo stesso interruttore compare quando crei un interesse o un mazzo, e
quando un'importazione crea un nuovo interesse. Quando importi in un
interesse che hai già, le nuove carte seguono l'impostazione di
quell'interesse.

::: gotcha
#### Vince l'interruttore dell'interesse

Una carta compare in Spotlight solo se sono inclusi **sia** il suo
interesse **sia** il suo mazzo. Disattiva l'interesse, e nessuno dei suoi
mazzi compare, qualunque cosa dicano i loro interruttori. Non esiste un
interruttore per singola carta. Per tenere private alcune carte,
spostale in un mazzo tutto loro e disattiva quel mazzo.
:::

L'indice resta su questo dispositivo. Nulla esce da lì, e l'interruttore
non viene incluso quando esporti o condividi un mazzo: chi riceve il
mazzo decide per conto suo.

## Novità {#whats-new}

Dopo un aggiornamento che porta nuove funzioni, un pulsante dorato
[Novità]{.ui} compare nell'angolo in basso della schermata principale.
Resta visibile per circa cinque secondi (quindici con VoiceOver, che lo
annuncia anche), poi svanisce. Toccalo per aprire il pannello **Novità**,
che elenca cosa è cambiato in ogni versione.

Vedi il pulsante una volta per ogni versione con nuove funzioni, che tu
lo tocchi o no. Gli aggiornamenti con sole correzioni di bug non lo
mostrano, e nemmeno una nuova installazione. Non ti sei ancora perso
nulla.

Te lo sei perso? Il pannello è sempre a un tocco di distanza: tocca il
pulsante dell'ingranaggio in cima alla schermata Interessi e scegli
[Novità]{.ui}.

Il pannello carica la pagina Novità da just-flip.app, nella lingua della
tua app, quindi ha bisogno di una connessione a internet. Offline,
mostra [Impossibile caricare le novità]{.ui} e propone [Riprova]{.ui} e
[Apri nel browser]{.ui}. Puoi anche leggere la stessa pagina in
qualsiasi momento su https://just-flip.app/news/.
