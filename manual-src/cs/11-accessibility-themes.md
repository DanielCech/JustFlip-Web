---
slug: accessibility-themes
number: 11
title: Přístupnost a motivy
description: "Jak JustFlip! funguje s VoiceOverem, větším textem, funkcemi Omezit pohyb, Zvýšit kontrast a Ovládání hlasem, jak vybrat motiv a velikost textu a jak psát kartičky, ze kterých se může učit každý."
---

# Přístupnost a motivy {#accessibility-themes number="11"}

::: lede
JustFlip! staví na nastaveních zpřístupnění, která už na iPhonu, iPadu a
Macu používáš. V aplikaci nemusíš nic zapínat. VoiceOver, větší text,
Omezit pohyb a Zvýšit kontrast prostě fungují. Navíc má JustFlip!
vlastní velikost textu a pět motivů, aby se aplikace pohodlně četla a
vypadala tak, jak se ti líbí.
:::

::: inthischapter
- Zjisti, kterými nastaveními systému se JustFlip! řídí a co které mění
- Opakuj s VoiceOverem: otáčení, hodnocení a poslech mezer v doplňovačkách
- Nastav velikost textu pro celé zařízení, nebo jen pro JustFlip!
- Vyber motiv: JustFlip světlý, JustFlip tmavý, Mlha, Mlha tmavá nebo Systém
- Piš kartičky, které fungují pro každého, ať vidí a slyší jakkoli
:::

## Řídí se tvým nastavením {#system-settings}

JustFlip! nemá žádný režim přístupnosti, který by se musel zapínat. Čte
nastavení v **Nastavení › Zpřístupnění** ve tvém zařízení a přizpůsobí
se jim. Tohle každé z nich mění:

| Nastavení systému | Co JustFlip! udělá |
|---|---|
| VoiceOver | Přečte každou kartičku, tlačítko i graf, s pojmenovanými akcemi pro otáčení a hodnocení |
| Větší text | Zvětší text v aplikaci, včetně textu na tvých kartičkách |
| Tučné písmo | Vykreslí text aplikace silnějším řezem |
| Omezit pohyb | Zastaví otáčení kartičky ve 3D a zklidní další animace |
| Zvýšit kontrast | Přepne na kontrastnější barvy a přidá obrysy tam, kde samotná barva nestačí |
| Rozlišovat bez barev | Přidá symboly, tečky a obrysy k ukazatelům, které jinak používají barvu |
| Ovládání hlasem | Každé tlačítko reaguje na svůj viditelný název a kartička na pár dalších frází |

Jediné nastavení přístupnosti uvnitř aplikace je tvoje **velikost
textu**, v **Nastavení › Vzhled**. Víc se o ní dočteš v části
[Větší text](#larger-text).

::: note
#### Naše veřejná zpráva o přístupnosti

Vedeme poctivou, podrobnou zprávu o tom, co je implementované a co se
ještě testuje, zařízení po zařízení, na
https://just-flip.app/accessibility/. Štítky přístupnosti (Accessibility
Nutrition Labels) v App Storu zveřejňujeme po jedné kategorii, a to až
poté, co daná kategorie projde testováním na skutečných zařízeních.
:::

## VoiceOver {#voiceover}

VoiceOver čte JustFlip! stejně, jako čte vlastní aplikace Applu.
Seznamy, formuláře a Nastavení používají standardní ovládací prvky a
seskupené položky, jako řádek balíčku nebo statistika, se čtou jako
jedna položka místo proudu útržků.

### Kartičky a opakování

Kartička je pro VoiceOver **jedna položka**. Přečte stranu, na kterou
se díváš, a nápověda ti řekne, že ji dvojitým klepnutím otočíš. Po
otočení VoiceOver ohlásí „Otázka“ nebo „Odpověď“, takže vždycky víš, na
které straně jsi.

Na kartičce přejeď prstem nahoru nebo dolů a dostaneš se k jejím akcím:

- [Otočit kartičku]{.ui} kartičku obrátí.
- [Zobrazit celý obsah]{.ui} otevře kartičku, která je příliš dlouhá, v
  panelu, kde si ji přečteš celou.
- [Zobrazit obrázek na celou obrazovku]{.ui} nebo [Zobrazit diagram na
  celou obrazovku]{.ui} otevře obrázek nebo diagram v plné velikosti, kde
  ho můžeš přiblížit.

Tlačítka hodnocení se čtou s hodnocením na začátku a podrobnostmi za
ním: hodnocení, pak kdy by se kartička vrátila, pak kolikrát jsi toto
hodnocení v tomto sezení zvolil. Po každém hodnocení ti VoiceOver řekne,
kde jsi, například „Karta 4 z 20“, a na konci sezení ohlásí
[Procvičování dokončeno]{.ui}.

:::: pair
```markdown
Hlavní město Francie
je {{c1::Paříž}}.
```

::: {.card side="question" spoken="Hlavní město Francie je prázdné místo."}
Hlavní město Francie je [[…]]{.blank}.
:::
::::

**Mezery v doplňovačkách se nikdy neprozradí.** Na straně s otázkou
VoiceOver tam, kde jsou skrytá slova, řekne „prázdné místo“, nebo přečte
nápovědu, pokud ji mezera má. Odpověď přijde až po otočení.

Zbytek kartičky čte VoiceOver stejně jako vlastní hlas JustFlip!:

- **Mluvené nápovědy** se používají. `[iOS]{aj ó es}` se přečte jako
  „aj ó es“ (kapitola 3).
- **Vzorce** se čtou z mluvené nápovědy, nebo ze zdrojového zápisu v
  TeXu, když nápověda chybí.
- **Diagramy** se čtou jako jejich popisky, ne jako šipky.
- **Tabulky** se čtou řádek po řádku, buňku po buňce.
- **Obrázky** se čtou z jejich popisu (viz
  [Přístupné kartičky](#accessible-cards)). Obrázek bez popisu se
  přečte prostě jako „Obrázek“.
- **Příznaky** se čtou nahlas svým názvem, například „Červený příznak“.

### Seznamy a akce

I nabídky vyvolávané podržením prstu mají akce pro VoiceOver, takže
gesto nepotřebuješ. Na řádku zájmu přejeď nahoru nebo dolů pro
[Upravit zájem]{.ui}, [Importovat kartičky]{.ui}, [Exportovat
archiv]{.ui}, [Exportovat statistiky]{.ui} a [Smazat]{.ui}. Řádek
balíčku nabízí [Upravit balíček]{.ui} a [Smazat balíček]{.ui}. V poli
se štítky VoiceOver potvrdí každý štítek, který přidáš nebo odebereš.

Ve Statistikách lze grafy procházet bod po bodu: každý bod se přečte s
datem a hodnotou.

Na kartičce se zakrytím obrázku nabízí obrázek místo roztahování prstů
akce [Přiblížit]{.ui}, [Oddálit]{.ui} a [Obnovit přiblížení]{.ui}.

### Na Apple Watch

Hodinky čtou každou kartičku jako „Otázka“ nebo „Odpověď“ a za tím její
text. Hodnocení kartičky na hodinkách obvykle znamená podržet na ní prst
(kapitola 8). VoiceOver prst podržet neumí, takže čtyři hodnocení jsou
nabídnutá i jako akce na kartičce: přejetím nahoru nebo dolů vybereš
Znovu, Těžké, Dobré nebo Snadné.

## Větší text {#larger-text}

Ve výchozím stavu používá JustFlip! velikost textu, kterou máš
nastavenou pro celé zařízení v **Nastavení › Zpřístupnění › Displej a
velikost textu › Větší text**. Tlačítka, seznamy, statistiky i text na
tvých kartičkách rostou s ní.

JustFlip! můžeš dát také vlastní velikost, oddělenou od zbytku
zařízení. Přejdi do **Nastavení › Vzhled**:

![Sekce Vzhled v Nastavení: nabídka motivu, přepínač Převzít velikost textu ze systému a jezdec Velikost textu s náhledem.](images/manual/{lang}/11-appearance-settings.jpg){.phone}

- [Převzít velikost textu ze systému]{.ui} je ve výchozím stavu zapnuté.
  JustFlip! pak používá velikost zařízení.
- Jezdec [Velikost textu]{.ui} vybírá velikost jen pro JustFlip!. Jeho
  posunutím se [Převzít velikost textu ze systému]{.ui} samo vypne. Řádek
  pod ním, „Takto vypadají seznamy a tlačítka.“, ukazuje velikost,
  kterou volíš.

Jezdec má deset kroků, od nejmenší systémové velikosti po třetí velikost
pro zpřístupnění. Dvě největší velikosti, které jde nastavit v iOS,
fungují v JustFlip! i nadále, když pocházejí z nastavení zařízení. Jezdec
je jen nenabízí. V těchto velikostech se většina kartiček na kartičku
nevejde a skoro každou bys otevíral v samostatném panelu.

Poslední krok uvítací prohlídky nabízí stejný jezdec, takže si pohodlnou
velikost můžeš nastavit ještě před prvním opakováním.

::: gotcha
#### Velký text se nezmenšuje, aby se vešel

Ve výchozí velikosti JustFlip! dlouhou kartičku mírně zmenší, aby se
vešla (kapitola 3). S větší velikostí textu to nedělá. Tvoje kartička se
vykreslí přesně ve velikosti, o kterou sis řekl. Co se nevejde, dole
vybledne, a tlačítko **•••** (nebo akce VoiceOveru [Zobrazit celý
obsah]{.ui}) otevře zbytek. Pokud se to děje u většiny tvých kartiček,
rozděl je na kratší. Tvé paměti to stejně prospěje.
:::

::: note
#### Na čem se ještě pracuje

Podpora většího textu je téměř hotová, ale zatím nebyla na zařízeních
otestovaná ve všech velikostech. Jediná známá mezera: v úplně největších
velikostech může nadpisu a tlačítkům hodnocení kolem kartičky na
obrazovce opakování dojít místo. Samotná kartička je v pořádku. Pokud
největší velikosti potřebuješ, nastav vlastní velikost textu JustFlip! o
jeden nebo dva kroky níž a obrazovka opakování zůstane úhledná.
:::
<!-- VERIFY: Readiness doc (2026-07-19) says "at AX3 and above the Review/Testing chrome (screen title, response buttons) overflows the screen with nothing to scroll". Confirm this is still open before publishing. -->

## Pohyb, tloušťka písma a kontrast {#visual}

### Omezit pohyb

Se zapnutým **Omezit pohyb** se kartička při otočení už neotáčí ve 3D.
Vymění strany na místě, o něco rychleji. Zklidní se i další pohyb v
aplikaci: kartičky odlétající po hodnocení, třpyt při načítání seznamů,
ilustrace v uvítací prohlídce, plnící se ukazatele průběhu i výsledky
opakování.

### Tučné písmo

**Tučné písmo** zesílí text aplikace, stejně jako všude jinde ve tvém
zařízení. Silnější text zabere víc místa, takže s tím JustFlip! počítá,
když zjišťuje, jestli se kartička vejde.
<!-- VERIFY: card body text is drawn by CardMarkupView from an explicit UIFont; confirm Bold Text actually thickens card question/answer text, not only system-styled UI text. -->

### Zvýšit kontrast

Se zapnutým **Zvýšit kontrast** přepne JustFlip! na kontrastnější verze
svých barev, ve světlém i tmavém vzhledu. Na pár místech přibudou
obrysy, které by jinak nesla jen barva:

- **příznak** kartičky dostane kolem barvy obrys,
- na kartičce se **zakrytím obrázku** dostane oblast, na kterou se
  ptá, výraznější zvýraznění,
- **diagramy**, na kartičce i na celé obrazovce, také použijí
  kontrastnější barvy.

Každá barevná dvojice, kterou aplikace používá pro text, je změřená vůči
svému pozadí ve světlém, tmavém a obou kontrastních vzhledech a každá
splňuje kontrastní poměr 4,5:1.

### Rozlišovat bez barev

Když je zapnuté **Rozlišovat bez barev**, malé ukazatele, které
používají barvu, dostanou i tvar:

- malé ukazatele, které ukazují, jak naléhavá kartička je a jak jsi ji
  naposledy ohodnotil, se změní na odlišné symboly,
- teplotní mapa aktivity ve Statistikách přidá jednu, dvě nebo tři tečky
  pro nízkou, střední a vysokou aktivitu a orámuje dnešní čtvereček,
- oblasti zakrytí obrázku dostanou výraznější zvýraznění, stejně jako se
  Zvýšit kontrast.

Některé věci se na barvu nespoléhají nikdy, ať máš nastaveno cokoli:
tlačítka hodnocení mají vždy popisek a symbol a vybraný příznak ve
výběru příznaků je označený kroužkem a zaškrtnutím.

## Ovládání hlasem a klávesnice {#voice-control}

**Ovládání hlasem** používá názvy, které vidíš na obrazovce, takže
„Klepni na Znovu“, „Klepni na Dobré“ nebo „Klepni na Nastavení“ fungují
tak, jak bys čekal. Pár ovládacích prvků reaguje i na další fráze:

| Řekni | Udělá |
|---|---|
| „Klepni na Otočit kartičku“, „Klepni na Obrátit kartičku“, „Klepni na Zobrazit druhou stranu“ nebo „Klepni na Otočit“ | Otočí kartičku |
| „Klepni na Odložit“ | Během opakování otevře nabídku odložení |

Ovládání hlasem zatím nebylo otestované od začátku do konce na všech
zařízeních. Nejméně otestované jsou jezdce a nabídky vyvolávané
podržením prstu. Pokud tam nějaký název nefunguje, příkaz „Zobrazit
čísla“ funguje vždycky.

**Na klávesnici** opakování nepotřebuje ukazatel vůbec: mezerník
kartičku otočí a klávesy 1 až 4 ji ohodnotí, na Macu i na iPadu s
hardwarovou klávesnicí. Úplný přehled je v kapitole 8. JustFlip! všude
používá standardní tlačítka, nabídky a přepínače, ale **Plný přístup z
klávesnice** zatím nebyl otestovaný od začátku do konce.

## Motivy {#themes}

Motiv je barevná paleta, ve které je vykreslená celá aplikace. Vyber ho
v **Nastavení › Vzhled › Motiv**. Nabídka ukazuje malý vzorek motivu,
který máš teď:

| Motiv | Jak vypadá |
|---|---|
| [Systém]{.ui} | Zlatá paleta JustFlip!, světlá nebo tmavá podle tvého zařízení. Výchozí. |
| [JustFlip světlý]{.ui} | Zlatá paleta, vždy světlá, ať je zařízení nastavené jakkoli |
| [JustFlip tmavý]{.ui} | Zlatá paleta, vždy tmavá |
| [Mlha]{.ui} | Klidná, minerální světlá paleta s modří průzračné vody, jalovcem a šalvějí |
| [Mlha tmavá]{.ui} | Mlha na hlubokých inkoustových plochách |

![Pět motivů vedle sebe: Systém, JustFlip světlý, JustFlip tmavý, Mlha a Mlha tmavá.](images/manual/{lang}/11-theme-swatches.jpg){.shot width=80%}

Změna je okamžitá: celá aplikace se překreslí, jakmile motiv vybereš,
bez restartu. Každý motiv má světlý nebo tmavý vzhled zabudovaný, takže
žádný samostatný přepínač světlého a tmavého režimu není. Chceš-li se
řídit tmavým režimem zařízení, vyber [Systém]{.ui}.

::: note
#### Kam motivy nedosáhnou

Motiv je pro samotnou aplikaci. Widget na ploše si ponechává zlatou
JustFlip! a řídí se světlým nebo tmavým nastavením zařízení. Aplikace
pro Apple Watch je vždy tmavá. Obrázky na tvých kartičkách se ve všech
motivech zobrazují přesně tak, jak jsou.
:::

::: gotcha
#### Pevně zvolený motiv ignoruje tmavý režim

[JustFlip světlý]{.ui} a [Mlha]{.ui} zůstanou světlé, i když se tvé
zařízení při západu slunce přepne do tmavého režimu, a dva tmavé motivy
zůstanou tmavé i za dne. Pokud se JustFlip! neřídí tvým tmavým režimem,
zkontroluj **Nastavení › Vzhled › Motiv**. Řídí se jím jen
[Systém]{.ui}.
:::

## Přístupné kartičky {#accessible-cards}

Aplikace umí přečíst jen to, co na tvých kartičkách je. Tyto návyky
zařídí, aby balíček fungoval pro každého, kdo ho používá — včetně tebe,
když posloucháš Mluvit karty na procházce.

1. **Popiš každý obrázek.** Když má strana obrázek, editor ukáže pole
   [Popis obrázku]{.ui} („Popište obrázek (volitelné)“). VoiceOver ho
   přečte místo obrázku. Popiš, co obrázek ukazuje: „Malý hnědý pták s
   červenou hrudí na sloupku plotu“ řekne mnohem víc než „fotka ptáka“.
   Na kartičce „Který je to pták?“ jméno vynech, jinak popis prozradí
   odpověď (kapitola 4). Popis také umožní najít kartičku jen s obrázkem
   ve Spotlightu (kapitola 8). A putuje s balíčkem, když ho exportuješ
   a sdílíš.
2. **Nastav jazyk každé strany.** Výběr [Jazyk]{.ui} rozhoduje, který
   hlas stranu přečte nahlas tlačítkem reproduktoru a v Mluvit karty
   (kapitola 7). Stranu bez jazyka vlastní hlas JustFlip! nikdy nepřečte.
3. **Přidej mluvené nápovědy tam, kde čtení selhává.** Nápověda jako
   `$c^2${cé na druhou}` opraví to, co říká hlas JustFlip!, *i* to, co
   čte VoiceOver, najednou.
4. **Dej mezerám v doplňovačkách nápovědu, když je kontext slabý.** S
   nápovědou VoiceOver i hlas přečtou nápovědu místo pouhého „prázdné
   místo“.
5. **Nenech význam nést jen barvu.** Příznaky se čtou nahlas svým
   názvem, ale co která barva *znamená*, je na tobě. Pokud „červená“
   znamená „zkouška příští týden“, dej to i do štítku. Štítky jsou text,
   takže se dají přečíst i prohledat.
6. **Popisuj diagramy pečlivě.** Diagram se čte jako jeho popisky, takže
   „Spustit opakování → Karta na řadě?“ řekne víc než „A → B“.
7. **Drž kartičky krátké.** Krátká kartička se vejde i při velkém textu
   a na Apple Watch — a líp se pamatuje.

::: gotcha
#### Jazyk je pro hlas, ne pro VoiceOver

Výběr [Jazyk]{.ui} ovládá vlastní hlas JustFlip!: tlačítko reproduktoru
a Mluvit karty. VoiceOver čte kartičky hlasem, který máš nastavený ve
vlastním nastavení VoiceOveru. U kartičky v jiném jazyce je tlačítko
reproduktoru na kartičce nejspolehlivější způsob, jak slyšet správnou
výslovnost.
:::
<!-- VERIFY: CardMarkupView sets accessibilityLabel from speech text with no accessibilityLanguage / speech-language attribute (grep found none). Confirm on device that VoiceOver does not switch to the card's language. -->
