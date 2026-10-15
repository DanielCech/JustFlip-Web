---
slug: sync-backup
number: 10
title: Synchronizace, zálohy a tvoje data
description: "Jak JustFlip! chrání tvé kartičky a pokrok v učení: synchronizace přes iCloud, automatické zálohy, Nedávno smazané, obnova, export archivů a kontrolní seznam pro chvíle, kdy se synchronizace zdá zaseknutá."
---

# Synchronizace, zálohy a tvoje data {#sync-backup number="10"}

::: lede
Kartičky jde přepsat nebo znovu importovat. Tvůj pokrok v učení ne:
každé hodnocení, každý interval, každý den série existuje jen proto, že
jsi do toho vložil čas. JustFlip! ho proto chrání ve třech oddělených
vrstvách a každá pokrývá selhání, které ostatní nezachytí. Tato kapitola
vysvětluje, co každá vrstva dělá, kde ji najdeš a co dělat, když něco
nevypadá správně.
:::

::: inthischapter
- Pochop tři vrstvy: synchronizaci přes iCloud, automatické zálohy a ruční export
- Čti stav synchronizace a obrazovku Synchronizace iCloud
- Najdi, obnov a pochop své automatické zálohy
- Zjisti, co dělá mazání a co obsahuje Nedávno smazané
- Exportuj archiv zájmu, včetně pokroku
- Projdi kontrolní seznam, když se synchronizace zdá zaseknutá
:::

## Tři vrstvy bezpečí {#layers}

| Vrstva | Co to je | Před čím tě chrání |
|---|---|---|
| **1. Synchronizace přes iCloud** | Tvoje knihovna, stejná na všech zařízeních | Ztracené, rozbité nebo vyměněné zařízení |
| **2. Automatické zálohy** | Pravidelné snímky, které JustFlip! pořizuje sám | Chyby, které by synchronizace zkopírovala všude |
| **3. Ruční export** | Soubory archivů, které si uložíš, kam chceš | Všechno ostatní, včetně odchodu z iCloudu |

Všechny tři najdeš v **Nastavení › Bezpečnost dat**. Nastavení otevřeš
ikonou ozubeného kola nahoře nad seznamem Zájmy; pak sjeď na sekci
[Bezpečnost dat]{.ui}.

![Nastavení › Bezpečnost dat: Stav synchronizace, poslední úplná záloha a snímek pokroku, Umístění zálohy, Nedávno smazané a tlačítka Exportovat zálohu a Obnovit zálohu.](images/manual/{lang}/10-data-safety.jpg){.phone}

::: gotcha
#### Synchronizace není záloha

Synchronizace sladí všechna zařízení. Včetně tvých chyb: smaž zájem na
iPadu a během pár minut zmizí z iPhonu i Macu. Synchronizace sama žádné
„zpět“ nemá. Právě proto existují vrstvy 2 a 3.
:::

## Synchronizace přes iCloud {#icloud-sync}

Synchronizace je pro všechny, ve verzi zdarma i Pro. V JustFlip! není co
zapínat: když je tvé zařízení přihlášené k iCloudu, knihovna se
synchronizuje přes tvůj vlastní účet iCloud.

### Co se synchronizuje

- Zájmy, balíčky a kartičky, včetně obrázků a zvuků
- Tvůj pokrok v učení: každé hodnocení, interval, datum opakování a
  zapomenutí
- Vyřazené a odložené kartičky, příznaky kartiček, priority a ukazatele
  pokroku
- Mazání, včetně toho, co čeká v Nedávno smazané

Tvoje **nastavení zůstávají na každém zařízení zvlášť**: motiv, velikost
textu, hlasy, připomenutí a denní limity jako [Nových karet
denně]{.ui}. Můžeš tak mít klidný telefon a pracovitý iPad. Apple Watch
dostávají kartičky z iPhonu, ne z iCloudu (viz kapitola 8).

### Jak se chová

- **Offline především.** Všechno funguje bez připojení. Tvoje změny se
  hned uloží v zařízení a odešlou se, až budeš zase online.
- **Na pozadí.** Žádné tlačítko synchronizace není. Změny putují samy,
  obvykle během několika vteřin až minut.
- **Vyhrává poslední změna.** Když upravíš stejnou kartičku na dvou
  zařízeních, než se synchronizují, zůstane ta pozdější úprava.

::: tip
#### Nové zařízení snadno

Nainstaluj JustFlip! na nové zařízení, přihlas se stejným Apple účtem a
otevři aplikaci. Tvoje zájmy se objevují, jak přicházejí; prázdný
seznam to během čekání oznámí. Velká knihovna se spoustou obrázků může
při první synchronizaci chvíli trvat, takže nech aplikaci otevřenou na
Wi-Fi.
:::

## Stav synchronizace {#sync-status}

První řádek Bezpečnosti dat, [Stav synchronizace]{.ui}, ukazuje stav
iCloudu na tomto zařízení a pod ním čas posledního úspěšného odeslání.

| Stav | Co znamená |
|---|---|
| [Kontroluji…]{.ui} | JustFlip! se ptá iCloudu, jestli je tvůj účet dostupný |
| [Dostupné]{.ui} | Tvůj účet iCloud je připravený a synchronizace může běžet |
| [Synchronizuji…]{.ui} | Změny se právě odesílají nebo přijímají |
| [Nedostupné]{.ui} | Na tomto zařízení není dostupný žádný účet iCloud, takže se nic nesynchronizuje |
| [Synchronizace selhala]{.ui} | iCloud při posledním pokusu nahlásil chybu |

[Nedostupné]{.ui} a [Synchronizace selhala]{.ui} se zobrazují červeně.

::: note
#### „Dostupné“ neznamená „všechno odesláno“

[Dostupné]{.ui} říká jen to, že je tvůj účet připravený. Neslibuje, že
každá změna už do iCloudu dorazila. Na to se podívej na časy odeslání a
stažení na obrazovce Synchronizace iCloud.
:::

### Obrazovka Synchronizace iCloud

Klepnutím na [Stav synchronizace]{.ui} zobrazíš podrobnosti:

- [Aktuální stav]{.ui}: stav z tabulky výše.
- **Last successful upload** a **Last successful download** (poslední
  úspěšné odeslání a stažení): kdy iCloud naposledy *potvrdil*, že změny
  z tohoto zařízení odešly, nebo do něj dorazily. Místní uložení se
  nepočítá; počítá se jen potvrzený přenos.
- **Upload in progress** (probíhá odesílání), dokud nějaké běží.
- [Zkontrolovat znovu]{.ui}: znovu se zeptá iCloudu, jestli je tvůj účet
  dostupný.
- [Řešení problémů]{.ui}: poslední chyba, kterou iCloud nahlásil, nebo
  [Žádné chyby synchronizace]{.ui}.
- [Nedávná aktivita synchronizace]{.ui}: záznam nedávných událostí
  synchronizace na tomto zařízení, užitečný, když píšeš podpoře.

![Obrazovka Synchronizace iCloud s časy odeslání a stažení, Zkontrolovat znovu a záznamem nedávné aktivity.](images/manual/{lang}/10-icloud-sync.jpg){.phone}

::: tip
#### Porovnej dvě zařízení vedle sebe

Když se změna udělaná na jednom zařízení nikdy neobjeví na druhém,
otevři tuto obrazovku na obou. Pokud je **Last successful upload**
jednoho zařízení starší než změna, problém je na tom zařízení: změnu
ještě neodeslalo. Pokud je odeslání čerstvé, ale **Last successful
download** druhého zařízení je staré, přijímající zařízení si ji ještě
nestáhlo.
:::

## Automatické zálohy {#automatic-backups}

JustFlip! zálohuje tvou knihovnu sám. V Bezpečnosti dat najdeš dva
druhy záloh:

| Záloha | Řádek v Bezpečnosti dat | Obsah | Zhruba jak často | Uchovává se |
|---|---|---|---|---|
| **Úplná záloha** | [Poslední úplná záloha]{.ui} | Jeden archiv se všemi zájmy: kartičky, obrázky, zvuky a veškerý pokrok | Týdně | Nejnovějších 10 |
| **Snímek pokroku** | [Poslední snímek pokroku]{.ui} | Každý zájem s pokrokem, bez obrázků a zvuků | Denně | Nejnovějších 30 |

Na iPhonu a iPadu spouští zálohy systém na pozadí, když usoudí, že je
vhodná chvíle. Na Macu JustFlip! kontroluje pokaždé, když aplikaci
přeneseš do popředí, a dožene všechno, co je po termínu. Záloha se
přeskočí, když se od předchozí nic nezměnilo.
<!-- VERIFY: the skip check compares interests' modifiedAt with the last backup date; confirm that reviewing cards (not only editing) counts as a change. -->
Když nejstarší záloha vypadne z počtu uchovávaných, automaticky se
smaže.

Data zčervenají, když je záloha po termínu: úplná záloha starší než
čtyři týdny nebo snímek pokroku starší než čtyři dny.

### Exportovat zálohu: úplná záloha hned teď

[Exportovat zálohu]{.ui} okamžitě vytvoří úplnou zálohu a přidá ji do
seznamu, třeba předtím, než zkusíš něco riskantního. Zapíše soubor s
názvem jako `JustFlip-2026-09-30_14-05-12.justflip`.

### Kde jsou zálohy uložené

Řádek [Umístění zálohy]{.ui} ukazuje, kde jsou tvé zálohy uložené:

- [iCloud Drive]{.ui}: zálohy jsou v úložišti JustFlip! na iCloud
  Drivu, odděleně od synchronizace. Problém se synchronizací ani
  synchronizované smazání se jich nedotkne.
- [Pouze lokálně]{.ui}: iCloud Drive není dostupný, takže zálohy zůstávají
  na tomto zařízení. Klepnutím na řádek zjistíš proč:
  [Nejste přihlášeni k iCloudu]{.ui}, [iCloud Drive je vypnutý]{.ui} nebo
  [Vaše iCloud úložiště je plné]{.ui}.
<!-- VERIFY: the app's entitlements list only the CloudKit iCloud service (no CloudDocuments / ubiquity container). If so, url(forUbiquityContainerIdentifier:) returns nil and Backup Location is always "Local only" in shipping builds. Also verify whether the backup folder is visible in the Files app. -->

::: gotcha
#### Místní zálohy odcházejí s aplikací

„Místní úložiště funguje, ale nepřenese se mezi zařízeními ani nepřežije
odstranění aplikace,“ varuje sama aplikace. Pokud Umístění zálohy ukazuje
[Pouze lokálně]{.ui}, smazáním JustFlip! smažeš i jeho zálohy. Měj
proto ještě někde v bezpečí [exportovaný archiv](#export).
:::

## Obnovení zálohy {#restore}

Klepnutím na [Obnovit zálohu]{.ui} v Bezpečnosti dat zobrazíš
[Dostupné archivy]{.ui}, od nejnovějšího, každý s názvem souboru a
datem. Klepnutím na archiv ho obnovíš. Zpráva potvrdí, až bude hotovo:
„Restore completed. Interests have been merged.“ (Obnova dokončena,
zájmy byly sloučeny.)

![Obnovit zálohu: seznam dostupných archivů, od nejnovějšího.](images/manual/{lang}/10-restore-backup.jpg){.phone}

Obnova **slučuje**; nikdy předtím tvou knihovnu nevymaže:

- Zájmy, balíčky a kartičky ze zálohy se vrátí. Cokoli, co vzniklo po
  záloze, zůstane, jak je.
- U každé kartičky v záloze se **plán vrátí** do stavu v době zálohy:
  fáze učení, interval, datum opakování, snadnost i zapomenutí.
- **Historie** opakování **se spojí**. Opakování, která jsi udělal po
  záloze, zůstanou, a dvojí obnova stejné zálohy nic nezdvojí.

::: gotcha
#### Obnova začne ve chvíli, kdy klepneš

Žádný krok s potvrzením není: klepnutím na zálohu ji obnovíš. Než se
seznamu dotkneš, vyber správné datum. A pamatuj, že kartičky v záloze se
vrátí ke svému plánu *z té doby*, takže obnova staré zálohy kvůli opravě
jednoho balíčku vrátí hodiny i každé jiné kartičce, kterou záloha
obsahuje.
:::

::: gotcha
#### Po obnově dej zařízením čas

Obnova zapíše najednou spoustu změn a každé další zařízení je musí
přijmout. Nech JustFlip! otevřený na zařízení, kde jsi obnovoval, na
Wi-Fi, dokud jeho **Last successful upload** nebude čerstvé. Pak otevři
JustFlip! na ostatních zařízeních a dej jim pár minut, než na nich
začneš opakovat.
:::

## Mazání a Nedávno smazané {#recently-deleted}

::: gotcha
#### Smazání je trvalé

Když smažeš zájem, balíček nebo kartičku, zmizí okamžitě, a to na všech
zařízeních. Než smažeš cokoli, co bys možná chtěl zpátky, zvol v
kontextové nabídce zájmu [Exportovat archiv]{.ui}. Archiv zachová jeho
balíčky, kartičky i pokrok a později ho můžeš znovu importovat.
Kartičku, kterou chceš jen dostat z opakování, je lepší vyřadit než
smazat (kapitola 2).
:::

**Nastavení › Bezpečnost dat › Nedávno smazané** uchovává zájmy a
balíčky, které ti JustFlip! odložil stranou, třeba prázdnou kopii, jež
zůstala po sloučení dvou zájmů nebo balíčků. Řádek ukazuje, kolik
položek čeká, nebo [Prázdné]{.ui}.

![Nedávno smazané s jednou položkou a jejími tlačítky Obnovit a Smazat.](images/manual/{lang}/10-recently-deleted.jpg){.phone}

Každá položka ukazuje svůj název, zájem, do kterého patřila, a kdy byla
odložena. Dvě tlačítka:

- [Obnovit]{.ui} ji vrátí se všemi kartičkami a pokrokem.
- [Smazat]{.ui} ji okamžitě trvale odstraní. To nejde vrátit.

Po **30 dnech** JustFlip! to, co zbude, trvale smaže.

## Export archivu {#export}

Třetí vrstvu máš pod kontrolou ty: soubor archivu, který si můžeš
uložit do Souborů, na disk nebo do jakékoli cloudové služby.

| Chceš… | Udělej tohle | Dostaneš |
|---|---|---|
| Uschovat nebo přesunout jeden zájem i s pokrokem | Dlouze podrž zájem › [Exportovat archiv]{.ui} | `Název.flashcards.zip` |
| Totéž na Macu | Vyber zájem › **Soubor › Export Interest…** (⇧⌘E) | `Název.flashcards.zip` |
| Zálohovat hned celou knihovnu | **Nastavení › Bezpečnost dat › Exportovat zálohu** | soubor `.justflip` mezi tvými zálohami |
| Analyzovat svá čísla | Dlouze podrž › [Exportovat statistiky]{.ui} | CSV nebo JSON (kapitola 9) |

Archiv zájmu obsahuje každý balíček a kartičku zájmu, jeho obrázky a
zvuky **a tvůj pokrok v učení**. Chceš-li ho vrátit, otevři soubor v
JustFlip! ze Souborů, z nabídky sdílení nebo přes AirDrop, nebo ho na
Macu pusť do okna či použij **Soubor › Import Interest Archive…**.
Import funguje jako obnova: slučuje, takže stejný soubor můžeš otevřít
dvakrát, aniž by vznikly duplicity. Importu se podrobně věnuje
kapitola 5.

::: gotcha
#### Archiv nese tvůj pokrok

[Exportovat archiv]{.ui} vždy obsahuje tvůj pokrok v učení. To je přesně
to, co od zálohy chceš. Když ale soubor pošleš kamarádovi, putují s ním
i tvá data opakování a historie.
<!-- VERIFY: whether importing someone else's archive applies the sender's progress to the recipient's copy (importProgress writes schedule fields unconditionally when the card ids match). -->
:::

## Duplicitní zájmy ze dvou zařízení {#duplicates}

Názvy zájmů jsou ve tvé knihovně jedinečné, bez ohledu na velikost
písmen. Pokud ale jsou dvě zařízení offline a na každém vytvoříš zájem
se stejným názvem, třeba „Španělština“ na iPhonu v letadle a
„španělština“ na iPadu doma, po další synchronizaci existují obě kopie.

JustFlip! si toho všimne a **sloučí je automaticky**: balíčky z obou
kopií se shromáždí pod jedním zájmem a uvidíš krátkou zprávu, například
„Merged duplicate copies of 'Španělština' created on another device“
(duplicitní kopie vytvořené na jiném zařízení byly sloučeny). Názvy se
porovnávají bez ohledu na velikost písmen, diakritiku a nadbytečné
mezery. Každé zařízení vybere stejnou přeživší kopii, takže všechna
skončí se stejným jediným zájmem, a balíček, který později dorazí pro
sloučenou kopii, si i tak najde cestu na správné místo.

## Řešení problémů se synchronizací {#troubleshooting}

Když se změna na jiném zařízení neobjeví, projdi tento seznam popořadě.
Většina problémů skončí u kroku 3 nebo 4.

1. **Dej tomu pár minut.** Synchronizace není okamžitá. Nech JustFlip!
   otevřený na obou zařízeních minutu nebo dvě.
2. **Zkontroluj stav.** Na obou zařízeních otevři **Nastavení ›
   Bezpečnost dat › Stav synchronizace**. [Nedostupné]{.ui} znamená, že
   není dostupný žádný účet iCloud; [Synchronizace selhala]{.ui} ukáže
   chybu v části [Řešení problémů]{.ui}. Až cokoli opravíš, klepni na
   [Zkontrolovat znovu]{.ui}.
3. **Stejný Apple účet.** Obě zařízení musí být přihlášená **stejným**
   Apple účtem. Zkontroluješ to v systémovém Nastavení klepnutím na své
   jméno nahoře.
4. **iCloud je pro JustFlip! zapnutý.** V systémovém Nastavení přejdi na
   své jméno › **iCloud** a ujisti se, že je iCloud Drive zapnutý a
   JustFlip! smí iCloud používat.
5. **Dost místa na iCloudu.** Plný účet iCloud synchronizaci zastaví.
   Zkontroluj to v části své jméno › **iCloud** › **Správa úložiště** a
   v případě potřeby uvolni místo.
6. **Funkční připojení.** Ujisti se, že je zařízení online.
7. **Porovnej časy odeslání a stažení** na obrazovce Synchronizace
   iCloud, jak popisuje část [Stav synchronizace](#sync-status), a zjisti,
   které zařízení zaostává.
8. **Restartuj a aktualizuj.** Zavři a znovu otevři JustFlip!, restartuj
   zařízení a nainstaluj případnou aktualizaci JustFlip!. Jako poslední
   krok se z iCloudu odhlas a znovu přihlas.
9. **Pořád nic?** Použij v Nastavení [Poslat zpětnou vazbu]{.ui} a uveď,
   co ukazuje záznam [Nedávná aktivita synchronizace]{.ui}.

::: tip
#### Než zkusíš něco drastického

Než aplikaci smažeš a znovu nainstaluješ nebo se odhlásíš z iCloudu,
klepni na [Exportovat zálohu]{.ui} a exportuj archiv svých
nejdůležitějších zájmů. Ať se pak stane cokoli, tvůj pokrok je v
bezpečí.
:::
