---
slug: sync-backup
number: 10
title: Sincronizzazione, backup e i tuoi dati
description: "Come JustFlip! protegge le tue carte e i tuoi progressi di apprendimento: sincronizzazione iCloud, backup automatici, Eliminati di recente, ripristino, esportazione di archivi e una lista di controlli per quando la sincronizzazione sembra bloccata."
---

# Sincronizzazione, backup e i tuoi dati {#sync-backup number="10"}

::: lede
Le carte si possono riscrivere o importare di nuovo. I tuoi progressi di
apprendimento no: ogni valutazione, ogni intervallo, ogni giorno di serie
esiste solo perché ci hai messo il tuo tempo. Per questo JustFlip! li
protegge con tre livelli separati, ognuno dei quali copre un guasto che
gli altri non possono coprire. Questo capitolo spiega cosa fa ogni
livello, dove trovarlo e cosa fare quando qualcosa non sembra a posto.
:::

::: inthischapter
- Scopri i tre livelli: sincronizzazione iCloud, backup automatici ed esportazione manuale
- Leggi lo stato della sincronizzazione e la schermata Sincronizzazione iCloud
- Trova, ripristina e capisci i tuoi backup automatici
- Scopri cosa fa l'eliminazione, e cosa contiene Eliminati di recente
- Esporta un archivio di un interesse, progressi compresi
- Segui una lista di controlli quando la sincronizzazione sembra bloccata
:::

## Tre livelli di sicurezza {#layers}

| Livello | Che cos'è | Da cosa ti protegge |
|---|---|---|
| **1. Sincronizzazione iCloud** | La tua libreria, identica su ogni dispositivo | Un dispositivo perso, rotto o sostituito |
| **2. Backup automatici** | Istantanee periodiche che JustFlip! fa da solo | Errori che la sincronizzazione copierebbe ovunque |
| **3. Esportazione manuale** | File di archivio che salvi dove vuoi | Tutto il resto, compreso l'abbandono di iCloud |

Tutti e tre si trovano in **Impostazioni › Sicurezza dei dati**. Apri le
Impostazioni dall'icona dell'ingranaggio in cima all'elenco degli
interessi e scorri fino alla sezione [Sicurezza dei dati]{.ui}.

![Impostazioni › Sicurezza dei dati: Stato sincronizzazione, l'ultimo backup completo e l'ultima istantanea dei progressi, Posizione del backup, Eliminati di recente e i pulsanti Esporta backup e Ripristina backup.](images/manual/{lang}/10-data-safety.jpg){.phone}

::: gotcha
#### La sincronizzazione non è un backup

La sincronizzazione rende uguali tutti i dispositivi. Errori compresi:
elimina un interesse sull'iPad e sparisce da iPhone e Mac nel giro di
pochi minuti. La sincronizzazione non ha un suo "annulla". È proprio per
questo che esistono i livelli 2 e 3.
:::

## Sincronizzazione iCloud {#icloud-sync}

La sincronizzazione è inclusa per tutti, gratis e Pro. Non c'è nulla da
attivare in JustFlip!: se il dispositivo ha effettuato l'accesso a
iCloud, la tua libreria si sincronizza tramite il tuo account iCloud.

### Cosa si sincronizza

- Interessi, mazzi e carte, comprese immagini e suoni
- I tuoi progressi di apprendimento: ogni valutazione, intervallo, data
  di ripasso ed errore
- Carte ritirate e rinviate, bandierine, priorità e monitoraggi dei
  progressi
- Le eliminazioni, compreso ciò che aspetta in Eliminati di recente

Le tue **impostazioni restano su ogni dispositivo**: il tema, la
dimensione del testo, le voci, i promemoria e i limiti giornalieri come
[Nuove carte al giorno]{.ui}. Così puoi avere un telefono tranquillo e un
iPad più impegnativo. Apple Watch riceve le carte dall'iPhone invece che
da iCloud (vedi il Capitolo 8).

### Come si comporta

- **Prima offline.** Tutto funziona senza connessione. Le tue modifiche
  vengono salvate subito sul dispositivo e inviate quando torni online.
- **In background.** Non c'è un pulsante di sincronizzazione. Le
  modifiche viaggiano da sole, di solito in pochi secondi o qualche
  minuto.
- **Vince l'ultima modifica.** Se modifichi la stessa carta su due
  dispositivi prima che si sincronizzino, resta la modifica più recente.

::: tip
#### Un nuovo dispositivo, nel modo più semplice

Installa JustFlip! sul nuovo dispositivo, accedi con lo stesso Account
Apple e apri l'app. I tuoi interessi compaiono man mano che arrivano;
l'elenco vuoto lo indica mentre aspetta. Una libreria grande con molte
immagini può richiedere un po' di tempo alla prima sincronizzazione,
quindi lascia l'app aperta sotto Wi-Fi.
:::

## Lo stato della sincronizzazione {#sync-status}

La prima riga di Sicurezza dei dati, [Stato sincronizzazione]{.ui},
mostra lo stato di iCloud su questo dispositivo, con sotto l'ora
dell'ultimo caricamento riuscito.

| Stato | Cosa significa |
|---|---|
| [Verifica…]{.ui} | JustFlip! sta chiedendo a iCloud se il tuo account è disponibile |
| [Disponibile]{.ui} | Il tuo account iCloud è pronto e la sincronizzazione può avvenire |
| [Sincronizzazione…]{.ui} | Le modifiche vengono inviate o ricevute in questo momento |
| [Non disponibile]{.ui} | Su questo dispositivo non è disponibile alcun account iCloud, quindi nulla si sincronizza |
| [Sincronizzazione non riuscita]{.ui} | iCloud ha segnalato un errore all'ultimo tentativo |

[Non disponibile]{.ui} e [Sincronizzazione non riuscita]{.ui} sono
mostrati in rosso.

::: note
#### "Disponibile" non significa "tutto caricato"

[Disponibile]{.ui} dice solo che il tuo account è pronto. Non garantisce
che ogni modifica abbia già raggiunto iCloud. Per questo, guarda gli
orari di caricamento e scaricamento nella schermata Sincronizzazione
iCloud.
:::

### La schermata Sincronizzazione iCloud

Tocca [Stato sincronizzazione]{.ui} per i dettagli:

- [Stato attuale]{.ui}: lo stato della tabella qui sopra.
- **Last successful upload** e **Last successful download**: quando
  iCloud ha *confermato* l'ultima volta che le modifiche sono state
  inviate da questo dispositivo, o ricevute su di esso. Un salvataggio
  locale non conta; conta solo un trasferimento confermato.
- **Upload in progress**, mentre ne è in corso uno.
- [Controlla di nuovo]{.ui}: chiede di nuovo a iCloud se il tuo account
  è disponibile.
- [Risoluzione dei problemi]{.ui}: l'ultimo errore segnalato da iCloud,
  oppure [Nessun errore di sincronizzazione]{.ui}.
- [Attività di sincronizzazione recente]{.ui}: un registro degli eventi
  di sincronizzazione recenti su questo dispositivo, utile quando
  contatti l'assistenza.

![La schermata Sincronizzazione iCloud con gli orari di caricamento e scaricamento, Controlla di nuovo e il registro delle attività recenti.](images/manual/{lang}/10-icloud-sync.jpg){.phone}

::: tip
#### Confronta due dispositivi fianco a fianco

Quando una modifica fatta su un dispositivo non compare mai sull'altro,
apri questa schermata su entrambi. Se il **Last successful upload** di un
dispositivo è più vecchio della modifica, il problema è su quel
dispositivo: non l'ha ancora inviata. Se il caricamento è recente ma il
**Last successful download** dell'altro dispositivo è vecchio, è il
dispositivo che riceve a non averla ancora scaricata.
:::

## Backup automatici {#automatic-backups}

JustFlip! fa il backup della tua libreria da solo. In Sicurezza dei dati
trovi due tipi di backup:

| Backup | Riga in Sicurezza dei dati | Contenuto | Frequenza indicativa | Conservati |
|---|---|---|---|---|
| **Backup completo** | [Ultimo backup completo]{.ui} | Un unico archivio con tutti gli interessi: carte, immagini, suoni e tutti i progressi | Settimanale | Gli ultimi 10 |
| **Istantanea dei progressi** | [Ultima istantanea dei progressi]{.ui} | Tutti gli interessi con i loro progressi, senza immagini e suoni | Giornaliera | Le ultime 30 |

Su iPhone e iPad è il sistema a eseguire i backup in background, quando
decide che è il momento giusto. Sul Mac, JustFlip! controlla ogni volta
che porti l'app in primo piano e recupera ciò che è in ritardo. Un backup
viene saltato quando nulla è cambiato rispetto al precedente.
<!-- VERIFY: the skip check compares interests' modifiedAt with the last backup date; confirm that reviewing cards (not only editing) counts as a change. -->
Quando il backup più vecchio esce dal numero di quelli conservati, viene
eliminato automaticamente.

Le date diventano rosse quando un backup è in ritardo: un backup completo
più vecchio di quattro settimane o un'istantanea dei progressi più
vecchia di quattro giorni.

### Esporta backup: un backup completo subito

[Esporta backup]{.ui} crea immediatamente un backup completo e lo
aggiunge all'elenco, per esempio prima di provare qualcosa di rischioso.
Scrive un file con un nome come `JustFlip-2026-09-30_14-05-12.justflip`.

### Dove vengono conservati i backup

La riga [Posizione del backup]{.ui} mostra dove sono conservati i tuoi
backup:

- [iCloud Drive]{.ui}: i backup sono conservati nello spazio iCloud
  Drive di JustFlip!, separati dalla sincronizzazione. Un problema di
  sincronizzazione o un'eliminazione sincronizzata non li tocca.
- [Solo locale]{.ui}: iCloud Drive non è disponibile, quindi i backup
  restano su questo dispositivo. Tocca la riga per scoprire perché:
  [Accesso a iCloud non effettuato]{.ui},
  [iCloud Drive è disattivato]{.ui} o
  [Lo spazio di archiviazione iCloud è pieno]{.ui}.
<!-- VERIFY: the app's entitlements list only the CloudKit iCloud service (no CloudDocuments / ubiquity container). If so, url(forUbiquityContainerIdentifier:) returns nil and Backup Location is always "Local only" in shipping builds. Also verify whether the backup folder is visible in the Files app. -->

::: gotcha
#### I backup locali se ne vanno con l'app

"L'archiviazione locale funziona, ma non verrà trasferita tra i
dispositivi né sopravvivrà alla rimozione dell'app", come avverte l'app
stessa. Se Posizione del backup dice [Solo locale]{.ui}, eliminare
JustFlip! elimina anche i suoi backup. Conserva anche un
[archivio esportato](#export) in un posto sicuro.
:::

## Ripristinare un backup {#restore}

Tocca [Ripristina backup]{.ui} in Sicurezza dei dati per vedere
[Archivi disponibili]{.ui}, dal più recente, ognuno con il nome del file
e la data. Toccane uno per ripristinarlo. Un messaggio conferma quando ha
finito: "Restore completed. Interests have been merged."

![Ripristina backup: l'elenco degli archivi disponibili, dal più recente.](images/manual/{lang}/10-restore-backup.jpg){.phone}

Un ripristino **unisce**; non cancella mai prima la tua libreria:

- Interessi, mazzi e carte presenti nel backup vengono recuperati. Tutto
  ciò che è stato creato dopo il backup resta com'è.
- Per ogni carta nel backup, la **pianificazione torna indietro** a com'era
  al momento del backup: fase di apprendimento, intervallo, data di
  ripasso, facilità ed errori.
- La **cronologia** dei ripassi viene **combinata**. I ripassi fatti dopo
  il backup vengono conservati, e ripristinare due volte lo stesso backup
  non duplica nulla.

::: gotcha
#### Un ripristino parte nell'istante in cui tocchi

Non c'è alcun passaggio di conferma: toccare un backup lo ripristina.
Scegli la data giusta prima di toccare l'elenco. E ricorda che le carte
che contiene tornano alla loro pianificazione *di allora*, quindi
ripristinare un vecchio backup per sistemare un mazzo riporta indietro
l'orologio anche per ogni altra carta che contiene.
:::

::: gotcha
#### Dopo un ripristino, dai tempo ai dispositivi

Un ripristino scrive molte modifiche in una volta, e ogni altro
dispositivo deve riceverle. Tieni JustFlip! aperto sul dispositivo che
hai ripristinato, sotto Wi-Fi, finché il suo **Last successful upload**
non è recente. Poi apri JustFlip! sugli altri dispositivi e lascia
passare qualche minuto prima di iniziare a ripassare lì.
:::

## Eliminare, ed Eliminati di recente {#recently-deleted}

::: gotcha
#### L'eliminazione è definitiva

Quando elimini un interesse, un mazzo o una carta, sparisce subito, su
tutti i dispositivi. Prima di eliminare qualcosa che potresti rivolere,
scegli [Esporta archivio]{.ui} dal menu contestuale dell'interesse.
L'archivio conserva i mazzi, le carte e i progressi, e potrai importarlo
di nuovo in seguito. Una carta che vuoi solo togliere dai ripassi è
meglio ritirarla che eliminarla (Capitolo 2).
:::

**Impostazioni › Sicurezza dei dati › Eliminati di recente** contiene
interessi e mazzi che JustFlip! ha messo da parte per te, come la copia
vuota rimasta dopo l'unione di due interessi o mazzi. La riga mostra
quanti elementi sono in attesa, oppure [Vuoto]{.ui}.

![Eliminati di recente, con un elemento e i suoi pulsanti Ripristina ed Elimina.](images/manual/{lang}/10-recently-deleted.jpg){.phone}

Ogni elemento mostra il suo nome, l'interesse a cui apparteneva e quando
è stato messo da parte. Due pulsanti:

- [Ripristina]{.ui} lo recupera con tutte le sue carte e i suoi
  progressi.
- [Elimina]{.ui} lo rimuove definitivamente, all'istante. Non si può
  annullare.

Dopo **30 giorni**, JustFlip! elimina definitivamente ciò che resta.

## Esportare un archivio {#export}

Il terzo livello è sotto il tuo controllo: un file di archivio che puoi
tenere in File, su un disco o in qualsiasi servizio cloud.

| Vuoi… | Fai così | Ottieni |
|---|---|---|
| Conservare o spostare un interesse, con i progressi | Tieni premuto l'interesse › [Esporta archivio]{.ui} | `Nome.flashcards.zip` |
| Fare lo stesso su un Mac | Seleziona l'interesse › **Archivio › Export Interest…** (⇧⌘E) | `Nome.flashcards.zip` |
| Fare subito il backup dell'intera libreria | **Impostazioni › Sicurezza dei dati › Esporta backup** | un file `.justflip` tra i tuoi backup |
| Analizzare i tuoi numeri | Tieni premuto › [Esporta statistiche]{.ui} | CSV o JSON (Capitolo 9) |

Un archivio di interesse contiene ogni mazzo e ogni carta
dell'interesse, le sue immagini e i suoi suoni, **e i tuoi progressi di
apprendimento**. Per recuperarlo, apri il file con JustFlip! da File,
dal foglio di condivisione o da AirDrop, oppure sul Mac rilascialo sulla
finestra o usa **Archivio › Import Interest Archive…**. L'importazione
funziona come un ripristino: unisce, quindi lo stesso file può essere
aperto due volte senza creare duplicati. Il Capitolo 5 tratta
l'importazione in dettaglio.

::: gotcha
#### Un archivio porta con sé i tuoi progressi

[Esporta archivio]{.ui} include sempre i tuoi progressi di
apprendimento. È ciò che vuoi per un backup. Quando invii il file a un
amico, però, le tue date di ripasso e la tua cronologia viaggiano con
lui.
<!-- VERIFY: whether importing someone else's archive applies the sender's progress to the recipient's copy (importProgress writes schedule fields unconditionally when the card ids match). -->
:::

## Interessi duplicati da due dispositivi {#duplicates}

I nomi degli interessi sono unici nella tua libreria, senza distinzione
tra maiuscole e minuscole. Ma se due dispositivi sono entrambi offline e
crei su ognuno un interesse con lo stesso nome, per esempio "Spagnolo"
sull'iPhone durante un volo e "spagnolo" sull'iPad a casa, quando i
dispositivi si sincronizzano di nuovo esistono entrambe le copie.

JustFlip! se ne accorge e **le unisce automaticamente**: i mazzi di
entrambe le copie vengono raccolti sotto un unico interesse, e vedi un
breve messaggio come "Merged duplicate copies of 'Spagnolo' created on
another device". I nomi vengono confrontati senza tenere conto di
maiuscole, accenti e spazi in più. Ogni dispositivo sceglie la stessa
copia superstite, così tutti finiscono con lo stesso unico interesse, e
un mazzo che arriva più tardi per la copia assorbita trova comunque la
strada giusta.

## Risolvere i problemi di sincronizzazione {#troubleshooting}

Quando una modifica non compare su un altro dispositivo, segui questo
elenco nell'ordine. La maggior parte dei problemi si risolve al punto 3
o 4.

1. **Aspetta qualche minuto.** La sincronizzazione non è istantanea.
   Tieni JustFlip! aperto su entrambi i dispositivi per un paio di
   minuti.
2. **Controlla lo stato.** Apri **Impostazioni › Sicurezza dei dati ›
   Stato sincronizzazione** su entrambi i dispositivi.
   [Non disponibile]{.ui} significa che non c'è alcun account iCloud
   disponibile; [Sincronizzazione non riuscita]{.ui} mostra l'errore in
   [Risoluzione dei problemi]{.ui}. Tocca [Controlla di nuovo]{.ui} dopo
   aver sistemato qualcosa.
3. **Stesso Account Apple.** Entrambi i dispositivi devono aver
   effettuato l'accesso con lo **stesso** Account Apple. Nelle
   Impostazioni di sistema, tocca il tuo nome in alto per verificarlo.
4. **iCloud attivo per JustFlip!** Nelle Impostazioni di sistema, vai al
   tuo nome › **iCloud** e assicurati che iCloud Drive sia attivo e che
   JustFlip! possa usare iCloud.
5. **Abbastanza spazio su iCloud.** Un account iCloud pieno blocca la
   sincronizzazione. Controlla nel tuo nome › **iCloud** › **Gestisci
   spazio account**, e libera spazio se necessario.
6. **Una connessione funzionante.** Assicurati che il dispositivo sia
   online.
7. **Confronta gli orari di caricamento e scaricamento** nella schermata
   Sincronizzazione iCloud, come descritto in
   [Lo stato della sincronizzazione](#sync-status), per capire quale
   dispositivo è indietro.
8. **Riavvia e aggiorna.** Chiudi e riapri JustFlip!, riavvia il
   dispositivo e installa eventuali aggiornamenti di JustFlip!. Come
   ultimo passo, esci da iCloud e accedi di nuovo.
9. **Ancora bloccato?** Usa [Invia feedback]{.ui} nelle Impostazioni e
   indica cosa mostra il registro
   [Attività di sincronizzazione recente]{.ui}.

::: tip
#### Prima di tentare qualcosa di drastico

Prima di eliminare e reinstallare l'app, o di uscire da iCloud, tocca
[Esporta backup]{.ui} ed esporta un archivio dei tuoi interessi più
importanti. Così, qualunque cosa succeda dopo, i tuoi progressi sono al
sicuro.
:::
