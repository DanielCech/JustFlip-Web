---
slug: media
number: 4
title: Obrázky, zvuk a zakrývání
description: "Přidávej na kartičky v JustFlip! obrázky a zvuk, popisuj je pro VoiceOver, uváděj jejich zdroje a proměň popsaný diagram v kartičky se zakrytím obrázku — plus pravidla, díky kterým média vypadají správně na každém zařízení."
---

# Obrázky, zvuk a zakrývání {#media number="4"}

::: lede
Některé věci se snáz pamatují, než popisují: pták, akord, kůstka v ruce,
výslovnost slova. JustFlip! umí na kartičce ukázat obrázek, přehrát zvuk
a — se zakrytím obrázku — schovat části diagramu, abys se mohl vyzkoušet
z každého popisku na něm.
:::

::: inthischapter
- Přidávej obrázky z Fotek nebo ze schránky a rozhoduj, kde budou
- Zjisti, kterou kartu editor ukládá, aby se nic neztratilo
- Popisuj obrázky pro VoiceOver a uváděj jejich autory
- Dej na kartičku zvuk a přehrávej víc stop z Anki
- Proměň jeden popsaný diagram v sadu kartiček se zakrytím obrázku
- Připrav obrázky, které zůstanou ostré, malé a viditelné v tmavém režimu
:::

Nic v této kapitole nevyžaduje JustFlip! Pro. Obrázky, zvuk i zakrytí
obrázku fungují stejně i ve verzi zdarma.

## Přidání obrázku {#pictures}

Každá strana kartičky má vlastní obrázek. Přidat ho můžeš třemi způsoby a
liší se tím, kde obrázek skončí.

**Do textu.** Na kartě [Text]{.ui} klepni na tlačítko obrázku úplně
vlevo na panelu formátování ([Vložit obrázek]{.ui}) a vyber fotku.
JustFlip! vloží na místo kurzoru značku `![attachment:0]` a obrázek se
na kartičce objeví přesně tam, mezi okolními slovy.

**Jako celou stranu.** Přepni na kartu [Obrázek]{.ui} a klepni na
[Vybrat obrázek]{.ui}. Bez textu obrázek vyplní celou stranu, vycentrovaný
a zmenšený tak, aby se vešel. To je správná volba pro kartičky typu „Co
je to?“: vlajka, list, rentgenový snímek.

**Ze schránky.** Zkopíruj obrázek odkudkoli a vlož ho do textového pole.
JustFlip! uloží samotný obrázek, ne odkaz na místo, odkud pochází, a
značku vloží za tebe.

![Karta Obrázek v editoru kartičky s vybranou fotkou a pod ní poli pro popis a licenci.](images/manual/{lang}/04-image-tab.jpg){.phone}

Strana unese jeden obrázek. Když vybereš jiný, nahradí ten původní;
chceš-li obrázek odstranit, otevři kartu [Obrázek]{.ui} a klepni na
[Odebrat]{.ui}.

::: tip
#### Na Macu

Tlačítko obrázku otevře tvou knihovnu Fotek. Obrázek, který je jinde —
stažený soubor, snímek obrazovky, sken — nejdřív přidej do Fotek a pak
ho vyber v editoru kartičky.
:::

::: tip
#### Fotka pro kartičku

Nejdřív vyfoť snímek aplikací Fotoaparát a pak ho v editoru kartičky
vyber z Fotek.
:::

### Kde obrázek bude {#placement}

Obrázek může skončit na jednom ze tří míst. JustFlip! rozhoduje podle
toho, co je na straně, ne podle nastavení:

| Na straně | Kam obrázek přijde |
|---|---|
| Obrázek a žádný text | Vyplní stranu, vycentrovaný |
| Text se značkou `![attachment:0]` | Do textu, na místo značky |
| Text bez značky | Pod text, jako samostatný blok |

Třetí případ dostaneš u balíčků, které importuješ (kapitola 5), a u
mnoha kurátorovaných balíčků: soubor obrázek uvádí, ale text žádnou
značku nemá. Takový obrázek zůstane na místě, když text upravíš, a
odstraníš ho na kartě [Obrázek]{.ui}.

Když je značka v tvém textu a smažeš ji, obrázek při uložení zmizí s ní.

::: note
#### Víc obrázků na jedné straně

Strana, kterou si vytvoříš sám, unese jeden obrázek. Kartičky
importované z Anki jich mohou nést víc, každý s vlastní číslovanou
značkou — `![attachment:0]`, `![attachment:1]` a tak dál. Smaž jednu
značku a zmizí jen ten jeden obrázek; ostatní zůstanou.
:::

Velký obrázek na kartičce má tlačítko [Přiblížit]{.ui}. Otevře obrázek
na celou obrazovku, kde si ho můžeš roztažením prstů nebo dvojitým
klepnutím prohlédnout zblízka.

## Uloží se karta, která je zrovna vidět {#tabs}

Karty [Text]{.ui}, [Obrázek]{.ui} a [Audio]{.ui} vypadají jako tři
šuplíky jedné strany. Ve skutečnosti jsou to spíš tři *druhy* strany a
[Uložit]{.ui} uloží tu, jejíž karta je zrovna vidět:

| Uloženo na kartě | Co si strana ponechá |
|---|---|
| [Text]{.ui} | Text; obrázek, pokud je v textu nebo pod ním; zvuk, který kartička už měla |
| [Obrázek]{.ui} | Obrázek; zvuk, který kartička už měla. Text se zahodí |
| [Audio]{.ui} | Zvuk a jazyk strany. Text i obrázek se zahodí |

::: gotcha
#### Před uložením se přepni zpátky na Text

Měníš zvuk nebo obrázek kartičky, která má i text? Změnu udělej na kartě
[Audio]{.ui} nebo [Obrázek]{.ui}, pak se přepni zpátky na [Text]{.ui} a
klepni na [Uložit]{.ui} tam. Když uložíš na jiné kartě, strana přijde o
text.
:::

Z toho pravidla plynou jednoduché recepty na smíšené kartičky:

- **Text a obrázek:** zůstaň na kartě [Text]{.ui} a obrázek přidej
  tlačítkem obrázku na panelu nástrojů.
- **Obrázek a zvuk:** vyber zvuk na kartě [Audio]{.ui} a ulož. Pak
  kartičku uprav, vyber obrázek na kartě [Obrázek]{.ui} a ulož znovu.
- **Text a zvuk:** vyber zvuk na kartě [Audio]{.ui} a ulož. Pak kartičku
  uprav, napiš text na kartě [Text]{.ui} a ulož.

Dvoukrokové recepty jsou potřeba proto, že zvuk vybraný na *nové*
kartičce se uloží jen z karty [Audio]{.ui}. Jakmile kartička zvuk má,
ostatní karty si ho ponechají.

## Popis a autorství obrázků {#descriptions}

Když má strana obrázek, objeví se pod ním dvě pole: [Popis
obrázku]{.ui} a [Licence obrázku]{.ui}. Obě jsou nepovinná a obě stojí za
pár vteřin.

### Popis

VoiceOver místo obrázku přečte popis. Bez něj řekne jen „Obrázek“, což
tomu, kdo kartičku nevidí, nic neřekne.

Popiš, co obrázek *ukazuje*, ne co *znamená*. Na kartičce s otázkou
„Který je to pták?“ napiš „Malý hnědý pták s červenou hrudí na sloupku
plotu“ — ne „Červenka“, to by prozradilo odpověď.

::: note
#### Popis a mluvená nápověda jsou dvě různé věci

Popis je pro VoiceOver. Mluvená nápověda z kapitoly 3,
`![attachment:0]{červené jablko}`, je to, co řekne tlačítko reproduktoru
a funkce Mluvit karty. Obrázek bez nápovědy při čtení kartičky nahlas
mlčí, ať je v popisu cokoli.
:::

### Licence

Používáš cizí fotku nebo kresbu? Do pole [Licence obrázku]{.ui} uveď
autora a licenci — například „Foto: Jana Nováková, CC BY 4.0“. Odkazy
zapsané jako `[popisek](https://…)` v tomto poli fungují.

Na kartičce se v zápatí objeví malé tlačítko ⓘ. Klepnutím otevřeš panel
s celým textem, takže uvedení autora je k dispozici každému, kdo o něj
stojí, a kartička přitom zůstane přehledná.

![Kartička s fotkou a tlačítkem licence ⓘ v zápatí; nad ní otevřený panel Licence obrázku.](images/manual/{lang}/04-licence-sheet.jpg){.phone}

Licence mohou nést i kurátorované balíčky a balíčky vytvořené AI, a to
v polích `q_image_license` a `a_image_license` (kapitola 5).

## Velikost, formáty a synchronizace {#size}

Obrázek kartičky cestuje s kartičkou. Je uložený ve tvé knihovně a přes
iCloud se synchronizuje do všech zařízení, takže obrázek přidaný na Macu
máš za chvilku i na iPhonu.

To pohodlí má svou cenu: každý megabajt se synchronizuje do každého
zařízení. JustFlip! drží obrázky na uzdě sám. Při uložení zmenší obrázek,
který má na delší straně víc než 3 000 pixelů, na 3 000; neprůhlednou
fotku uloží jako JPEG a obrázek s průhledností si ji ponechá. Menší
obrázky se uloží přesně tak, jak jsou.

Zvukové soubory se ukládají přesně tak, jak je vybereš. Tříminutová
nahrávka snadno váží víc než sto textových kartiček, takže klipy
zkracuj na tu část, kterou potřebuješ.

| | Funguje | Nefunguje |
|---|---|---|
| Obrázky | Cokoli, co ukáže tvoje knihovna Fotek; PNG, JPEG, GIF a WebP z importů | SVG a jiné vektorové formáty |
| Zvuk | Soubory, které systém rozpozná jako audio, třeba `.mp3`, `.m4a` a `.wav` | Video |

::: gotcha
#### Žádné SVG

Vektorové kresby (`.svg`) na kartičce zobrazit nejde. Kresbu nejdřív
exportuj jako PNG — zhruba 2 000 pixelů na šířku, s bílým pozadím (viz
[Obrázky, které fungují](#good-images)).
:::

## Zvuk na kartičce {#audio}

Otevři kartu [Audio]{.ui} a klepnutím na [Vybrat zvukový soubor]{.ui}
vyber soubor z aplikace Soubory. Karta pak ukáže název a velikost
souboru, tlačítko koše k jeho odstranění a [Vyměnit audio]{.ui}. Pod nimi
je [Jazyk]{.ui} dané strany.

JustFlip! nenahrává z mikrofonu. Nahraj si zvuk v Diktafonu, sdílej
nahrávku do Souborů a vyber ji odtamtud.

![Karta Audio s vybraným zvukovým souborem: jeho název, velikost, tlačítko koše a Vyměnit audio.](images/manual/{lang}/04-audio-tab.jpg){.phone}

### Jak se přehrává

Nic se nepřehraje samo. Co uvidíš, záleží na straně:

- **Strana, která je jen zvukem**, ukáže uprostřed kartičky jedno velké
  tlačítko přehrávání.
- **Strana, která má i text nebo obrázek**, má v zápatí malé tlačítko
  [Audio]{.ui} vedle tlačítka reproduktoru. Během přehrávání na něm stojí
  [Přehrávám]{.ui}.

Spuštění zvuku zastaví hlas, pokud zrovna čte kartičku, a naopak.

### Víc stop

Poznámky z Anki někdy nesou na jedné straně víc zvuků — slovo, pak
ukázkovou větu. JustFlip! si je ponechá všechny, v původním pořadí.
Tlačítko v zápatí pak zní **Audio (2)**, **Audio (3)** a tak dál a otevře
nabídku s položkou pro každou stopu.

::: gotcha
#### Výměna jedné stopy vymění všechny

Editor ukazuje jen první stopu. [Vyměnit audio]{.ui} nebo tlačítko koše
působí na *všechny* stopy dané strany. Pokud si chceš další stopy
ponechat, kartu [Audio]{.ui} nech být.
:::

## Zakrytí obrázku {#occlusion}

**Zakrytí obrázku** (image occlusion) udělá z jednoho obrázku mnoho
kartiček. Části diagramu zakryješ tvary; z každé zakryté části se stane
vlastní kartička s otázkou „Co je tady pod tím?“. Je to nejrychlejší
způsob, jak se naučit mapu, anatomický atlas, schéma obvodu, prstoklad —
cokoli, co je obrázkem plným popisků.

![Editor zakrytí: anatomický diagram s obdélníky přes popisky a nad ním řada nástrojů.](images/manual/{lang}/04-occlusion-editor.jpg){.shot width=80%}

### Vytvoření kartiček se zakrytím

1. Otevři balíček, klepni na tlačítko [Další akce]{.ui} (•••) a zvol
   [Přidat kartičky se zakrytím obrázku]{.ui}.
2. Klepni na [Vybrat obrázek]{.ui} a vyber obrázek.
3. Tažením přes obrázek zakryj oblast. Zopakuj to pro každý popisek,
   který se chceš naučit.
4. Vyber režim, přidej nepovinný text a klepni na **Uložit N karet**.

Nástroje nad obrázkem:

| Nástroj | Co dělá |
|---|---|
| [Obdélník]{.ui} / [Elipsa]{.ui} | Tažením nakreslí novou oblast |
| [Vybrat]{.ui} | Oblast přesuneš tažením; velikost změníš rohovým úchytem |
| [Zpět]{.ui} / [Znovu]{.ui} | Krok zpět a vpřed v úpravách |
| [Duplikovat oblast]{.ui} | Zkopíruje vybranou oblast |
| [Smazat oblast]{.ui} | Odstraní vybranou oblast |
| [Změnit obrázek]{.ui} | Vymění obrázek pod oblastmi |

### Dva režimy {#occlusion-modes}

V části [Režim]{.ui} volíš, kolik z obrázku bude skryto, zatímco se
kartička ptá. Tak či tak se z každé oblasti stane vlastní kartička.

| Režim | Během otázky | Nejlepší pro |
|---|---|---|
| [Skrýt jednu, hádat jednu]{.ui} | Zakrytá je jen zkoušená oblast; všechny ostatní popisky vidíš | Učení, kde co je, se sousedy jako vodítkem |
| [Skrýt vše, hádat jednu]{.ui} | Zakryté jsou všechny oblasti; zkoušená má výraznější okraj a otazník | Poctivé zkoušení bez nápovědy ostatních popisků |

Začni režimem [Skrýt jednu, hádat jednu]{.ui}. Až ti obrázek přijde
snadný, je druhá sada kartiček v režimu [Skrýt vše, hádat jednu]{.ui}
dobrou zkouškou.

### Text kolem obrázku

Pod režimem jsou tři nepovinná pole:

- **[Nadpis (nepovinné)]{.ui}** — zobrazí se nad obrázkem na každé
  kartičce. Sem patří otázka: „Pojmenuj kost.“
- **[Poznámky k celému obrázku (nepovinné)]{.ui}** — zobrazí se pod
  obrázkem, jakmile se odkryje odpověď. Hodí se na mnemotechnickou
  pomůcku nebo detail.
- **[Komentáře (nepovinné)]{.ui}** — poznámka pro tebe. Uloží se s
  kartičkami, ale během opakování se nezobrazuje.

Pak je tu [Popis obrázku]{.ui}. Jak říká editor, VoiceOver ho přečte
místo obrázku, takže popiš diagram, aniž bys prozradil jakoukoli
odpověď: raději „Pohled zepředu na lidskou kostru“ než seznam kostí.

::: gotcha
#### Zakrytí skryje obrázek, ne text v něm

Oblast zakryje přesně plochu, kterou jsi nakreslil. Když popisek
vyčuhuje z obdélníku, odpověď je vidět. Kresli velkoryse — okraj kolem
každého popisku nic nestojí.
:::

### Opakování kartičky se zakrytím {#occlusion-review}

Kartička se zakrytím se neotáčí. Obrázek zůstane na místě; klepni nahoře
na [Zobrazit odpověď]{.ui} — nebo na klávesnici stiskni mezerník — a
zakrytá oblast se otevře a orámuje, zatímco zbytek zůstane, jak byl. Pak
ji ohodnoť jako kteroukoli jinou kartičku. Detailní diagram si přiblížíš
roztažením prstů.

![Kartička se zakrytím během opakování, před a po Zobrazit odpověď.](images/manual/{lang}/04-occlusion-review.jpg){.phone}

Kartičky se zakrytím jsou součástí běžného opakování na iPhonu, iPadu i
Macu. Apple Watch je vynechají a řeknou ti, kolik kartiček čeká na
iPhone.

### Úprava kartičky se zakrytím {#occlusion-edit}

Uprav kteroukoli kartičku ze sady — podrž na ní prst (nebo na Macu
klikni pravým tlačítkem) a zvol [Upravit kartu]{.ui} — a JustFlip!
otevře editor oblastí, ne textový editor. Tam můžeš oblasti přesouvat,
přidávat nebo mazat a měnit režim, text, nebo dokonce obrázek.

Oblasti, které ponecháš, si ponechají i historii opakování. Z oblasti,
kterou přidáš, se stane nová kartička; oblast, kterou smažeš, vezme svou
kartičku s sebou.

::: note
#### Zakrytí z Anki a ze souborů

Vlastní poznámky Anki se zakrytím obrázku i starší doplněk Image
Occlusion Enhanced dorazí při importu balíčku jako nativní kartičky
JustFlip! se zakrytím (kapitola 5). Kartičky se zakrytím mohou
obsahovat i soubory balíčků vytvořené skillem pro programovací agenty.
:::

## Obrázky, které fungují {#good-images}

Kartička vykreslí tvůj obrázek přesně tak, jak je. Není za ním žádná
podložka, žádný rámeček ani automatická úprava kontrastu. Díky tomu
fotky vypadají přirozeně — a vyplatí se osvojit si pár návyků.

::: gotcha
#### Průhledná perokresba v tmavém režimu zmizí

PNG s černými čarami na průhledném pozadí vypadá ve světlém režimu
skvěle. V tmavém režimu je kartička za ním téměř černá a kresba zmizí —
čáry, popisky, noty v osnově, všechno. Než přidáš diagram, obrázek
vzorce nebo naskenovaný náčrt, dej mu plné bílé nebo světlé pozadí.
Většina editorů obrázků tomu říká *sloučit* (flatten); export do JPEG to
udělá také. Než jich vyrobíš dalších padesát, zkontroluj kartičku jednou
v tmavém režimu.
:::

Pár dalších osvědčených pravidel:

1. **Používej rastrové obrázky.** PNG pro diagramy, text a perokresby;
   JPEG pro fotky. Žádné SVG.
2. **Zhruba 2 000 pixelů na delší straně bohatě stačí.** JustFlip! nikdy
   nekreslí obrázek na kartičce větší než asi 2 200 pixelů a cokoli nad
   3 000 při uložení zmenší. Vyšší rozlišení jen prodlužuje
   synchronizaci.
3. **Ořezávej nekompromisně.** Kartička je malá. Odřízni všechno, na co
   se neptáš — obrázek se tím zadarmo zvětší.
4. **Text v obrázku drž velký.** Popisky, které jsou čitelné na
   obrazovce notebooku, bývají na kartičce v iPhonu rozmazané. Přiblížení
   pomůže, ale kartička, kterou musíš přibližovat, se opakuje pomaleji.
5. **Jedna myšlenka na obrázek.** Diagram s dvaceti popisky je jedna
   špatná kartička a dvacet dobrých kartiček se zakrytím.

## Rychlý přehled {#reference .cheatsheet}

| Úkol | Kde |
|---|---|
| Obrázek uvnitř textu | Karta [Text]{.ui} → tlačítko obrázku na panelu nástrojů |
| Obrázek jako celá strana | Karta [Obrázek]{.ui} → [Vybrat obrázek]{.ui} |
| Obrázek ze schránky | Vlož do textového pole (⌘V na Macu) |
| Odstranění obrázku | Karta [Obrázek]{.ui} → [Odebrat]{.ui} |
| Popis pro VoiceOver | [Popis obrázku]{.ui}, pod obrázkem |
| Uvedení autora | [Licence obrázku]{.ui} → tlačítko ⓘ na kartičce |
| Přidání zvuku | Karta [Audio]{.ui} → [Vybrat zvukový soubor]{.ui} |
| Výměna nebo odstranění zvuku | Karta [Audio]{.ui} → [Vyměnit audio]{.ui} nebo tlačítko koše |
| Nové kartičky se zakrytím | Balíček → [Další akce]{.ui} → [Přidat kartičky se zakrytím obrázku]{.ui} |
| Úprava oblastí zakrytí | Uprav kteroukoli kartičku ze sady |
| Odkrytí kartičky se zakrytím | [Zobrazit odpověď]{.ui}, nebo mezerník |
