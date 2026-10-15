---
slug: scheduling
number: 6
title: Come funziona la pianificazione
description: "Come JustFlip! decide quando rivedrai una carta: fasi di apprendimento, intervalli e facilità, cosa rende una carta da ripassare, priorità di ripasso, rinvii, monitoraggi dei progressi e Pianificazione intelligente."
---

# Come funziona la pianificazione {#scheduling number="6"}

::: lede
Non devi mai pianificare un ripasso. Ogni valutazione che dai dice a
JustFlip! quanto bene conosci una carta, e l'app calcola quando
mostrartela di nuovo: presto se ti è sfuggita, molto più avanti se era
facile. Questo capitolo solleva il coperchio. Vedrai cosa significano le
fasi, perché gli intervalli crescono in quel modo e quali controlli ti
permettono di guidare la coda senza imbrogliare la tua memoria.
:::

::: inthischapter
- Le cinque fasi che attraversa una carta, e cosa la fa avanzare
- Intervalli e facilità in parole semplici, con i calcoli esatti per i curiosi
- Cosa significa "da ripassare", e come JustFlip! decide cosa viene prima
- Dedica più tempo a una materia con le priorità di ripasso
- Rinvia una carta, un mazzo o un intero interesse, e riprendilo
- Segui le abilità che le flashcard non possono valutare, con i monitoraggi dei progressi
:::

## L'idea in un minuto {#idea}

La memoria svanisce seguendo una curva. Subito dopo aver imparato
qualcosa lo dimentichi in fretta, e ogni volta che lo ricordi di nuovo la
curva si appiattisce. La ripetizione dilazionata sfrutta proprio questo:
ti mostra una carta poco prima che tu l'abbia dimenticata. Ogni ricordo
riuscito spinge più in là il ripasso successivo.

In JustFlip! ogni carta porta con sé tre numeri:

| Numero | Cosa significa |
|---|---|
| **Intervallo** | Quanto manca al ritorno della carta, da minuti a mesi |
| **Facilità** | Quanto velocemente cresce l'intervallo per questa carta. Parte da 2,5 |
| **Data di ripasso** | Il momento in cui l'intervallo scade e la carta è di nuovo pronta |

La valutazione dopo ogni giro modifica la facilità e l'intervallo, e la
data di ripasso si adegua. I pulsanti di valutazione mostrano
l'intervallo che darebbe ogni scelta, quindi nulla succede alle tue
spalle. Dopo la valutazione, un breve suggerimento [Prossima: …]{.ui}
conferma quando rivedrai la carta.

## Le cinque fasi {#stages}

Ogni carta si trova in una di cinque fasi. La fase è un'etichetta che
descrive l'intervallo della carta. Non è lei a deciderlo.

| Fase | Significato | Intervallo tipico |
|---|---|---|
| **Mai vista** | Mai studiata | — |
| **Apprendimento** | Appena imparata, o dimenticata durante il Ripasso | da minuti a qualche giorno |
| **Ripasso** | L'intervallo ha raggiunto i 7 giorni | da una a quattro settimane |
| **Acquisita** | L'intervallo ha raggiunto i 30 giorni | mesi |
| **Riapprendimento** | Una carta Acquisita che hai dimenticato | di nuovo passi brevi |

```text
Mai vista ─voto─▶ Apprendimento ─7 giorni─▶ Ripasso ─30 giorni─▶ Acquisita
                        ▲                      │                     │
                        └────── Di nuovo ──────┘            Di nuovo │
                                                                     ▼
                                                              Riapprendimento
```

Cosa sposta una carta da una fase all'altra:

- **Qualsiasi valutazione** porta una carta Mai vista in Apprendimento.
- **Difficile, Bene o Facile** fanno salire una carta quando il nuovo
  intervallo supera una soglia: con 7 giorni diventa Ripasso, con 30
  giorni Acquisita. Le fasi seguono l'intervallo, quindi un Facile su una
  carta nuova non la rende Acquisita all'istante. Deve comunque
  guadagnarsi i suoi 30 giorni.
- **Di nuovo** rimanda in Apprendimento una carta in Apprendimento o in
  Ripasso, e in Riapprendimento una carta Acquisita. In entrambi i casi
  l'intervallo scende a 5 minuti.
<!-- VERIFY: in SM-2 mode a Relearning card's Good/Easy interval is always the initial step (1 or 4 days), so it never reaches the 7-day threshold and appears to stay in Relearning. Confirm the intended exit path in CardStatistics+SRS.swift calculateNextInterval before describing how a card leaves Relearning. -->

La schermata Statistiche conta le tue carte per fase, sotto
**Raccolta**: [Nuove]{.ui}, [Apprendimento]{.ui} (che include il
Riapprendimento), [Ripasso]{.ui} e [Acquisite]{.ui}. Il Capitolo 9 tratta
il resto di quella schermata.

::: note
#### Padronanza non vuol dire Acquisita

La percentuale di **Padronanza** di un mazzo o di un interesse conta le
carte la cui *ultima* valutazione è stata Bene o Facile. Non è la quota
di carte Acquisite. Un mazzo può mostrare una padronanza alta dopo una
sola buona sessione, molto prima che qualcosa venga acquisito. La
padronanza ti dice come è andata di recente. Le fasi ti dicono quanto è
consolidata la conoscenza.
:::

## Intervalli e facilità {#intervals}

### La prima valutazione

Una carta che non hai mai valutato, o che hai appena dimenticato, parte
da primi passi fissi:

| Valutazione | Prossimo ripasso |
|---|---|
| Di nuovo | tra 5 minuti |
| Difficile | tra 20 minuti |
| Bene | tra 1 giorno |
| Facile | tra 4 giorni |

### Ogni valutazione successiva

Da quel momento in poi, ogni valutazione lavora sull'intervallo che la
carta ha già:

- **Di nuovo** ricomincia da capo: 5 minuti, e una facilità più bassa.
- **Difficile** fa crescere un po' l'intervallo, del 20 %, e abbassa la
  facilità.
- **Bene** moltiplica l'intervallo per la facilità della carta: circa
  2,5× per una carta tipica.
- **Facile** lo moltiplica per la facilità *e* per un bonus di 1,3, e
  alza la facilità.

La facilità è il ritmo di crescita della singola carta. Ogni Difficile e
ogni Di nuovo fanno crescere la carta più lentamente da lì in avanti.
Ogni Facile la fa crescere più in fretta. La facilità non scende mai
sotto 1,3 né sale sopra 3,5, quindi anche una carta difficile continua
ad avanzare, solo a passi più piccoli.

Ecco una carta nuova a cui rispondi sempre **Bene**:

| Ripasso | Intervallo | Fase successiva |
|---|---|---|
| 1° | 1 giorno | Apprendimento |
| 2° | 2,5 giorni | Apprendimento |
| 3° | circa 6 giorni | Apprendimento |
| 4° | circa 16 giorni | Ripasso |
| 5° | circa 39 giorni | Acquisita |

Cinque ripassi riusciti distribuiti su circa due mesi, e la carta torna
solo una volta al mese o meno.

::: tip
#### Perché i giorni oscillano

Gli intervalli di due giorni o più ricevono una piccola spinta casuale
fino a ±10 %. Altrimenti le carte imparate insieme la stessa sera
tornerebbero insieme per sempre, come un unico grosso blocco nel tuo
calendario. La spinta le distribuisce sui giorni vicini. I pulsanti di
valutazione mostrano sempre l'intervallo prima della spinta, quindi la
data reale può variare di un giorno circa.
:::

::: note
#### Sotto il cofano: la variante di SM-2

JustFlip! usa una variante di SM-2, l'algoritmo alla base di SuperMemo e
Anki. Con facilità *E* e intervallo attuale *I*, una valutazione
aggiorna prima la facilità, limitata tra 1,3 e 3,5:

$$
E' = \min\bigl(3.5,\ \max(1.3,\ E + \Delta)\bigr), \qquad \Delta \in \{-0.20,\ -0.15,\ 0,\ +0.15\}
$$

rispettivamente per Di nuovo, Difficile, Bene e Facile. Poi il nuovo
intervallo per una carta già avviata è:

$$
I_{\text{hard}} = \max(1.2\,I,\ 1\ \text{hour})
$$

$$
I_{\text{good}} = \max(E'\,I,\ 1\ \text{day})
$$

$$
I_{\text{easy}} = \max(1.3\,E'\,I,\ 4\ \text{days})
$$

Di nuovo dà sempre 5 minuti. Gli intervalli di due giorni o più vengono
poi moltiplicati per un fattore casuale:

$$
I_{\text{final}} = I \times (1 + u), \qquad u \in [-0.1,\ 0.1]
$$
:::

### Pianificazione intelligente (Pro) {#smart-schedule}

In **Impostazioni › Comportamento**, l'interruttore
[Pianificazione intelligente]{.ui} (contrassegnato [BETA]{.ui})
sostituisce gli intervalli di SM-2 con **FSRS-5**, un pianificatore
moderno. FSRS pianifica ogni ripasso nel momento in cui la probabilità
di ricordare la carta scende a circa il 90 %. L'obiettivo è fare meno
ripassi a parità di ritenzione. Cambia solo gli intervalli di Difficile,
Bene e Facile. Di nuovo riporta comunque una carta dopo 5 minuti.

JustFlip! mantiene comunque aggiornati i valori di SM-2, quindi puoi
disattivare la Pianificazione intelligente quando vuoi senza perdere
nulla. È una funzione Pro. Senza Pro, toccare l'interruttore apre invece
la schermata Pro.

## Cosa significa "da ripassare" {#due}

Una carta è **da ripassare** quando la sua data di ripasso è passata, a
meno che tu non l'abbia ritirata o rinviata. Le carte ritirate
(Capitolo 2) e quelle rinviate (vedi [Rinviare](#postponing)) conservano
la loro pianificazione. Semplicemente non compaiono finché sono messe da
parte.

Le carte che non hai mai studiato non sono da ripassare. Sono
**nuove**. La sessione di [Oggi]{.ui} mescola le due: prima le carte da
ripassare, poi quelle nuove dalla tua quota giornaliera. I valori
predefiniti sono 20 [Carte per sessione]{.ui} e 10
[Nuove carte al giorno]{.ui}, entrambi in **Impostazioni ›
Comportamento**.

### Quali carte vengono prima

Nella sessione di Oggi e nel menu di ripasso della schermata Mazzi,
JustFlip! costruisce la coda così:

1. **Prima le più vecchie.** Le carte diventate da ripassare in un
   giorno precedente vengono prima di quelle diventate da ripassare più
   tardi.
2. **Un rimescolamento quotidiano all'interno di ogni giorno.** Le carte
   in scadenza lo stesso giorno vengono mescolate in un ordine che cambia
   ogni giorno. Così una sessione breve non pesca sempre la stessa fetta
   iniziale di un grosso arretrato.
3. **I mazzi si alternano.** Le carte di ogni mazzo vengono intercalate
   con quelle degli altri a turno, in base alla priorità (vedi
   [Priorità di ripasso](#priorities)).
4. **Le carte nuove per ultime,** fino a ciò che resta della quota
   giornaliera e della dimensione della sessione.
5. **Le carte sorelle con occlusione immagine vengono distanziate,** così
   due carte della stessa immagine non arrivano una dopo l'altra.

Un ripasso avviato dall'elenco delle carte di un singolo mazzo mescola
le carte da ripassare di quel mazzo.

::: gotcha
#### Di nuovo non ripete la carta nella stessa sessione

Una carta valutata **Di nuovo** torna da ripassare dopo 5 minuti, ma non
ricompare più avanti nella sessione in corso. La ritroverai nella
sessione successiva. Se vuoi riprovare subito, finisci la sessione e
avviane un'altra dopo qualche minuto.
:::

### Urgenza

Anche interessi e mazzi ricevono un punteggio di **urgenza**, che guida
l'indicatore colorato negli elenchi e l'ordinamento [Per urgenza]{.ui}.
Combina diversi segnali. I più importanti sono la quota di carte da
ripassare e quanto è in ritardo la carta più vecchia. Quelli minori sono
quanto tempo è passato dall'ultima volta che hai studiato il mazzo, una
padronanza bassa e qualche carta nuova. Le carte ritirate e rinviate non
contano. Per qualche ora dopo che hai studiato un mazzo, la sua urgenza
resta a zero, così l'indicatore non si accende per via dei ritorni a 5
minuti.

**Impostazioni › Ritmo di ripasso** cambia la velocità con cui sale
l'urgenza: **Rilassato** (lentamente, con primi blocchi più piccoli),
**Costante** (l'impostazione predefinita) o **Intenso** (rapidamente,
con l'intera coda visibile). Il ritmo di ripasso non cambia mai gli
intervalli.

## Priorità di ripasso {#priorities}

Quando hai più carte da ripassare che tempo, la priorità decide quali
carte vedi per prime. Ogni interesse ha una
[Priorità di apprendimento]{.ui} da 0 % a 100 %, a passi del 5 %. Parte
da **75 %**. Ogni mazzo per impostazione predefinita usa
[Eredita dall'interesse]{.ui}, oppure imposta un valore proprio.

Puoi impostarla in tre punti:

- **Un interesse:** tienilo premuto nell'elenco degli interessi, scegli
  [Modifica interesse]{.ui} e sposta il cursore
  [Priorità di apprendimento]{.ui}.
- **Un mazzo:** tienilo premuto, scegli [Modifica mazzo]{.ui}, disattiva
  [Eredita dall'interesse]{.ui} e sposta il cursore.
- **Tutti i mazzi di un interesse insieme:** nella schermata Mazzi, apri
  il menu [Opzioni mazzo]{.ui} (l'icona della cartella) e scegli
  [Priorità di ripasso]{.ui}. Il pannello mostra il cursore
  [Priorità dell'interesse]{.ui} e, sotto [Priorità del mazzo]{.ui}, una
  riga per ogni mazzo.

![Il pannello Priorità di ripasso: in alto il cursore dell'interesse, poi una riga per mazzo con il suo interruttore Eredita dall'interesse.](images/manual/{lang}/06-review-priority.jpg){.phone}

### Come funziona il mix

La priorità cambia l'*ordine* della coda, non il suo contenuto. Immagina
che ogni mazzo distribuisca a turno le sue carte da ripassare. Un mazzo
con priorità doppia distribuisce il doppio delle volte:

| Mazzo | Priorità | Posizione delle sue carte nella sessione |
|---|---|---|
| Spagnolo | 100 % | 1ª, 3ª, 4ª, 6ª, 7ª … |
| Chimica | 50 % | 2ª, 5ª, 8ª … |

Con il 75 % predefinito ovunque, i mazzi si alternano semplicemente, una
carta ciascuno. Una priorità più alta si prende una parte maggiore di una
sessione limitata, e una più bassa viene spinta verso la fine.

::: gotcha
#### La priorità non nasconde mai una carta

Anche allo 0 % le carte da ripassare di un mazzo restano da ripassare.
Vengono solo proposte dopo tutto il resto. I conteggi delle carte da
ripassare nel widget, in Oggi e nella schermata Mazzi restano
esattamente gli stessi quando sposti un cursore. La priorità conta solo
quando una sessione è limitata: in Oggi e nel menu di ripasso della
schermata Mazzi. Il ripasso di un singolo mazzo non ha nulla con cui
competere.
:::

## Rinviare {#postponing}

A volte una carta non è sbagliata, semplicemente non è il momento giusto:
la settimana d'esame di un'altra materia, una vacanza, un mazzo che
riprenderai il mese prossimo. Valutarla Di nuovo o Difficile ne
danneggerebbe la pianificazione. **Rinviarla** invece la mette in pausa,
senza toccare minimamente la pianificazione.

### Come rinviare

Durante qualsiasi ripasso, tocca il pulsante [Rinvia]{.ui} (l'icona
dell'orologio in alto nella schermata di ripasso). Scegli l'ambito:

- [Rinvia questa carta]{.ui}
- [Rinvia questo mazzo]{.ui}
- [Rinvia questo interesse]{.ui}

Poi scegli per quanto tempo: [Domani]{.ui}, [Tra 3 giorni]{.ui},
[Tra 1 settimana]{.ui}, oppure [Data personalizzata…]{.ui} per scegliere
un giorno in [Riprendi il]{.ui}. Una pausa dura fino all'inizio di quel
giorno, quindi "Domani" significa tutto domani, non 24 ore da adesso.

![Il menu Rinvia durante un ripasso, con le opzioni per carta, mazzo e interesse.](images/manual/{lang}/06-postpone-menu.jpg){.phone}

Le carte in pausa escono subito dalla sessione in corso. Se rinvii il
mazzo o l'interesse durante il ripasso di un singolo mazzo, la sessione
termina, perché non resta nulla da ripassare.

### Cosa fa una pausa

Una pausa è un semplice filtro. Nulla viene valutato, intervallo e
facilità restano come sono e la cronologia della carta non cambia.
Finché la pausa dura:

| Dove | Carte rinviate |
|---|---|
| Oggi, il widget, i conteggi da ripassare e la previsione | escluse |
| [Carte da ripassare]{.ui} e [Carte difficili]{.ui} | escluse |
| [Carte nuove]{.ui} (menu della schermata Mazzi) | escluse, anche se mai studiate |
| [Tutte le carte]{.ui} | **incluse** |

Se una carta, il suo mazzo e il suo interesse sono tutti in pausa, vale
la data più lontana.

### Come togliere una pausa

Le pause terminano da sole alla data che hai scelto. Per terminarne una
prima, apri la schermata Mazzi di quell'interesse e scegli
[Opzioni mazzo]{.ui} › [Priorità di ripasso]{.ui}. Finché c'è qualcosa
in pausa, il pannello ha una sezione [Rinviato]{.ui} con il numero di
carte in pausa e un pulsante per ogni pausa attiva:

- [Riprendi questo interesse]{.ui}
- [Riprendi *nome mazzo*]{.ui}, uno per ogni mazzo in pausa

::: gotcha
#### Una singola carta non può essere ripresa prima

La sezione Rinviato elenca solo le pause di interessi e mazzi. Una pausa
su una singola carta conta nel totale ma non ha un pulsante Riprendi.
Scade semplicemente alla sua data. Per accorciarla, apri il ripasso
[Tutte le carte]{.ui} del mazzo, che ignora le pause. Quando la carta
compare, rinviala di nuovo con [Domani]{.ui}.
:::

::: tip
#### Tutte le carte è la modalità intensiva

[Tutte le carte]{.ui} include di proposito le carte ritirate e rinviate.
Usala la sera prima di un esame, o quando vuoi comunque passare in
rassegna un mazzo rinviato. Le valutazioni date lì contano come tutte le
altre.
:::

## Monitoraggi dei progressi (Pro) {#trackers}

Alcune abilità non stanno su una flashcard: un brano che stai studiando
al pianoforte, una tecnica di arrampicata, un libro che stai leggendo.
Un **monitoraggio dei progressi** è una carta speciale con un nome, note
facoltative e una barra di avanzamento che imposti tu.

Per aggiungerne uno, apri un mazzo, tocca il menu [Altre azioni]{.ui} e
scegli [Aggiungi monitoraggio dei progressi]{.ui}. La prima volta, una
breve introduzione spiega l'idea. Dai un nome al monitoraggio
([Cosa vuoi monitorare?]{.ui}) e, se vuoi, delle note. In seguito tocca il
monitoraggio e sposta il cursore [Progresso]{.ui}, da 0 a 100 a passi di
cinque, in base a quanto ti senti avanti.

![Un mazzo di monitoraggi dei progressi, ognuno con la sua barra e la sua percentuale.](images/manual/{lang}/06-progress-tracker.jpg){.phone}

Cosa fa e cosa non fa un monitoraggio:

- **Non viene mai ripassato.** I monitoraggi restano fuori da ogni
  sessione di ripasso, da Oggi, dai conteggi da ripassare, dalle fasi
  delle Statistiche e da Leggi carte.
- **Non conta per la tua serie.** Nessuno ti interroga, quindi non c'è
  nulla da contare.
- **Conta invece per la padronanza del mazzo.** Una flashcard aggiunge 1
  alla padronanza del mazzo quando la sua ultima valutazione è stata Bene
  o Facile. Un monitoraggio aggiunge il proprio progresso: 60 % aggiunge
  0,6. Un mazzo che contiene solo monitoraggi mostra come padronanza la
  media dei loro progressi.
<!-- VERIFY: the in-app intro string trackerIntroPoint3Text says trackers "never affect deck mastery", but DeckStatistics.masteryIncludingTrackers (used by the card list and BackgroundStatsActor) blends them in. The manual follows the code; one of the two should be aligned. -->

::: gotcha
#### I monitoraggi sono un'autovalutazione

Un monitoraggio dice esattamente ciò che gli dici tu, niente di più. È
proprio questo lo scopo, ma significa anche che un monitoraggio impostato
al 100 % alza la padronanza di un mazzo quanto una carta che conosci
davvero. Sii onesto con il cursore.
:::

I monitoraggi dei progressi sono una funzione Pro. Senza Pro, la voce di
menu ha un lucchetto e apre la schermata Pro. I monitoraggi che hai già
restano al sicuro. Al loro posto il mazzo mostra un'unica riga che dice
quanti monitoraggi contiene, e tornano non appena Pro è di nuovo attivo.

## Carte ritirate {#retire}

**Ritirare** una carta ("questa la so, smetti di chiedermela") la toglie
da Da ripassare e Difficili senza cancellarne la cronologia. È spiegato
nel Capitolo 2. Per la pianificazione, ricorda due cose:

- Una carta ritirata conserva intervallo, facilità e data di ripasso.
  Riattivala e riprende esattamente da dove si era fermata.
- Una carta ritirata conta ancora per la padronanza, ma non più per
  l'urgenza né per i conteggi da ripassare.

## Riferimento rapido {#reference}

| Impostazione o valore | Dove | Predefinito |
|---|---|---|
| Primi passi (Di nuovo / Difficile / Bene / Facile) | integrati | 5 min / 20 min / 1 giorno / 4 giorni |
| Facilità iniziale | integrata | 2,5 (intervallo 1,3–3,5) |
| Ripasso / Acquisita | integrati | intervallo ≥ 7 / ≥ 30 giorni |
| [Carte per sessione]{.ui} | Impostazioni › Comportamento | 20 |
| [Nuove carte al giorno]{.ui} | Impostazioni › Comportamento | 10 |
| [Pianificazione intelligente]{.ui} (Pro) | Impostazioni › Comportamento | disattivata |
| Ritmo di ripasso | Impostazioni › Ritmo di ripasso | Costante |
| [Priorità di apprendimento]{.ui} | Modifica interesse / Modifica mazzo / Priorità di ripasso | 75 %, i mazzi la ereditano |
| Rinvio | schermata di ripasso, icona dell'orologio | — |
| Suggerimento di ritiro | schermata dei risultati | intervallo ≥ 90 giorni e 4 risposte corrette di fila |
