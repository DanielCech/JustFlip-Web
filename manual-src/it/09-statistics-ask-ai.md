---
slug: statistics-ask-ai
number: 9
title: Statistiche e Chiedi all'IA
description: "Come JustFlip! misura carte da ripassare, padronanza, serie e ritenzione, come leggere onestamente la schermata Statistiche e come Chiedi all'IA trasforma la tua cronologia di ripasso in un resoconto di studio per il tuo tutor IA."
---

# Statistiche e Chiedi all'IA {#statistics-ask-ai number="9"}

::: lede
Ogni valutazione che dai è un piccolo indizio sulla tua memoria.
JustFlip! li conserva tutti, e questo capitolo ti mostra come leggerli:
i numeri che vedi ogni giorno, la schermata Statistiche più approfondita
e Chiedi all'IA, che trasforma ciò che sai e ciò che continui a sbagliare
in un briefing per l'IA di chat che preferisci.
:::

::: inthischapter
- Capisci carte da ripassare, padronanza e serie, e come viene calcolato ciascuno
- Leggi la ritenzione, la mappa di calore delle attività, la classifica dei mazzi e la previsione
- Distingui tra "imparare meglio" e "ripassare semplicemente di più"
- Istruisci ChatGPT, Claude o Gemini con un resoconto di studio di Chiedi all'IA
- Esporta le statistiche come foglio di calcolo o come dati JSON completi
:::

## I numeri che vedi ogni giorno {#everyday}

Non ti serve la schermata Statistiche per sapere come stai andando. Tre
numeri compaiono in tutta l'app, e sono tutti gratuiti.

| Numero | Dove lo vedi | Cosa significa |
|---|---|---|
| **Da ripassare** | Oggi, le righe dei mazzi, l'elenco delle carte | Le carte la cui data di ripasso è arrivata |
| **Padronanza** | Le righe di interessi e mazzi | La quota di carte la cui *ultima* valutazione è stata Bene o Facile |
| **Serie** | Oggi, come "*N* giorni di fila" | I giorni consecutivi con almeno un ripasso |

### Da ripassare

Una carta è da ripassare quando la sua data di ripasso pianificata è
passata. Oggi somma le carte da ripassare di tutti i tuoi interessi,
insieme alle carte nuove che la giornata consente, e ti dà una stima come
"Circa 6 min". Quando non c'è nulla da ripassare, Oggi dice
[Tutto in pari]{.ui} e mostra una piccola striscia [Prossimi 7 giorni]{.ui},
così vedi arrivare il carico di domani. Come vengono scelte le date di
ripasso è l'argomento del Capitolo 6.

### Padronanza

La padronanza di un mazzo conta tutte le carte la cui valutazione **più
recente** è stata Bene o Facile e la divide per il numero di carte del
mazzo. Anche le carte mai ripassate contano, come non ancora
padroneggiate, quindi un mazzo appena importato parte da 0 %. La
padronanza di un interesse è la media della padronanza dei suoi mazzi, e
ogni mazzo pesa allo stesso modo qualunque sia la sua dimensione.

::: note
#### La padronanza si muove in entrambe le direzioni

Poiché conta solo l'ultima valutazione, la padronanza è un'istantanea,
non un trofeo. Premi Di nuovo su una carta che sapevi la settimana scorsa
e quella carta smette di contare finché non la azzecchi di nuovo. È
proprio questo lo scopo: il numero ti dice ciò che sai *oggi*.
:::

### Serie

La tua serie conta i giorni in cui hai ripassato almeno una carta. Basta
una carta. Hai anche un giorno di tolleranza: se oggi non hai ancora
ripassato, la serie di ieri resta valida fino alla fine della giornata.

JustFlip! è indulgente con qualche giorno saltato. Fino a **due giorni
saltati** all'interno della serie attuale vengono colmati
automaticamente, così una sola giornata impegnativa non cancella
un'abitudine lunga un mese. I giorni colmati non si aggiungono al
conteggio. Se vuoi un promemoria prima che una serie si interrompa,
attiva [Salvataggio serie]{.ui} in **Impostazioni › Promemoria**. Invia
un promemoria serale quando quel giorno non hai ancora ripassato.

## Aprire le Statistiche (Pro) {#opening}

La schermata Statistiche completa è una funzione **Pro**. Aprila dal menu
[Impostazioni]{.ui} (l'icona dell'ingranaggio) in cima all'elenco degli
interessi, poi scegli [Statistiche]{.ui}. Senza Pro, la voce di menu ha
un lucchetto e apre invece la schermata Pro. Anche una prova gratuita di
Pro la sblocca.

![La schermata Statistiche: il selettore degli interessi, i quattro riquadri di riepilogo e le fasi della raccolta.](images/manual/{lang}/09-statistics-overview.jpg){.phone}

Le Statistiche guardano sempre **un interesse alla volta**. Sceglilo in
[Ambito]{.ui}, in alto. Tutto ciò che c'è sotto, dai riquadri di
riepilogo alla previsione, somma tutti i mazzi di quell'interesse. Così i
numeri restano confrontabili nel tempo. Per confrontare due materie,
cambia il selettore avanti e indietro.

La schermata si aggiorna da sola dopo i ripassi, quindi puoi tenerla
aperta su un iPad o un Mac accanto a una sessione di studio.

### I riquadri di riepilogo

| Riquadro | Cosa mostra |
|---|---|
| [Ritenzione consolidata]{.ui} | Quanto spesso hai ricordato le carte *consolidate* negli [Ultimi 30 giorni]{.ui} (vedi [Ritenzione](#retention)) |
| [Ripassi]{.ui} | Quanti ripassi hai fatto negli [Ultimi 7 giorni]{.ui}, oggi compreso |
| [Serie attuale]{.ui} | La tua serie in questo interesse, più la tua più lunga di sempre |
| [Da ripassare ora]{.ui} | Le carte da ripassare adesso, più quante lo diventano domani |

La serie qui viene calcolata come in Oggi, ma solo con i ripassi
dell'interesse selezionato. Può essere più corta della serie di Oggi,
che conta tutti gli interessi.

### Le fasi della raccolta

In [Raccolta]{.ui}, ogni carta dell'interesse viene classificata in una
di quattro fasi:

| Fase | Didascalia | Significato |
|---|---|---|
| [Nuove]{.ui} | Da scoprire | Mai ripassate |
| [Apprendimento]{.ui} | Costruzione del ricordo | In fase di apprendimento, o di riapprendimento dopo un errore |
| [Ripasso]{.ui} | Consolidamento | Nel normale ciclo di ripasso |
| [Acquisite]{.ui} | Padroneggiate | Intervalli di 30 giorni e oltre |

Una raccolta in salute si sposta verso destra nel corso delle settimane.
Il Capitolo 6 spiega come una carta passa da una fase all'altra.

::: gotcha
#### Da ripassare ora non è la stessa cosa di Oggi

[Da ripassare ora]{.ui} conta **tutte** le carte dell'interesse la cui
data di ripasso è passata, comprese quelle che hai rinviato. Oggi
propone solo ciò che sta in una sessione: le carte rinviate restano
fuori, e [Carte per sessione]{.ui} e [Nuove carte al giorno]{.ui}
limitano il resto. Un Da ripassare ora alto accanto a una breve sessione
di Oggi è normale, non un bug.
:::

## Ritenzione: complessiva e consolidata {#retention}

La ritenzione risponde a una domanda: *quando una carta è comparsa, te la
sei ricordata?* Un ripasso conta come ricordato quando l'hai valutato
**Bene o Facile**. Di nuovo e Difficile contano entrambi come non
ricordati.
<!-- VERIFY: whether a "Seen" response is stored as a review and so also counts as not remembered in retention, reviews and streaks. -->

Il grafico [Ritenzione consolidata]{.ui} mostra quella percentuale giorno
per giorno. Scegli il periodo con il controllo segmentato: [7D]{.ui},
[30D]{.ui}, [90D]{.ui} o [All]{.ui}.

![Il grafico della ritenzione su 90 giorni. Ogni punto è la quota di ripassi consolidati ricordati in un giorno.](images/manual/{lang}/09-retention-chart.jpg){.shot width=80%}

**Consolidata** è la parola chiave. Un ripasso conta come consolidato
quando la carta aveva già raggiunto un intervallo di **almeno 30 giorni**
prima che tu rispondessi. Le carte nuove sono facili da "ricordare": le
hai viste un minuto fa. Una carta che hai visto l'ultima volta un mese fa
è la vera prova della memoria a lungo termine, ed è questo che mostra la
linea consolidata.

Nelle prime settimane non avrai ancora ripassi consolidati. Il grafico
ripiega allora sulla **ritenzione complessiva**, ogni ripasso di ogni
carta, e la didascalia sotto lo dice: "Mostra tutti i ripassi —
l'indicatore consolidato appare quando le carte raggiungono intervalli di
30 giorni." Non appena le prime carte superano la soglia dei 30 giorni,
il grafico passa da solo all'indicatore consolidato. Se nel periodo non
c'è alcun ripasso, vedrai [Non ci sono ancora abbastanza ripassi
consolidati]{.ui}.

::: tip
#### Leggi l'andamento, non il singolo punto

Un singolo giorno può oscillare dal 60 % al 100 % con tre ripassi.
Scegli [30D]{.ui} o [90D]{.ui} e guarda la forma della linea. Una linea
piatta tra l'80 e il 90 e passa significa che la pianificazione sta
facendo il suo lavoro.
:::

## Costanza: serie e mappa di calore {#consistency}

La sezione [Costanza]{.ui} mostra la tua serie [Attuale]{.ui} e quella
[Più lunga]{.ui} per l'interesse, sopra una mappa di calore delle
**ultime 12 settimane**. Ogni quadratino è un giorno, e un quadratino più
scuro significa più ripassi in quel giorno, rispetto al giorno più
intenso del periodo. Il quadratino di oggi ha un piccolo punto.

![La mappa di calore Costanza: 12 settimane di giorni di ripasso, quadratini più scuri per i giorni più intensi.](images/manual/{lang}/09-heatmap.jpg){.shot width=80%}

Cerca vuoti e addensamenti, non il colore. Dieci minuti ogni giorno
valgono più di un'ora ogni domenica, perché la ripetizione dilazionata
dipende dal vedere le carte vicino alla loro data di ripasso.

::: note
#### Più lunga può sembrare più corta di Attuale

[Più lunga]{.ui} è la migliore sequenza di giorni *consecutivi* che tu
abbia mai avuto, senza i due giorni colmati che proteggono
[Attuale]{.ui}. Quindi una serie attuale sopravvissuta a un giorno
saltato può essere più lunga della tua "più lunga". Entrambi i numeri
sono giusti; misurano solo cose leggermente diverse.
:::

## Confronto mazzi {#deck-comparison}

[Confronto mazzi]{.ui} classifica i mazzi dell'interesse per ritenzione,
con il **più basso in cima**. Questa barra conta ogni ripasso che hai
mai fatto nel mazzo, non solo gli ultimi 30 giorni, quindi cambia
lentamente. Sotto il grafico, i primi quattro mazzi indicano quante carte
sono da ripassare ora e il numero totale di errori, cioè le volte in cui
una carta che sapevi è stata dimenticata di nuovo.

Il mazzo in cima è quello dove il tuo impegno rende di più. Di solito
significa una di tre cose:

1. **Le carte non sono chiare.** Due risposte possibili, o troppo su una
   sola carta. Il Capitolo 3 ha le soluzioni.
2. **Il materiale si basa su qualcosa che non hai imparato.** È
   esattamente ciò a cui serve [Chiedi all'IA](#ask-ai).
3. **Stai andando troppo di fretta.** Hai aggiunto più carte nuove di
   quante riesci ad assorbire. Abbassa per un po' [Nuove carte al
   giorno]{.ui}.

## Previsione dei prossimi ripassi {#forecast}

La previsione è un grafico a barre di quante carte diventano da
ripassare in ciascuno dei prossimi [7D]{.ui} o [30D]{.ui}, in base alla
pianificazione attuale. Le carte già in ritardo vengono aggiunte alla
barra di oggi, così un arretrato non sparisce mai dalla vista. Le carte
ritirate sono escluse.

Un picco tra due settimane è normale dopo una grande importazione o una
settimana intensa di carte nuove. Se ne vedi arrivare uno, distribuiscilo:
ripassa qualcosa in più nei giorni precedenti.

::: gotcha
#### La previsione conosce solo la pianificazione di oggi

Ogni valutazione che dai sposta la data di ripasso di una carta, quindi
la previsione è una proiezione, non una promessa. Le carte che sbagli
tornano prima e rendono il domani più pieno di quanto dicesse il grafico.
:::

## Leggere i numeri con onestà {#reading}

È facile sentirsi produttivi e imparare poco. La schermata Statistiche è
fatta per rispondere a una domanda più difficile: *sto imparando meglio,
o sto solo ripassando di più?* Qualche regola pratica:

- **Ripassi in aumento, ritenzione consolidata in calo.** Stai
  aggiungendo più in fretta di quanto riesci a consolidare. Rallenta con
  le carte nuove; l'arretrato ti ringrazierà.
- **Ritenzione consolidata stabile, ripassi stabili.** È l'obiettivo. La
  pianificazione sta facendo il suo lavoro; continua così.
- **Ritenzione complessiva alta, ma ancora nessun indicatore
  consolidato.** Non c'è niente che non va. Le tue carte semplicemente
  non hanno ancora raggiunto intervalli di 30 giorni. Dagli un mese.
- **Un mazzo molto al di sotto degli altri.** Quel mazzo ha un problema
  di carte o di prerequisiti, non di forza di volontà. Vedi
  [Confronto mazzi](#deck-comparison).
- **Una lunga serie con quadratini chiari.** Una carta al giorno tiene
  viva la serie, ma non la pianificazione. Tieni d'occhio anche
  [Da ripassare ora]{.ui}.

::: gotcha
#### Valuta con onestà, o i numeri mentono

Ogni cifra di questo capitolo è costruita a partire dalle tue
valutazioni. Premi Bene su una carta che ricordavi a metà e gonfi insieme
padronanza, ritenzione e intervalli, e la carta torna più tardi del
dovuto. Difficile non è un fallimento; è un'informazione.
:::

## Chiedi all'IA: istruisci il tuo tutor {#ask-ai}

Dopo qualche settimana, JustFlip! sa qualcosa che nessuna IA di chat sa:
quali carte padroneggi e quali continui a sbagliare. **Chiedi all'IA**
trasforma tutto questo in un prompt pronto all'uso, un resoconto di
studio con istruzioni, che incolli in ChatGPT, Claude, Gemini o qualsiasi
altro assistente.

### Dove trovarlo

| Da | Scegli | Ambito |
|---|---|---|
| Una carta nell'elenco delle carte (tieni premuto o clic con il tasto destro) | [Chiedi all'IA]{.ui} | Quella carta |
| Il pulsante con le scintille in cima a un ripasso | [Chiedi all'IA della carta]{.ui} | La carta sullo schermo |
| Il pulsante con le scintille in cima a un ripasso | [Chiedi all'IA del mazzo]{.ui} **(Pro)** | L'intero mazzo di quella carta |
| Un mazzo nell'elenco dei mazzi (tieni premuto o clic con il tasto destro) | [Chiedi all'IA]{.ui} **(Pro)** | L'intero mazzo |
| La schermata dei risultati dopo un ripasso | [Chiedi all'IA]{.ui} | Le carte di quella sessione |

Le singole carte e i resoconti di sessione sono gratuiti. I resoconti di
mazzo sono **Pro**: senza Pro, quelle voci di menu mostrano un lucchetto
e aprono la schermata Pro.

![Il pannello Chiedi all'IA: Copia prompt e Salva prompt, i link Apri in un'IA di chat e l'anteprima del prompt.](images/manual/{lang}/09-ask-ai-sheet.jpg){.phone}

### Cosa contiene il resoconto

Un **resoconto di mazzo** ordina le carte in base alla loro storia:

- **Carte su cui fai fatica**: carte con almeno un errore, una facilità
  bassa, o ancora in apprendimento. Sono elencate dalla peggiore, ognuna
  con la sua risposta e una riga di statistiche, per esempio "failed 4 of
  6 review(s) · 2 lapse(s) · ease 1.8 · avg 21s to answer". Il resoconto
  ne include fino a 25.
- **Carte che padroneggi**: elencate solo per domanda, come contesto,
  così l'IA non ti fa perdere tempo a rispiegartele (fino a 60).
- **Un mazzo nuovo** senza ancora una storia viene elencato carta per
  carta, e all'IA viene chiesto di dedurne l'argomento e insegnarne le
  basi.

Un **resoconto di carta** riguarda una sola carta: la sua domanda e
risposta, e la tua storia con lei. Un **resoconto di sessione** elenca le
carte del ripasso appena concluso, con la valutazione che hai dato a
ciascuna.

### Cosa chiede all'IA

Le istruzioni seguono la stessa idea a ogni livello:

1. **Insegnare i prerequisiti.** I tuoi errori spesso indicano
   conoscenze di base che il mazzo non copre, quindi all'IA viene chiesto
   di insegnarle partendo da zero.
2. **Spiegare i fraintendimenti** che le tue risposte sbagliate
   suggeriscono.
3. **Consigliare fonti**, ognuna con un link diretto, preferendo la
   documentazione ufficiale e riferimenti autorevoli.
4. **Facoltativamente, scrivere nuove flashcard** per le lacune, in CSV
   (`question,answer`) in un blocco di codice, pronte da importare.

Il prompt in sé è in inglese, la lingua che i modelli di chat seguono in
modo più affidabile, ma chiede all'IA di **rispondere nella lingua del
tuo dispositivo**, e di scrivere eventuali nuove flashcard nella lingua
del mazzo.

### Inviarlo

Il pannello ti offre [Copia prompt]{.ui} e [Salva prompt]{.ui}, che salva
un file `.txt`. In [Apri in un'IA di chat]{.ui}, le righe ChatGPT, Claude
e Gemini aprono l'assistente su una nuova conversazione, nella sua app se
l'hai installata o nel browser. Non portano con sé il prompt: prima
copia, poi apri, poi incolla. L'[Anteprima del prompt]{.ui} in fondo
mostra esattamente cosa stai per condividere.

::: tip
#### Chiudi il cerchio

Quando l'IA ti scrive nuove carte, copia la sua risposta, torna
all'elenco degli interessi e scegli [Aggiungi o importa]{.ui} ›
[Incolla carte]{.ui}. JustFlip! trova il CSV nella risposta, anche dentro
un blocco di codice, e ti mostra un'anteprima. Scegli tu il mazzo prima
che venga salvato qualcosa.
:::

::: note
#### JustFlip! non parla mai con un'IA

Chiedi all'IA non contiene alcuna IA. JustFlip! si limita a comporre del
testo sul tuo dispositivo, e non contatta mai alcun servizio di IA. Il
resoconto esce dall'app solo quando sei **tu** a copiarlo o salvarlo. Ciò
che succede dopo riguarda te e il servizio in cui lo incolli, quindi
leggi prima l'anteprima se le tue carte contengono qualcosa di privato.
:::

::: gotcha
#### Le carte con sola immagine arrivano come segnaposto

Il resoconto è testo semplice. Una carta senza testo su un lato, con solo
un'immagine o un audio, arriva all'IA come "(no text — this card uses an
image, audio, or PDF)". I monitoraggi dei progressi sono esclusi del
tutto dai resoconti di mazzo. Se un mazzo è composto soprattutto da
immagini, aggiungi una riga di testo alle carte che contano.
:::

## Esportare le statistiche {#export}

Per i tuoi fogli di calcolo e grafici, puoi esportare le statistiche
complete di un interesse. L'esportazione è gratuita.

- **iPhone e iPad:** tieni premuto un interesse nell'elenco degli
  interessi e scegli [Esporta statistiche]{.ui}, poi
  [Foglio di calcolo (CSV)]{.ui} o [Dati completi (JSON)]{.ui}. Scegli
  dove salvare il file.
- **Mac:** fai clic con il tasto destro su un interesse per lo stesso
  menu, oppure seleziona un interesse e scegli
  **Archivio › Export Statistics…**, che salva il CSV.

I file prendono il nome dall'interesse, per esempio
`Spagnolo.flashcards-stats.csv`.

### Il CSV: una riga per carta

| Colonna | Contenuto |
|---|---|
| `interest`, `deck` | Dove si trova la carta |
| `question`, `answer` | Il testo della carta |
| `state` | `unseen`, `learning`, `reviewing`, `relearning` o `graduated` |
| `ease_factor` | La facilità della carta (2.5 per una carta nuova) |
| `interval_days` | L'intervallo attuale, in giorni |
| `due_date` | Il prossimo ripasso, come data e ora ISO 8601 |
| `lapses` | Le volte in cui la carta è stata dimenticata dopo essere stata imparata |
| `streak` | Le risposte corrette di fila |
| `total_reviews` | Tutti i ripassi registrati |
| `success_rate` | La quota di risposte Bene o Facile, da 0 a 1 |
| `avg_review_time_sec` | Il tempo medio di risposta |
| `last_reviewed` | L'ora dell'ultimo ripasso, vuoto se mai ripassata |

### Il JSON: tutto

L'esportazione JSON ha gli stessi campi per carta, più un riepilogo delle
fasi per ogni mazzo, ogni sessione di studio con inizio, fine, numero di
carte e percentuale di successo, e la **cronologia** completa di ogni
carta: ogni ripasso con ora, valutazione, tempo di risposta, e intervallo
e facilità prima e dopo. Usalo quando vuoi tracciare la tua curva
dell'oblio.

::: gotcha
#### Le esportazioni delle statistiche sono a senso unico

Un file di statistiche serve per leggere, non per ripristinare. JustFlip!
non può reimportarlo, e non contiene immagini né suoni. Per spostare o
salvare un interesse *con* i suoi progressi, usa invece
[Esporta archivio]{.ui}; vedi il Capitolo 10.
:::
