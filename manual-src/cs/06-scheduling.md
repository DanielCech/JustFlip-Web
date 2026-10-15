---
slug: scheduling
number: 6
title: Jak funguje plánování
description: "Jak JustFlip! rozhoduje, kdy kartičku uvidíš znovu: fáze učení, intervaly a snadnost, kdy je kartička na řadě, priority opakování, odkládání, ukazatele pokroku a Chytré plánování."
---

# Jak funguje plánování {#scheduling number="6"}

::: lede
Opakování nikdy nemusíš plánovat. Každé tvé hodnocení řekne JustFlip!,
jak dobře kartičku umíš, a aplikace spočítá, kdy ti ji ukázat příště:
brzy, když ti vyklouzla, mnohem později, když byla snadná. Tato kapitola
zvedá pokličku. Uvidíš, co znamenají jednotlivé fáze, proč intervaly
rostou tak, jak rostou, a kterými ovládacími prvky můžeš frontu řídit,
aniž bys šidil svou paměť.
:::

::: inthischapter
- Pět fází, kterými kartička prochází, a co ji posouvá dál
- Intervaly a snadnost lidsky, s přesnou matematikou pro zvídavé
- Co znamená „na řadě“ a jak JustFlip! rozhoduje, co přijde první
- Dej jednomu oboru víc svého času pomocí priorit opakování
- Odlož kartičku, balíček nebo celý zájem a pak je vrať
- Sleduj dovednosti, které kartičky neohodnotí, pomocí ukazatelů pokroku
:::

## Myšlenka za minutu {#idea}

Paměť slábne po křivce. Hned potom, co se něco naučíš, to rychle
zapomínáš, a pokaždé, když si to znovu vybavíš, se křivka zploští.
Rozložené opakování toho využívá: ukáže ti kartičku těsně předtím, než
bys ji zapomněl. Každé úspěšné vybavení posune další opakování dál.

V JustFlip! nese každá kartička tři čísla:

| Číslo | Co znamená |
|---|---|
| **Interval** | Za jak dlouho se kartička vrátí, od minut po měsíce |
| **Snadnost** | Jak rychle interval u této kartičky roste. Začíná na 2,5 |
| **Datum opakování** | Okamžik, kdy interval vyprší a kartička je znovu na řadě |

Tvoje hodnocení po každém otočení změní snadnost a interval a datum
opakování se podle nich posune. Tlačítka hodnocení ukazují interval,
který by každá volba dala, takže se nic neděje za tvými zády. Po
ohodnocení ti krátká nápověda [Další: …]{.ui} potvrdí, kdy kartičku
uvidíš znovu.

## Pět fází {#stages}

Každá kartička je v jedné z pěti fází. Fáze je štítek, který popisuje
interval kartičky. O intervalu nerozhoduje.

| Fáze | Význam | Obvyklý interval |
|---|---|---|
| **Neviděno** | Ještě nestudovaná | — |
| **Učení** | Čerstvě naučená, nebo zapomenutá z Opakování | minuty až pár dní |
| **Opakování** | Interval dosáhl 7 dní | jeden až čtyři týdny |
| **Zvládnuto** | Interval dosáhl 30 dní | měsíce |
| **Přeučování** | Zvládnutá kartička, kterou jsi zapomněl | zase krátké kroky |

```text
Neviděno ──hodnocení──▶ Učení ──7 dní──▶ Opakování ──30 dní──▶ Zvládnuto
                          ▲                  │                     │
                          └───── Znovu ──────┘               Znovu │
                                                                   ▼
                                                              Přeučování
```

Co kartičku mezi fázemi posouvá:

- **Jakékoli hodnocení** převede kartičku z Neviděno do Učení.
- **Těžké, Dobré nebo Snadné** posunou kartičku výš, jakmile její nový
  interval překročí práh: 7 dní z ní udělá Opakování, 30 dní Zvládnuto.
  Fáze se řídí intervalem, takže hodnocení Snadné u nové kartičky ji
  hned nepovýší na Zvládnuto. Svých 30 dní si pořád musí vysloužit.
- **Znovu** pošle kartičku z Učení nebo Opakování zpátky do Učení a
  zvládnutou kartičku do Přeučování. V obou případech klesne interval na
  5 minut.
<!-- VERIFY: in SM-2 mode a Relearning card's Good/Easy interval is always the initial step (1 or 4 days), so it never reaches the 7-day threshold and appears to stay in Relearning. Confirm the intended exit path in CardStatistics+SRS.swift calculateNextInterval before describing how a card leaves Relearning. -->

Obrazovka Statistiky počítá tvé kartičky podle fází, v části
**Kolekce**: [Nové]{.ui}, [Učení]{.ui} (včetně Přeučování),
[Opakování]{.ui} a [Zvládnuto]{.ui}. Zbytek té obrazovky popisuje
kapitola 9.

::: note
#### Zvládnutí není totéž co Zvládnuto

Procento **Zvládnutí** u balíčku nebo zájmu počítá kartičky, jejichž
*poslední* hodnocení bylo Dobré nebo Snadné. Není to podíl kartiček ve
fázi Zvládnuto. Balíček může ukázat vysoké zvládnutí už po jednom dobrém
sezení, dlouho předtím, než se cokoli dostane do fáze Zvládnuto.
Zvládnutí ti říká, jak se ti dařilo v poslední době. Fáze ti říkají, jak
pevně vědomosti sedí.
:::

## Intervaly a snadnost {#intervals}

### První hodnocení

Kartička, kterou jsi ještě nehodnotil, nebo kterou jsi právě zapomněl,
začíná pevnými prvními kroky:

| Hodnocení | Další opakování |
|---|---|
| Znovu | za 5 minut |
| Těžké | za 20 minut |
| Dobré | za 1 den |
| Snadné | za 4 dny |

### Každé další hodnocení

Od té chvíle vychází každé hodnocení z intervalu, který kartička už má:

- **Znovu** začíná od začátku: 5 minut a nižší snadnost.
- **Těžké** interval trochu prodlouží, o 20 %, a sníží snadnost.
- **Dobré** vynásobí interval snadností kartičky: u běžné kartičky
  zhruba 2,5×.
- **Snadné** vynásobí snadností *a* bonusem 1,3 a snadnost zvýší.

Snadnost je vlastní tempo růstu kartičky. Každé Těžké a Znovu zpomalí
její další růst. Každé Snadné ho zrychlí. Snadnost nikdy neklesne pod
1,3 ani nevystoupá nad 3,5, takže i obtížná kartička postupuje vpřed,
jen menšími kroky.

Tady je nová kartička, kterou pokaždé ohodnotíš **Dobré**:

| Opakování | Interval | Fáze potom |
|---|---|---|
| 1. | 1 den | Učení |
| 2. | 2,5 dne | Učení |
| 3. | asi 6 dní | Učení |
| 4. | asi 16 dní | Opakování |
| 5. | asi 39 dní | Zvládnuto |

Pět úspěšných opakování rozložených zhruba do dvou měsíců — a kartička
se pak vrací jen jednou za měsíc nebo i řidčeji.

::: tip
#### Proč dny kolísají

Intervaly od dvou dnů výš dostanou malé náhodné postrčení až o ±10 %.
Kartičky, které ses naučil společně jeden večer, by se jinak navždy
vracely spolu, jako jeden velký chumel v kalendáři. Postrčení je rozprostře
do sousedních dnů. Tlačítka hodnocení vždy ukazují interval před
postrčením, takže skutečné datum se může lišit zhruba o den.
:::

::: note
#### Pod kapotou: varianta SM-2

JustFlip! používá variantu SM-2, algoritmu, na kterém stojí SuperMemo a
Anki. Se snadností *E* a aktuálním intervalem *I* hodnocení nejdřív
upraví snadnost, omezenou mezi 1,3 a 3,5:

$$
E' = \min\bigl(3.5,\ \max(1.3,\ E + \Delta)\bigr), \qquad \Delta \in \{-0.20,\ -0.15,\ 0,\ +0.15\}
$$

pro Znovu, Těžké, Dobré a Snadné. Nový interval kartičky, která už je v
běhu, je pak:

$$
I_{\text{hard}} = \max(1.2\,I,\ 1\ \text{hour})
$$

$$
I_{\text{good}} = \max(E'\,I,\ 1\ \text{day})
$$

$$
I_{\text{easy}} = \max(1.3\,E'\,I,\ 4\ \text{days})
$$

Znovu vždy dá 5 minut. Intervaly od dvou dnů výš se pak vynásobí
náhodným koeficientem:

$$
I_{\text{final}} = I \times (1 + u), \qquad u \in [-0.1,\ 0.1]
$$
:::

### Chytré plánování (Pro) {#smart-schedule}

V **Nastavení › Chování** nahradí přepínač [Chytré plánování]{.ui}
(označený [BETA]{.ui}) intervaly SM-2 plánovačem **FSRS-5**, moderním
algoritmem. FSRS naplánuje každé opakování na okamžik, kdy šance, že si
kartičku vybavíš, klesne zhruba na 90 %. Cílem je méně opakování při
stejné retenci. Mění jen intervaly pro Těžké, Dobré a Snadné. Znovu
pořád vrátí kartičku za 5 minut.

JustFlip! udržuje hodnoty SM-2 aktuální v každém případě, takže Chytré
plánování můžeš kdykoli vypnout a nic se neztratí. Je to funkce Pro. Bez
Pro otevře klepnutí na přepínač obrazovku Pro.

## Co znamená „na řadě“ {#due}

Kartička je **na řadě** (k opakování), jakmile její datum opakování
uplyne, pokud jsi ji nevyřadil nebo neodložil. Vyřazené kartičky
(kapitola 2) a odložené kartičky (viz [Odkládání](#postponing)) si
ponechávají plán. Jen se neobjevují, dokud jsou odložené stranou.

Kartičky, které jsi nikdy nestudoval, na řadě nejsou. Jsou **nové**.
Sezení [Dnes]{.ui} kombinuje obojí: nejdřív kartičky k opakování, pak
čerstvé kartičky z tvého denního limitu. Výchozí hodnoty jsou 20
[Karet na sezení]{.ui} a 10 [Nových karet denně]{.ui}, obojí v
**Nastavení › Chování**.

### Které kartičky přijdou první

V sezení Dnes a v nabídce opakování na obrazovce Balíčky staví
JustFlip! frontu takto:

1. **Nejstarší první.** Kartičky, které přišly na řadu dřívější den,
   jdou před kartičkami, které přišly na řadu později.
2. **Denní zamíchání v rámci každého dne.** Kartičky na řadě ve stejný
   den se promíchají v pořadí, které se každý den mění. Krátké sezení tak
   z velkého nedodělku nebere pořád stejný přední kousek.
3. **Balíčky se střídají.** Kartičky každého balíčku se prolínají s
   ostatními na střídačku, vážené prioritou (viz
   [Priority opakování](#priorities)).
4. **Nové kartičky nakonec**, do toho, co zbývá z denního limitu a
   velikosti sezení.
5. **Sourozenci se zakrytím obrázku jsou od sebe oddělení**, takže dvě
   kartičky ze stejného obrázku nepřijdou hned po sobě.

Opakování spuštěné ze seznamu kartiček jednoho balíčku zamíchá kartičky
k opakování toho balíčku.

::: gotcha
#### Znovu kartičku ve stejném sezení nezopakuje

Kartička ohodnocená **Znovu** je znovu na řadě za 5 minut, ale později v
aktuálním sezení se znovu neobjeví. Potkáš ji v příštím sezení. Chceš-li
druhý pokus hned, dokonči sezení a za pár minut spusť další.
:::

### Naléhavost

Zájmy a balíčky dostávají také skóre **naléhavosti**, které řídí barevný
ukazatel v seznamech a řazení [Podle naléhavosti]{.ui}. Kombinuje několik
signálů. Největší váhu má podíl kartiček na řadě a to, jak moc je
nejstarší kartička po termínu. Menší váhu má, jak dávno jsi balíček
studoval, nízké zvládnutí a pár nových kartiček. Vyřazené a odložené
kartičky se nepočítají. Několik hodin po studiu balíčku zůstává jeho
naléhavost na nule, aby ukazatel nevzplál kvůli 5minutovým návratům do
fronty.

**Nastavení › Tempo opakování** mění, jak rychle naléhavost roste:
**Uvolněné** (pomalu, s menšími prvními dávkami), **Vyrovnané** (výchozí)
nebo **Intenzivní** (rychle, s viditelnou celou frontou). Tempo
opakování nikdy nemění samotné intervaly.

## Priority opakování {#priorities}

Když máš víc kartiček na řadě než času, priorita rozhodne, čí kartičky
uvidíš první. Každý zájem má [Priorita učení]{.ui} od 0 % do 100 %, v
krocích po 5 %. Začíná na **75 %**. Každý balíček ve výchozím stavu
[Zdědit od zájmu]{.ui}, nebo si nastaví vlastní hodnotu.

Nastavit ji můžeš na kterémkoli ze tří míst:

- **Zájem:** podrž na něm prst v seznamu Zájmy, zvol
  [Upravit zájem]{.ui} a posuň jezdec [Priorita učení]{.ui}.
- **Balíček:** podrž na něm prst, zvol [Upravit balíček]{.ui}, vypni
  [Zdědit od zájmu]{.ui} a posuň jezdec.
- **Všechny balíčky zájmu najednou:** na obrazovce Balíčky otevři
  nabídku [Možnosti balíčků]{.ui} (ikona složky) a zvol
  [Priorita opakování]{.ui}. Panel ukáže jezdec [Priorita zájmu]{.ui} a
  pod [Priorita balíčku]{.ui} jeden řádek pro každý balíček.

![Panel Priorita opakování: nahoře jezdec zájmu, pod ním řádek pro každý balíček s vlastním přepínačem Zdědit od zájmu.](images/manual/{lang}/06-review-priority.jpg){.phone}

### Jak míchání funguje

Priorita mění *pořadí* fronty, ne její obsah. Představ si, že každý
balíček rozdává své kartičky na řadě postupně. Balíček s dvojnásobnou
prioritou rozdává dvakrát častěji:

| Balíček | Priorita | Pořadí jeho kartiček v sezení |
|---|---|---|
| Španělština | 100 % | 1., 3., 4., 6., 7. … |
| Chemie | 50 % | 2., 5., 8. … |

S výchozími 75 % všude se balíčky prostě střídají, po jedné kartičce.
Vyšší priorita získá větší část omezeného sezení a nižší se odsune ke
konci.

::: gotcha
#### Priorita nikdy kartičku neskryje

I při 0 % jsou kartičky balíčku na řadě pořád na řadě. Jen se nabídnou
až po všem ostatním. Počty kartiček k opakování ve widgetu, v Dnes a na
obrazovce Balíčky zůstanou při posunu jezdce úplně stejné. Priorita hraje
roli jen tehdy, když je sezení omezené: v Dnes a v nabídce opakování na
obrazovce Balíčky. Opakování jednoho balíčku nemá s čím soutěžit.
:::

## Odkládání {#postponing}

Někdy kartička není špatně, jen teď není správná chvíle: zkouškový týden
z jiného předmětu, dovolená, balíček, ke kterému se vrátíš příští měsíc.
Hodnocení Znovu nebo Těžké by poškodilo její plán. **Odložení** ji místo
toho pozastaví, aniž by se plánu jakkoli dotklo.

### Jak odložit

Během jakéhokoli opakování klepni na tlačítko [Odložit]{.ui} (ikona
hodin nahoře na obrazovce opakování). Vyber rozsah:

- [Odložit tuto kartičku]{.ui}
- [Odložit tento balíček]{.ui}
- [Odložit tento zájem]{.ui}

Pak vyber na jak dlouho: [Zítra]{.ui}, [Za 3 dny]{.ui},
[Za týden]{.ui}, nebo [Vlastní datum…]{.ui} a vyber den v části
[Obnovit]{.ui}. Odložení trvá do začátku toho dne, takže „Zítra“
znamená celý zítřek, ne 24 hodin od teď.

![Nabídka Odložit během opakování s možnostmi pro kartičku, balíček a zájem.](images/manual/{lang}/06-postpone-menu.jpg){.phone}

Odložené kartičky z probíhajícího sezení hned zmizí. Pokud během
opakování jednoho balíčku odložíš ten balíček nebo jeho zájem, sezení
skončí, protože už není co opakovat.

### Co odložení dělá

Odložení je čistý filtr. Nic se nehodnotí, interval i snadnost zůstanou,
jak jsou, a historie kartičky se nezmění. Dokud odložení trvá:

| Kde | Odložené kartičky |
|---|---|
| Dnes, widget, počty k opakování a předpověď | vynechány |
| [Karty k opakování]{.ui} a [Problémové karty]{.ui} | vynechány |
| [Nové karty]{.ui} (nabídka na obrazovce Balíčky) | vynechány, i když nikdy nebyly studovány |
| [Všechny karty]{.ui} | **zahrnuty** |

Když je odložená kartička, její balíček i její zájem, platí nejpozdější
datum.

### Jak odložení zrušit

Odložení skončí samo v den, který jsi vybral. Chceš-li ho ukončit dřív,
otevři obrazovku Balíčky daného zájmu a zvol
[Možnosti balíčků]{.ui} › [Priorita opakování]{.ui}. Dokud je něco
odložené, má panel sekci [Odloženo]{.ui} s počtem odložených kartiček a
tlačítkem pro každé aktivní odložení:

- [Obnovit tento zájem]{.ui}
- [Obnovit *název balíčku*]{.ui}, jedno pro každý odložený balíček

::: gotcha
#### Jednotlivou kartičku nejde obnovit dřív

Sekce Odloženo uvádí jen odložení zájmů a balíčků. Odložení jednotlivé
kartičky se počítá do součtu, ale tlačítko Obnovit nemá. Prostě vyprší ve
svůj den. Chceš-li ho zkrátit, otevři opakování [Všechny karty]{.ui}
daného balíčku, které odložení ignoruje. Až kartička přijde, odlož ji
znovu volbou [Zítra]{.ui}.
:::

::: tip
#### Všechny karty jsou režim pro biflování

[Všechny karty]{.ui} schválně zahrnují vyřazené i odložené kartičky.
Použij je večer před zkouškou, nebo když chceš odložený balíček projít i
tak. Tvá hodnocení se tam počítají jako jakákoli jiná.
:::

## Ukazatele pokroku (Pro) {#trackers}

Některé dovednosti se na kartičku nevejdou: skladba, kterou cvičíš na
klavír, lezecká technika, kniha, kterou postupně čteš. **Ukazatel
pokroku** je zvláštní kartička s názvem, nepovinnými poznámkami a
ukazatelem pokroku, který si nastavuješ sám.

Chceš-li ho přidat, otevři balíček, klepni na nabídku [Další akce]{.ui} a
zvol [Přidat ukazatel pokroku]{.ui}. Poprvé ti krátký úvod vysvětlí, o
co jde. Pojmenuj ukazatel ([Co chcete sledovat?]{.ui}) a případně přidej
poznámky. Později na ukazatel klepni a posuň jezdec [Pokrok]{.ui}, od 0
do 100 v krocích po pěti, podle toho, jak daleko se cítíš.

![Balíček ukazatelů pokroku, každý s vlastním pruhem pokroku a procenty.](images/manual/{lang}/06-progress-tracker.jpg){.phone}

Co ukazatel dělá a co ne:

- **Nikdy se neopakuje.** Ukazatele zůstávají mimo všechna sezení
  opakování, Dnes, počty k opakování, fáze ve Statistikách i Mluvit
  karty.
- **Nepočítá se do tvé série.** Nikdo tě nezkouší, takže není co
  počítat.
- **Počítá se do zvládnutí balíčku.** Kartička přidá ke zvládnutí
  balíčku 1, když bylo její poslední hodnocení Dobré nebo Snadné.
  Ukazatel přidá svůj vlastní pokrok: 60 % přidá 0,6. Balíček, který
  obsahuje jen ukazatele, ukáže jako zvládnutí jejich průměrný pokrok.
<!-- VERIFY: the in-app intro string trackerIntroPoint3Text says trackers "never affect deck mastery", but DeckStatistics.masteryIncludingTrackers (used by the card list and BackgroundStatsActor) blends them in. The manual follows the code; one of the two should be aligned. -->

::: gotcha
#### Ukazatele hodnotíš sám

Ukazatel říká přesně to, co mu řekneš, nic víc. O to jde, ale znamená to
také, že ukazatel nastavený na 100 % vytáhne zvládnutí balíčku nahoru
stejně jako kartička, kterou opravdu umíš. Buď k jezdci upřímný.
:::

Ukazatele pokroku jsou funkce Pro. Bez Pro má položka nabídky zámek a
otevře obrazovku Pro. Ukazatele, které už máš, zůstanou v bezpečí. Na
jejich místě ukáže balíček jediný řádek s tím, kolik ukazatelů obsahuje,
a vrátí se, jakmile bude Pro znovu aktivní.

## Vyřazené kartičky {#retire}

**Vyřazení** kartičky („tohle umím, přestaň mě zkoušet“) ji vyjme z
režimů K opakování a Problémové, aniž by smazalo její historii.
Vysvětluje ho kapitola 2. Pro plánování si zapamatuj dvě věci:

- Vyřazená kartička si ponechá interval, snadnost i datum opakování.
  Zařaď ji znovu a naváže přesně tam, kde skončila.
- Vyřazená kartička se pořád počítá do zvládnutí, ale už ne do
  naléhavosti ani do počtů kartiček k opakování.

## Rychlý přehled {#reference}

| Nastavení nebo hodnota | Kde | Výchozí |
|---|---|---|
| První kroky (Znovu / Těžké / Dobré / Snadné) | vestavěné | 5 min / 20 min / 1 den / 4 dny |
| Počáteční snadnost | vestavěné | 2,5 (rozsah 1,3–3,5) |
| Opakování / Zvládnuto | vestavěné | interval ≥ 7 / ≥ 30 dní |
| [Karet na sezení]{.ui} | Nastavení › Chování | 20 |
| [Nových karet denně]{.ui} | Nastavení › Chování | 10 |
| [Chytré plánování]{.ui} (Pro) | Nastavení › Chování | vypnuto |
| Tempo opakování | Nastavení › Tempo opakování | Vyrovnané |
| [Priorita učení]{.ui} | Upravit zájem / Upravit balíček / Priorita opakování | 75 %, balíčky dědí |
| Odložení | obrazovka opakování, ikona hodin | — |
| Návrh na vyřazení | obrazovka výsledků | interval ≥ 90 dní a 4 správně v řadě |
