---
slug: importing
number: 5
title: Importare i mazzi
description: "Importa in JustFlip! pacchetti Anki, fogli di calcolo CSV, mazzi creati dall'IA e mazzi curati, scopri cosa succede quando importi di nuovo lo stesso file ed esporta un interesse per condividerlo o conservarlo."
---

# Importare i mazzi {#importing number="5"}

::: lede
Non devi scrivere a mano ogni carta. JustFlip! legge pacchetti Anki,
fogli di calcolo e file di mazzo scritti da un'IA, e può restituirti un
interesse sotto forma di un unico archivio. Questo capitolo mostra da
dove entra ogni tipo di file, cosa arriva — e le poche regole che
decidono se un'importazione aggiunge carte o aggiorna quelle che hai già.
:::

::: inthischapter
- Trova l'importazione su iPhone, iPad e Mac
- Porta con te un mazzo di Anki, e leggi il resoconto dell'importazione
- Trasforma un foglio di calcolo in un mazzo
- Importa mazzi creati da un'IA o presi dalla raccolta curata
- Scopri cosa fa una reimportazione, prima di farla
- Esporta un interesse per conservarlo o condividerlo
:::

L'importazione fa parte della versione gratuita, come tutto ciò che c'è
in questo capitolo.

## Dove si trova l'importazione {#where}

Ogni importazione parte dalla schermata **Interessi**. JustFlip!
riconosce il file dal nome e dal contenuto, quindi gli stessi punti di
accesso accettano tutti i formati.

| Su | Come |
|---|---|
| iPhone, iPad | Il menu [Aggiungi o importa]{.ui} (il pulsante del vassoio) → [Importa carte]{.ui} |
| iPhone, iPad | In File, Mail o Safari: condividi il file, oppure aprilo con JustFlip! |
| iPad, Mac | Trascina i file sull'elenco degli interessi — compare [Trascina qui per importare]{.ui} |
| Mac | **Archivio › Import Cards…** (⇧⌘I) o **Archivio › Import Interest Archive…** |
| Ovunque | Tieni premuto un interesse → [Importa carte]{.ui}: un file CSV o Anki direttamente in quell'interesse |
| Ovunque | [Aggiungi o importa]{.ui} → [Incolla carte]{.ui}: carte che hai copiato (vedi [Incolla carte](#paste)) |

L'importazione principale accetta più file insieme, e intere cartelle:
viene importato ogni file supportato al loro interno.

![Il menu Aggiungi o importa nella schermata Interessi, con Importa carte e Incolla carte.](images/manual/{lang}/05-import-menu.jpg){.phone}

### Cosa diventa ogni file

| File | Che cos'è | Dove finisce |
|---|---|---|
| `.apkg`, `.colpkg` | Un mazzo o una raccolta di Anki | Un interesse a tua scelta; un mazzo per ogni mazzo di Anki |
| `.csv` | Un foglio di calcolo, una carta per riga | Un interesse a tua scelta; sempre un nuovo mazzo |
| `.flashcards` | Un file di mazzo, solo testo — creato da un'IA, o curato | L'interesse indicato nel file |
| `.flashcards.zip` | Un file di mazzo con immagini e suoni, o un interesse esportato | L'interesse indicato nel file |

Per i file Anki e CSV, JustFlip! ti chiede prima dove mettere le carte.
Il pannello [Importa carte]{.ui} ha un menu [Interesse]{.ui} — che
include [Nuovo interesse…]{.ui} — e, per un foglio di calcolo, un
[Nome del mazzo]{.ui}. Tocca [Continua]{.ui}.

Quando l'importazione crea un nuovo interesse, il pannello offre anche
[Includi nella ricerca del dispositivo]{.ui}, che decide se le sue carte
possono comparire in Spotlight (Capitolo 8).

## Mazzi di Anki {#anki}

JustFlip! importa i pacchetti di mazzi (`.apkg`) e di raccolte
(`.colpkg`) di Anki, dalle versioni vecchie e attuali di Anki. In Anki,
usa **File › Esporta**, scegli *Pacchetto mazzo Anki* e includi i
contenuti multimediali. Poi importa il file come visto sopra.

Per portare con te i progressi, spunta anche *Include scheduling information* (includi le informazioni di pianificazione) durante l’esportazione.

La promessa è semplice: **il contenuto da imparare arriva; la
presentazione di Anki no.** Le tue parole, immagini, suoni, formule e
tag arrivano. Possono arrivare anche i tuoi progressi di ripasso. Gli stili e gli script di Anki restano indietro.

### Cosa arriva

- **Ogni carta.** Ogni carta di Anki diventa una carta di JustFlip!.
  Funzionano i tipi di nota fronte/retro, invertita e con inversione
  facoltativa.
- **Le note cloze, divise.** Una nota con `{{c1::…}}`, `{{c2::…}}` e
  `{{c3::…}}` genera tre carte di JustFlip!, una per numero, esattamente
  come in Anki. Ogni carta nasconde il proprio numero e mostra gli altri
  già completati. Un indizio come `{{c1::Paris::capital}}` viene
  conservato.
- **Le immagini**, nel testo, nell'ordine in cui compaiono. Il testo
  alternativo di un'immagine di Anki diventa ciò che la voce dice al suo
  posto.
- **I suoni.** Ogni `[sound:…]` su un lato viene conservato, in ordine
  (Capitolo 4).
- **L'occlusione immagine**, sia dallo strumento di Anki sia dal vecchio
  componente aggiuntivo Image Occlusion Enhanced. Entrambe diventano
  carte con occlusione native.
- **La formattazione**: grassetto, corsivo, elenchi, link, piccole
  tabelle, formule, pedici e apici.
- **I tag.**
- **La struttura dei mazzi, appiattita.** JustFlip! non ha sottomazzi,
  quindi `Languages::Spanish::Verbs` diventa un solo mazzo chiamato
  **Languages / Spanish / Verbs**.
- **I tuoi progressi di ripasso**, se l’esportazione include le informazioni di pianificazione. Ogni carta studiata mantiene intervallo, facilità, data di scadenza ed errori, e il suo registro dei ripassi arriva come cronologia. Un mazzo che studi da anni riprende quindi da dove era. Le carte sospese arrivano ritirate. Disattiva [Mantieni i progressi di Anki]{.ui} nel foglio di importazione se vuoi che tutte le carte partano come nuove.

### Cosa resta in Anki

- **I parametri FSRS di Anki.** Se in Anki usi FSRS, i suoi parametri e lo stato di memoria delle carte non vengono importati. Una carta mantiene intervallo, data di scadenza e registro dei ripassi, e riceve la facilità predefinita.
- **I progressi dei mazzi condivisi.** Un mazzo scaricato che non hai mai studiato non ha cronologia da portare, quindi le sue carte partono come nuove.
- **Gli stili.** CSS personalizzati, font e colori vengono semplificati.
- **Il codice.** JavaScript e componenti aggiuntivi non vengono mai
  eseguiti né conservati.
- **Tutto ciò che è online.** Immagini remote, pagine incorporate e
  iframe non vengono scaricati.
- **I video.**
- **Le bandierine.** Le bandierine delle carte di Anki non vengono
  trasferite.
- **La domanda ripetuta.** Anki mostra di nuovo la domanda sul lato
  della risposta; JustFlip! gira la carta sul posto, quindi quella copia
  viene eliminata. Fanno eccezione le carte cloze, perché lì la frase
  ripetuta *è* la risposta.

::: gotcha
#### Una nota cloze di Anki sono più carte

Un mazzo che in Anki mostra 300 note può arrivare come 700 carte. Non è
una duplicazione: ogni numero cloze è una carta, in Anki come in
JustFlip!. Il conteggio nel pannello di importazione è il numero di
carte.
:::

::: gotcha
#### Le carte importate non hanno una lingua

Anki non memorizza la lingua di un campo, quindi ogni carta importata
parte con la [Lingua]{.ui} impostata su **Nessuna** — e un lato senza
lingua non viene mai letto ad alta voce (Capitolo 3). Se vuoi ascoltare
un mazzo importato, imposta la lingua delle sue carte.
:::

### Il pannello di importazione {#anki-report}

Importare un singolo file Anki dal menu [Aggiungi o importa]{.ui}, da
File o trascinandolo apre [Importa da Anki]{.ui}. Prima legge il
pacchetto — [Controllo il pacchetto…]{.ui}, [Estrazione…]{.ui},
[Leggo le carte…]{.ui} — poi mostra [Pronto da studiare]{.ui}: quanti
mazzi di Anki, [Carte]{.ui}, [Immagini]{.ui} e [Audio]{.ui} ha trovato.

Se il pacchetto contiene carte che hai già studiato, il foglio mostra anche [Mantieni i progressi di Anki]{.ui}, attivo per impostazione predefinita. Se è attivo, quelle carte mantengono la pianificazione e la cronologia di ripasso di Anki. Se lo disattivi, tutte le carte ripartono da zero.

![Il pannello Importa da Anki: il riepilogo, Cosa è cambiato e Opzioni.](images/manual/{lang}/05-anki-report.jpg){.phone}

Sotto [Cosa è cambiato]{.ui} c'è il resoconto dell'importazione: una
frase semplice per ogni cosa che vale la pena sapere prima di
confermare. Per esempio:

- *240 schede mantengono la pianificazione e la cronologia di ripasso di Anki.* (Con un mazzo condiviso o con [Mantieni i progressi di Anki]{.ui} disattivato: *Qui le carte ripartono da zero. La cronologia di ripasso resta in Anki.*)
- *Le risposte non ripetono più la domanda: JustFlip la tiene a schermo
  mentre giri la carta.*
- *12 immagini non sono state lette e sono state escluse.*
- *3 carte non avevano nulla sul lato della domanda e sono state
  saltate.*
- *2 campi provenivano da componenti aggiuntivi di Anki e sono stati
  esclusi.*

Nelle tue carte non viene scritto nulla. Un'immagine mancante manca e
basta, e il resoconto è l'unico posto in cui viene detto.

Sotto [Opzioni]{.ui} ci sono i [Mazzi]{.ui} che l'importazione creerà, e
una scelta — [Se hai già queste carte]{.ui}:

| Opzione | Le carte che hai già importato da questo pacchetto |
|---|---|
| [Aggiungi una nuova copia]{.ui} | Restano come sono; l'intero pacchetto viene aggiunto di nuovo, come nuovi mazzi. È l'impostazione predefinita |
| [Salta quelle che ho già]{.ui} | Restano come sono; vengono aggiunte solo le carte nuove |
| [Aggiornale e mantieni i miei progressi]{.ui} | Testo, immagini e tag vengono aggiornati dal file; la tua pianificazione non viene toccata |

JustFlip! ricorda da quale nota e carta di Anki proviene ogni carta
importata, quindi l'abbinamento funziona anche dopo che hai modificato
la domanda in JustFlip!. Tocca [Importa]{.ui} per aggiungere le carte.

::: tip
#### Aggiornare un mazzo che studi ancora in Anki

Continua a lavorare in Anki, esporta di nuovo e importa con
[Aggiornale e mantieni i miei progressi]{.ui}. Le correzioni arrivano,
le nuove note vengono aggiunte e la tua pianificazione di JustFlip!
resta tua.
:::

::: gotcha
#### L'importazione rapida salta la scelta

Due percorsi di Anki importano subito, senza pannello e sempre come
nuova copia: [Importa carte]{.ui} dal menu di un interesse, e più file
Anki scelti insieme. Per saltare o aggiornare le carte che hai già,
importa un file alla volta dal menu [Aggiungi o importa]{.ui}.
:::

## Fogli di calcolo (CSV) {#csv}

Un file CSV è il modo più semplice per portare un elenco in JustFlip!:
una lista di vocaboli, un glossario, un'esportazione da un'altra app.
Ogni riga è una carta; una colonna è la domanda, un'altra la risposta.

```csv
Domanda,Risposta
el perro,il cane
el gato,il gatto
"la casa, el hogar",la casa
```

Dopo [Continua]{.ui}, [Importa CSV]{.ui} mostra un'anteprima in tempo
reale:

- **[Separatore]{.ui}** — virgola, punto e virgola, barra verticale o
  tabulazione. JustFlip! lo deduce dalle prime righe; cambialo se le
  colonne sembrano sbagliate.
- **[Salta la prima riga come intestazione]{.ui}** — inizialmente
  disattivato. Attivalo quando la prima riga contiene i titoli delle
  colonne.
- **[Mappatura colonne]{.ui}** — scegli quale colonna è
  [Fronte (domanda)]{.ui} e quale [Retro (risposta)]{.ui}. Le altre
  colonne vengono ignorate.
- **[Anteprima]{.ui}** — le prime righe così come verranno lette.

Tocca **Importa (N)** quando tutto sembra a posto.

![L'anteprima di Importa CSV con il separatore, l'interruttore dell'intestazione, la mappatura delle colonne e un'anteprima delle righe.](images/manual/{lang}/05-csv-preview.jpg){.phone}

Alcuni dettagli che ti evitano un secondo tentativo:

- Metti un campo tra virgolette doppie quando contiene il separatore o un
  a capo; scrivi una virgoletta al suo interno come `""`.
- Il testo può usare la sintassi delle carte del Capitolo 3 — grassetto,
  formule, lacune. Un `{{c1::…}}` in una cella CSV resta **una** carta con
  tutte le sue lacune; le carte CSV non vengono mai divise come le note
  cloze di Anki.
- Una riga con la domanda vuota viene saltata. Una riga con la risposta
  vuota viene importata come carta senza risposta.
- Le carte CSV non hanno lingua, immagini né tag.

::: gotcha
#### La riga di intestazione diventa una carta

[Salta la prima riga come intestazione]{.ui} parte disattivato.
Dimenticalo, e i titoli delle colonne diventano una carta chiamata
"Domanda" la cui risposta è "Risposta". Controlla la prima riga
dell'anteprima prima di importare.
:::

::: gotcha
#### Un CSV non aggiorna mai nulla

Ogni importazione CSV crea un **nuovo** mazzo, anche quando esiste già
un mazzo con lo stesso nome — e ti ritrovi con due mazzi. Per cambiare
carte importate da un foglio di calcolo, modificale in JustFlip!, oppure
elimina il vecchio mazzo prima di importare il file corretto.
:::

## Mazzi creati con l'IA {#ai}

Il mazzo da cui si impara più facilmente è quello creato dal *tuo*
materiale: i tuoi appunti, un capitolo, la trascrizione di una lezione.
JustFlip! non comunica con nessuna IA. È invece il sito web a dare alla
tua IA le istruzioni per scrivere un file di mazzo di JustFlip!, e tu
importi il risultato.

| Pagina | Per | Ottieni |
|---|---|---|
| [Prompt IA](https://just-flip.app/ai-prompt.html) | Qualsiasi IA di chat — ChatGPT, Claude, Gemini | Un file `.flashcards` di solo testo |
| [Skill IA](https://just-flip.app/ai-skill.html) | Un agente di programmazione che può leggere i file sul tuo computer | Un `.flashcards.zip`, con immagini e suoni |

Un'IA di chat può restituire solo testo, quindi la pagina Prompt IA
chiede un mazzo di solo testo. Un agente di programmazione può aprire le
tue immagini e i tuoi audio in locale e impacchettarli in uno zip, con
descrizioni, licenze e persino occlusione immagine.

Importa il file come qualsiasi altro. Il file indica da solo il suo
interesse e i suoi mazzi, quindi non c'è alcun pannello di
configurazione: JustFlip! usa un interesse con quel nome se ce l'hai, e
altrimenti lo crea. Un file di mazzo può anche impostare la lingua di
ogni mazzo, così le carte sono pronte per essere lette ad alta voce.

::: tip
#### Rivedi prima di imparare

Un'IA può sbagliare con grande sicurezza. Scorri un nuovo mazzo una
volta prima del primo ripasso, e correggi o elimina tutto ciò che è
dubbio. Dieci minuti di modifiche valgono più di settimane passate a
ripassare una risposta sbagliata.
:::

## Incolla carte {#paste}

A volte le carte sono già negli appunti — la risposta di un'IA di chat,
una colonna di un foglio di calcolo, un elenco in Note. Scegli
[Aggiungi o importa]{.ui} → [Incolla carte]{.ui}. Come spiega la sua
nota [Come funziona]{.ui}, copi le carte — una per riga, domanda e
risposta separate da una virgola — e tocchi Incolla. JustFlip! trova le
carte in ciò che hai copiato, anche dentro il blocco di codice di un'IA
di chat, e ignora il testo intorno.

Un elenco incollato passa per gli stessi pannelli [Importa carte]{.ui} e
[Importa CSV]{.ui} di un file CSV, in un mazzo chiamato
**Carte incollate** a meno che tu non lo cambi. Un file di mazzo
incollato — il JSON che un'IA scrive seguendo la pagina Prompt IA —
viene importato come un file `.flashcards`. Nulla lascia il tuo
dispositivo.

## Mazzi curati {#curated}

La [pagina Mazzi](https://just-flip.app/decks/) del sito è una piccola
raccolta di mazzi pronti — lingue, musica, matematica, programmazione e
scienze — in tutte le lingue dell'app. Tocca **Scarica mazzo**, poi apri
il file con JustFlip!. Sono normali file `.flashcards` e
`.flashcards.zip`, quindi anche per loro vale tutto ciò che trovi in
[Importare di nuovo lo stesso file](#reimport).

## Importare di nuovo lo stesso file {#reimport}

I file di mazzo — `.flashcards` e `.flashcards.zip` da un'IA, dalla
raccolta curata o dal tuo editor — sono pensati per essere importati più
e più volte. Correggi un refuso nel file, aggiungi dieci carte,
importalo: il tuo mazzo viene aggiornato invece che raddoppiato.

Ecco come JustFlip! li abbina:

1. **L'interesse** è quello con il nome di interesse indicato nel file.
   Maiuscole e spazi di troppo non contano.
2. **Il mazzo** è quello, in quell'interesse, con *esattamente* il nome
   di mazzo indicato nel file.
3. **Ogni carta** viene abbinata in base al **testo della domanda**,
   esattamente com'è scritto. Una carta abbinata viene aggiornata sul
   posto — risposta, immagini e suoni vengono sostituiti da quelli del
   file, e i progressi restano. Una carta senza corrispondenza viene
   aggiunta.

Le carte che sono nel tuo mazzo ma non nel file non vengono toccate;
un'importazione non elimina mai nulla.

::: gotcha
#### Due carte, una domanda

Poiché le carte vengono abbinate in base alla domanda, due carte dello
stesso mazzo con lo stesso testo della domanda — "Che nota è questa?",
"Traduci:" — finiscono per diventare una sola carta, anche in
un'importazione nuova di zecca. Dai a ogni carta la sua domanda, oppure
sposta la domanda comune nel nome del mazzo.
:::

::: gotcha
#### Le carte con sola immagine vengono aggiunte ogni volta

Una carta senza alcun testo della domanda — solo un'immagine — non può
essere abbinata, quindi non viene mai unita. Questo mantiene intatto un
mazzo di immagini "Che cos'è?", ma significa anche che importare di
nuovo il file aggiunge quelle carte una seconda volta. In un file di
mazzo, ometti del tutto il campo `q` per queste carte: un `"q": ""`
vuoto conta come testo della domanda e si unisce a tutte le altre
domande vuote.
:::

::: gotcha
#### Le tue modifiche non sopravvivono a una reimportazione

Aggiornare una carta ne sostituisce il contenuto con quello del file. Se
hai corretto una risposta in JustFlip!, fai la stessa correzione nel
file — altrimenti la prossima importazione rimette la vecchia risposta.
E se rinomini il mazzo in JustFlip!, il file non lo trova più: la
prossima importazione crea un mazzo nuovo con il vecchio nome.
:::

I pacchetti Anki seguono una regola tutta loro — la scelta nel
[pannello di importazione](#anki-report). I file CSV non vengono mai
abbinati.

## Esportare e condividere {#export}

Per portare con te un interesse, tienilo premuto (clic con il tasto
destro sul Mac) e scegli [Esporta archivio]{.ui}. Sul Mac,
**Archivio › Export Interest…** (⇧⌘E) fa lo stesso per l'interesse
selezionato. JustFlip! scrive un unico file,
*Nome interesse*.flashcards.zip, e ti chiede dove salvarlo.

L'archivio contiene tutto ciò che c'è in quell'interesse: ogni mazzo e
ogni carta, le immagini e i suoni, e **tutti i tuoi progressi di
ripasso**. Salvalo in File o in iCloud Drive, invialo con AirDrop o
mandalo come qualsiasi altro file.

Importare un archivio ripristina esattamente quell'interesse. Il suo
interesse, i mazzi e le carte vengono abbinati grazie agli
identificatori nascosti contenuti nell'archivio, non in base al nome,
quindi nulla viene raddoppiato — vengono trovati anche i mazzi
rinominati.

::: gotcha
#### Un archivio porta con sé la sua pianificazione

Importare un archivio imposta la pianificazione di ogni carta su quella
salvata nell'archivio. Importa un vecchio archivio sopra un interesse
che stai ancora studiando, e quelle carte tornano al punto in cui erano
quando le hai esportate. La cronologia dei ripassi viene unita, non
duplicata. Le carte aggiunte dopo l'esportazione restano — e quelle
eliminate dopo l'esportazione ritornano.
:::

::: note
#### Condividere un mazzo con qualcuno

Un archivio contiene anche i tuoi progressi, e chi lo importa riceve la
tua pianificazione per quelle carte. Per una copia pulita, condividi
invece il file di mazzo originale — il `.flashcards` o il
`.flashcards.zip` che hai importato.
:::

Lo stesso menu ha [Esporta statistiche]{.ui}, come
[Foglio di calcolo (CSV)]{.ui} o [Dati completi (JSON)]{.ui}. Questi
file servono per la lettura e l'analisi, non per essere reimportati
(Capitolo 9). Per un backup dell'intera libreria, vedi il Capitolo 10.

## Quando un'importazione ti sorprende {#troubleshooting .cheatsheet}

| Cosa vedi | Perché, e cosa fare |
|---|---|
| Meno carte delle righe o delle note | Carte con lo stesso testo della domanda si sono unite (file di mazzo), oppure righe con la domanda vuota sono state saltate (CSV) |
| Più carte delle note di Anki | Ogni numero cloze è una carta a sé — è normale |
| Il mazzo è comparso due volte | Un CSV crea sempre un nuovo mazzo; un'importazione di Anki fatta con [Aggiungi una nuova copia]{.ui} aggiunge nuovi mazzi |
| Le carte con sola immagine sono raddoppiate | Non possono essere abbinate in una reimportazione; elimina quelle in più, o importa in un mazzo nuovo |
| Le carte importate restano mute | Le carte di Anki e CSV non hanno una lingua — impostala sulle carte (Capitolo 3) |
| La prima carta è "Domanda / Risposta" | Attiva [Salta la prima riga come intestazione]{.ui} |
| Tutto il testo è in una sola colonna | Cambia il [Separatore]{.ui} nell'anteprima del CSV |
| Manca un'immagine | Controlla il resoconto di Anki, e ricorda che SVG non è supportato (Capitolo 4) |
| La mia correzione è sparita dopo un'importazione | L'ha sostituita la versione del file — correggi anche il file |
| La pianificazione di una carta è tornata indietro | Hai importato un archivio più vecchio di quell'interesse |
