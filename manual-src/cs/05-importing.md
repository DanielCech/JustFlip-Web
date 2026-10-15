---
slug: importing
number: 5
title: Jak dostat balíčky dovnitř
description: "Importuj do JustFlip! balíčky z Anki, tabulky CSV, balíčky vytvořené AI i kurátorované balíčky, pochop, co se stane, když stejný soubor importuješ znovu, a exportuj zájem, abys ho mohl sdílet nebo uschovat."
---

# Jak dostat balíčky dovnitř {#importing number="5"}

::: lede
Každou kartičku nemusíš psát sám. JustFlip! umí načíst balíčky z Anki,
tabulky a soubory balíčků napsané umělou inteligencí a umí také vydat
celý zájem jako jediný archiv. Tato kapitola ukazuje, kudy který druh
souboru vstupuje, co se přenese — a těch pár pravidel, která rozhodují,
jestli import kartičky přidá, nebo aktualizuje ty, které už máš.
:::

::: inthischapter
- Najdi import na iPhonu, iPadu a Macu
- Přenes balíček z Anki a přečti si zprávu o importu
- Udělej z tabulky balíček
- Importuj balíčky vytvořené AI nebo z kurátorované knihovny
- Věz, co udělá opakovaný import, ještě než ho uděláš
- Exportuj zájem, abys ho uschoval nebo sdílel
:::

Import je součástí verze zdarma, stejně jako všechno v této kapitole.

## Kde je import {#where}

Každý import začíná na obrazovce **Zájmy**. JustFlip! pozná soubor podle
názvu a obsahu, takže stejné vstupní body berou všechny formáty.

| Na | Jak |
|---|---|
| iPhone, iPad | Nabídka [Přidat nebo importovat]{.ui} (tlačítko přihrádky) → [Importovat kartičky]{.ui} |
| iPhone, iPad | V Souborech, Mailu nebo Safari: sdílej soubor, nebo ho otevři v JustFlip! |
| iPad, Mac | Přetáhni soubory na seznam zájmů — ukáže se [Přetáhněte pro import]{.ui} |
| Mac | **Soubor › Import Cards…** (⇧⌘I) nebo **Soubor › Import Interest Archive…** |
| Kdekoli | Podrž prst na zájmu → [Importovat kartičky]{.ui}: soubor CSV nebo Anki rovnou do toho zájmu |
| Kdekoli | [Přidat nebo importovat]{.ui} → [Vložit kartičky]{.ui}: kartičky, které jsi zkopíroval (viz [Vložit kartičky](#paste)) |

Hlavní import přijme víc souborů najednou i celé složky: importuje se
každý podporovaný soubor uvnitř.

![Nabídka Přidat nebo importovat na obrazovce Zájmy s položkami Importovat kartičky a Vložit kartičky.](images/manual/{lang}/05-import-menu.jpg){.phone}

### Co se ze kterého souboru stane

| Soubor | Co to je | Kam dorazí |
|---|---|---|
| `.apkg`, `.colpkg` | Balíček nebo kolekce z Anki | Do zájmu, který vybereš; jeden balíček na každý balíček Anki |
| `.csv` | Tabulka, jedna kartička na řádek | Do zájmu, který vybereš; vždy jako nový balíček |
| `.flashcards` | Soubor balíčku, jen text — od AI nebo kurátorovaný | Do zájmu uvedeného v souboru |
| `.flashcards.zip` | Soubor balíčku s obrázky a zvukem, nebo exportovaný zájem | Do zájmu uvedeného v souboru |

U souborů Anki a CSV se JustFlip! nejdřív zeptá, kam kartičky dát. Panel
[Importovat kartičky]{.ui} má nabídku [Zájem]{.ui} — včetně
[Nový zájem...]{.ui} — a u tabulky také [Název balíčku]{.ui}. Klepni na
[Pokračovat]{.ui}.

Když import vytváří nový zájem, panel nabídne i
[Zahrnout do vyhledávání v zařízení]{.ui}, což rozhoduje, jestli se jeho
kartičky mohou objevit ve Spotlightu (kapitola 8).

## Balíčky z Anki {#anki}

JustFlip! importuje balíčky Anki (`.apkg`) i balíčky kolekcí
(`.colpkg`), ze starých i současných verzí Anki. V Anki použij
**File › Export**, zvol *Anki Deck Package* a zahrň média. Pak soubor
importuj, jak je popsáno výše.

Slib je jednoduchý: **učební obsah se přenese, vzhled z Anki ne.** Tvá
slova, obrázky, zvuky, vzorce a štítky dorazí. Styly, skripty a plánování
z Anki zůstanou za tebou.

### Co se přenese

- **Každá kartička.** Z každé kartičky Anki se stane kartička JustFlip!.
  Fungují typy poznámek přední/zadní strana, obrácená i volitelně
  obrácená.
- **Poznámky cloze, rozdělené.** Poznámka s `{{c1::…}}`, `{{c2::…}}` a
  `{{c3::…}}` vytvoří tři kartičky JustFlip!, jednu pro každé číslo,
  přesně jako v Anki. Každá kartička skryje své číslo a ostatní ukáže
  doplněné. Nápověda jako `{{c1::Paříž::hlavní město}}` zůstane.
- **Obrázky**, v textu, v pořadí, v jakém se objevují. Alternativní text
  obrázku z Anki se stane tím, co o něm řekne hlas.
- **Zvuk.** Každé `[sound:…]` na straně zůstane, v pořadí (kapitola 4).
- **Zakrytí obrázku**, z vlastního nástroje Anki i ze staršího doplňku
  Image Occlusion Enhanced. Z obojího se stanou nativní kartičky se
  zakrytím.
- **Formátování**: tučné písmo, kurzíva, seznamy, odkazy, malé tabulky,
  matematika a dolní i horní indexy.
- **Štítky.**
- **Struktura balíčků, zploštělá.** JustFlip! nemá podbalíčky, takže z
  `Jazyky::Španělština::Slovesa` se stane jeden balíček
  **Jazyky / Španělština / Slovesa**.

### Co zůstane v Anki

- **Tvoje historie opakování.** Každá kartička začíná jako nová.
  Intervaly, snadnost a nastavení FSRS z Anki se neimportují.
- **Styly.** Vlastní CSS, písma a barvy se zjednoduší.
- **Kód.** JavaScript a doplňky se nikdy nespustí a neuchovají.
- **Cokoli online.** Vzdálené obrázky, vložené stránky a iframy se
  nestahují.
- **Video.**
- **Příznaky.** Příznaky kartiček z Anki se nepřenášejí.
- **Opakovaná otázka.** Anki ukazuje otázku znovu na straně s odpovědí;
  JustFlip! kartičku otočí na místě, takže se tato kopie zahodí. Výjimkou
  jsou kartičky cloze, protože tam opakovaná věta *je* odpovědí.

::: gotcha
#### Poznámka cloze z Anki je víc kartiček

Balíček, který má v Anki 300 poznámek, může dorazit jako 700 kartiček.
Nejde o duplicity: každé číslo cloze je kartička, v Anki i v JustFlip!.
Počet na panelu importu je počet kartiček.
:::

::: gotcha
#### Importované kartičky nemají jazyk

Anki neukládá, v jakém jazyce pole je, takže každá importovaná kartička
začíná s [Jazyk]{.ui} nastaveným na **Žádné** — a strana bez jazyka se
nikdy nepřečte nahlas (kapitola 3). Pokud chceš importovaný balíček
poslouchat, nastav jeho kartičkám jazyk.
:::

### Panel importu {#anki-report}

Import jednoho souboru Anki z nabídky [Přidat nebo importovat]{.ui}, ze
Souborů nebo přetažením otevře [Import z Anki]{.ui}. Nejdřív balíček
načte — [Kontroluji balíček…]{.ui}, [Rozbaluji…]{.ui},
[Načítám kartičky…]{.ui} — a pak ukáže [Připraveno k učení]{.ui}: kolik
našel balíčků Anki, [Kartičky]{.ui}, [Obrázky]{.ui} a [Audio]{.ui}.

![Panel Import z Anki: souhrn, Co se změnilo a Možnosti.](images/manual/{lang}/05-anki-report.jpg){.phone}

Pod [Co se změnilo]{.ui} je zpráva o importu: jedna srozumitelná věta ke
každé věci, kterou stojí za to vědět, než import potvrdíš. Například:

- *Kartičky tu začínají od začátku. Historie opakování zůstává v Anki.*
- *Odpovědi už neopakují otázku — JustFlip ji při otočení nechává na
  obrazovce.*
- *12 obrázků se nepodařilo přečíst a byly vynechány.*
- *3 kartičky neměly na straně s otázkou nic a byly přeskočeny.*
- *2 pole pocházela z doplňků Anki a byla vynechána.*

*Do* tvých kartiček se nic nezapisuje. Chybějící obrázek prostě chybí a
zpráva je jediné místo, které to říká.

Pod [Možnosti]{.ui} jsou [Balíčky]{.ui}, které import vytvoří, a jedna
volba — [Když tyto kartičky už máte]{.ui}:

| Možnost | Kartičky, které jsi z tohoto balíčku už importoval |
|---|---|
| [Přidat novou kopii]{.ui} | Zůstanou beze změny; celý balíček se přidá znovu, jako nové balíčky. Výchozí volba |
| [Přeskočit ty, které už mám]{.ui} | Zůstanou, jak jsou; přidají se jen nové kartičky |
| [Aktualizovat a zachovat můj pokrok]{.ui} | Jejich text, obrázky a štítky se obnoví ze souboru; tvůj plán zůstane nedotčen |

JustFlip! si pamatuje, ze které poznámky a kartičky Anki každá
importovaná kartička pochází, takže párování funguje, i když otázku v
JustFlip! upravíš. Klepnutím na [Importovat]{.ui} kartičky přidáš.

::: tip
#### Aktualizace balíčku, který se pořád učíš v Anki

Pracuj dál v Anki, znovu exportuj a importuj s volbou
[Aktualizovat a zachovat můj pokrok]{.ui}. Opravy se přenesou, nové
poznámky se přidají a tvůj plán v JustFlip! zůstane tvůj.
:::

::: gotcha
#### Rychlý import volbu přeskočí

Dvě cesty pro Anki importují rovnou, bez panelu a vždy jako novou kopii:
[Importovat kartičky]{.ui} z nabídky samotného zájmu a víc souborů Anki
vybraných najednou. Chceš-li kartičky, které už máš, přeskočit nebo
aktualizovat, importuj soubory po jednom z nabídky
[Přidat nebo importovat]{.ui}.
:::

## Tabulky (CSV) {#csv}

Soubor CSV je nejjednodušší způsob, jak dostat seznam do JustFlip!:
slovíčka, glosář, export z jiné aplikace. Každý řádek je jedna kartička;
jeden sloupec je otázka, další odpověď.

```csv
Otázka,Odpověď
el perro,pes
el gato,kočka
"la casa, el hogar",domov
```

Po [Pokračovat]{.ui} ukáže [Import CSV]{.ui} živý náhled:

- **[Oddělovač]{.ui}** — čárka, středník, svislítko nebo tabulátor.
  JustFlip! ho odhadne z prvních řádků; změň ho, pokud sloupce vypadají
  špatně.
- **[Přeskočit první řádek jako záhlaví]{.ui}** — zpočátku vypnuté.
  Zapni, když první řádek obsahuje názvy sloupců.
- **[Mapování sloupců]{.ui}** — vyber, který sloupec je
  [Přední strana (otázka)]{.ui} a který [Zadní strana (odpověď)]{.ui}.
  Ostatní sloupce se ignorují.
- **[Náhled]{.ui}** — první řádky tak, jak budou načteny.

Až to vypadá správně, klepni na **Importovat (N)**.

![Náhled Import CSV s oddělovačem, přepínačem záhlaví, mapováním sloupců a náhledem řádků.](images/manual/{lang}/05-csv-preview.jpg){.phone}

Pár detailů, které ušetří druhý pokus:

- Pole dej do dvojitých uvozovek, když obsahuje oddělovač nebo zlom
  řádku; uvozovku uvnitř zapiš jako `""`.
- Text může používat značky kartiček z kapitoly 3 — tučné písmo,
  matematiku, cloze. `{{c1::…}}` v buňce CSV zůstane **jednou** kartičkou
  se všemi mezerami; kartičky z CSV se nikdy nedělí tak jako poznámky
  cloze z Anki.
- Řádek s prázdnou otázkou se přeskočí. Řádek s prázdnou odpovědí se
  importuje jako kartička bez odpovědi.
- Kartičky z CSV nemají jazyk, obrázky ani štítky.

::: gotcha
#### Řádek záhlaví se stane kartičkou

[Přeskočit první řádek jako záhlaví]{.ui} je zpočátku vypnuté. Zapomeň
na to a z názvů sloupců vznikne kartička „Otázka“ s odpovědí „Odpověď“.
Před importem zkontroluj první řádek náhledu.
:::

::: gotcha
#### CSV nikdy nic neaktualizuje

Každý import CSV vytvoří **nový** balíček, i když balíček se stejným
názvem už existuje — skončíš se dvěma. Chceš-li změnit kartičky
importované z tabulky, uprav je v JustFlip!, nebo před importem
opraveného souboru starý balíček smaž.
:::

## Balíčky vytvořené s AI {#ai}

Nejlépe se učí z balíčku vytvořeného z *tvých* materiálů: z poznámek,
kapitoly, přepisu přednášky. JustFlip! sám s žádnou AI nekomunikuje.
Místo toho dá web tvé AI návod, jak napsat soubor balíčku JustFlip!, a ty
výsledek importuješ.

| Stránka | Pro | Dostaneš |
|---|---|---|
| [AI Prompt](https://just-flip.app/ai-prompt.html) | Jakoukoli chatovací AI — ChatGPT, Claude, Gemini | Čistě textový soubor `.flashcards` |
| [AI Skill](https://just-flip.app/ai-skill.html) | Programovacího agenta, který umí číst soubory na tvém počítači | `.flashcards.zip` s obrázky a zvukem |

Chatovací AI umí vrátit jen text, takže stránka AI Prompt žádá čistě
textový balíček. Programovací agent umí otevřít tvé místní obrázky a
zvuky a zabalit je do zipu, i s popisy, licencemi a dokonce zakrytím
obrázku.

Soubor importuj jako kterýkoli jiný. Soubor sám uvádí svůj zájem a
balíčky, takže žádný panel nastavení není: JustFlip! použije zájem s tím
názvem, pokud ho máš, a jinak ho vytvoří. Soubor balíčku také může
nastavit jazyk každého balíčku, takže kartičky jsou hned připravené ke
čtení nahlas.

::: tip
#### Zkontroluj, než se začneš učit

AI se umí sebejistě mýlit. Nový balíček si před prvním opakováním jednou
projdi a cokoli pochybného oprav nebo smaž. Deset minut úprav je lepší
než týdny opakování špatné odpovědi.
:::

## Vložit kartičky {#paste}

Někdy už jsou kartičky ve schránce — odpověď AI chatu, sloupec z
tabulky, seznam v Poznámkách. Zvol
[Přidat nebo importovat]{.ui} → [Vložit kartičky]{.ui}. Jak vysvětluje
poznámka [Jak to funguje]{.ui}, zkopíruješ kartičky — jednu na řádek,
otázku a odpověď oddělené čárkou — a klepneš na Vložit. JustFlip! najde
kartičky v tom, co jsi zkopíroval, i uvnitř bloku kódu v odpovědi AI
chatu, a okolní text ignoruje.

Vložený seznam projde stejnými panely [Importovat kartičky]{.ui} a
[Import CSV]{.ui} jako soubor CSV, do balíčku pojmenovaného **Vložené
kartičky**, pokud název nezměníš. Vložený soubor balíčku — JSON, který AI
napíše podle stránky AI Prompt — se importuje jako soubor `.flashcards`.
Nic neopustí tvé zařízení.

## Kurátorované balíčky {#curated}

[Stránka Balíčky](https://just-flip.app/decks/) na webu je malá knihovna
hotových balíčků — jazyky, hudba, matematika, programování a přírodní
vědy — ve všech jazycích, kterými aplikace mluví. Klepni na **Stáhnout
balíček** a pak soubor otevři v JustFlip!. Jsou to obyčejné soubory
`.flashcards` a `.flashcards.zip`, takže všechno z části
[Opakovaný import stejného souboru](#reimport) platí i pro ně.

## Opakovaný import stejného souboru {#reimport}

Soubory balíčků — `.flashcards` a `.flashcards.zip` od AI, z
kurátorované knihovny nebo z tvého vlastního editoru — jsou navržené
tak, aby šly importovat znovu a znovu. Oprav v souboru překlep, přidej
deset kartiček, importuj ho: balíček se aktualizuje, místo aby se
zdvojil.

JustFlip! je páruje takhle:

1. **Zájem** je ten s názvem zájmu ze souboru. Na velikosti písmen a
   zatoulaných mezerách nezáleží.
2. **Balíček** je ten v tomto zájmu, který má *přesně* stejný název jako
   balíček v souboru.
3. **Každá kartička** se páruje podle **textu otázky**, přesně tak, jak
   je napsaný. Spárovaná kartička se aktualizuje na místě — její
   odpověď, obrázky a zvuky se nahradí ze souboru a její pokrok zůstane.
   Kartička bez páru se přidá.

Kartičky, které jsou v balíčku, ale ne v souboru, zůstanou beze změny;
import nikdy nic nemaže.

::: gotcha
#### Dvě kartičky, jedna otázka

Protože se kartičky párují podle otázky, dvě kartičky v jednom balíčku
se stejným textem otázky — „Pojmenuj tento tón.“, „Přelož:“ — skončí jako
jediná kartička, a to i při úplně novém importu. Dej každé kartičce
vlastní otázku, nebo společné zadání přesuň do názvu balíčku.
:::

::: gotcha
#### Kartičky jen s obrázkem se přidají pokaždé

Kartičku úplně bez textu otázky — jen s obrázkem — nelze spárovat, takže
se nikdy nesloučí. Balíček obrázků „Co je to?“ tak zůstane celý, ale
znamená to také, že opakovaný import souboru tyto kartičky přidá podruhé.
V souboru balíčku u takových kartiček pole `q` úplně vynech: prázdné
`"q": ""` se počítá jako text otázky a sloučí se s každou jinou prázdnou.
:::

::: gotcha
#### Tvoje úpravy opakovaný import nepřežijí

Aktualizace kartičky nahradí její obsah obsahem ze souboru. Pokud jsi v
JustFlip! opravil odpověď, udělej stejnou opravu i v souboru — jinak
příští import vrátí starou odpověď. A když balíček v JustFlip!
přejmenuješ, soubor ho už nenajde: příští import vytvoří nový balíček
pod starým názvem.
:::

Balíčky Anki se řídí vlastním pravidlem — volbou na
[panelu importu](#anki-report). Soubory CSV se nepárují vůbec.

## Export a sdílení {#export}

Chceš-li si zájem vzít s sebou, podrž na něm prst (na Macu klikni pravým
tlačítkem) a zvol [Exportovat archiv]{.ui}. Na Macu udělá totéž pro
vybraný zájem **Soubor › Export Interest…** (⇧⌘E). JustFlip! zapíše
jeden soubor, *Název zájmu*.flashcards.zip, a zeptá se, kam ho uložit.

Archiv obsahuje všechno v daném zájmu: každý balíček a kartičku, obrázky
a zvuky a **celý tvůj pokrok v opakování**. Ulož ho do Souborů nebo na
iCloud Drive, pošli ho přes AirDrop, nebo ho odešli jako jakýkoli jiný
soubor.

Import archivu obnoví přesně tento zájem. Jeho zájem, balíčky a
kartičky se párují podle skrytých identifikátorů, které archiv nese, ne
podle názvů, takže se nic nezdvojí — najdou se i přejmenované balíčky.

::: gotcha
#### Archiv si s sebou přinese svůj plán

Import archivu nastaví plán každé kartičky na ten, který je v archivu
uložený. Importuješ-li starý archiv přes zájem, který se pořád učíš, ty
kartičky se vrátí tam, kde byly v době exportu. Tvoje historie opakování
se sloučí, nezdvojí. Kartičky přidané po exportu zůstanou — a kartičky
smazané po něm se vrátí.
:::

::: note
#### Sdílení balíčku s někým dalším

Archiv obsahuje i tvůj pokrok a kdokoli ho importuje, dostane tvůj plán
pro ty kartičky. Chceš-li čistou kopii, sdílej raději původní soubor
balíčku — `.flashcards` nebo `.flashcards.zip`, který jsi importoval.
:::

Stejná nabídka obsahuje [Exportovat statistiky]{.ui}, jako
[Tabulka (CSV)]{.ui} nebo [Kompletní data (JSON)]{.ui}. Tyto soubory
jsou ke čtení a analýze, ne k importu zpět (kapitola 9). Zálohu celé
knihovny popisuje kapitola 10.

## Když tě import překvapí {#troubleshooting .cheatsheet}

| Co vidíš | Proč, a co dělat |
|---|---|
| Méně kartiček než řádků nebo poznámek | Kartičky se stejným textem otázky se sloučily (soubory balíčků), nebo se přeskočily řádky s prázdnou otázkou (CSV) |
| Víc kartiček než poznámek v Anki | Každé číslo cloze je samostatná kartička — to je v pořádku |
| Balíček se objevil dvakrát | CSV vždy vytvoří nový balíček; import z Anki s volbou [Přidat novou kopii]{.ui} přidá nové balíčky |
| Kartičky jen s obrázkem se zdvojily | Při opakovaném importu je nejde spárovat; smaž přebytečné, nebo importuj do nového balíčku |
| Importované kartičky mlčí | Kartičky z Anki a CSV nemají jazyk — nastav ho na kartičkách (kapitola 3) |
| První kartička je „Otázka / Odpověď“ | Zapni [Přeskočit první řádek jako záhlaví]{.ui} |
| Celý text je v jednom sloupci | Změň [Oddělovač]{.ui} v náhledu CSV |
| Chybí obrázek | Zkontroluj zprávu z Anki a pamatuj, že SVG není podporované (kapitola 4) |
| Moje oprava po importu zmizela | Nahradila ji verze ze souboru — oprav i soubor |
| Plán kartičky skočil zpátky | Importoval jsi starší archiv toho zájmu |
