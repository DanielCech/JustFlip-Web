---
slug: reference
number: 12
title: Referenční přehled
description: "Referenční přehled JustFlip!: tabulka řešení problémů ke každé kapitole, slovníček pojmů, které aplikace používá, co obsahuje verze Zdarma a Pro, formáty souborů a klávesové zkratky."
---

# Referenční přehled {#reference number="12"}

::: lede
Všechno, co bys mohl chtít ve spěchu vyhledat: co dělat, když něco
nevypadá správně, co které slovo znamená, co přidává Pro a který soubor
k čemu slouží. Každá položka odkazuje zpátky na kapitolu, která ji
podrobně vysvětluje.
:::

::: inthischapter
- Vyřeš nejčastější překvapení pomocí tabulky řešení problémů
- Vyhledej jakýkoli pojem ve slovníčku
- Podívej se, co je zdarma a co přidává Pro
- Rozliš formáty souborů
- Najdi klávesové zkratky a tahák značek
:::

## Řešení problémů {#troubleshooting}

### Kartičky a opakování

| Co vidíš | Co dělat | Kapitola |
|---|---|---|
| Kartička se nikdy nepřečte nahlas | Nastav [Jazyk]{.ui} strany; strana nastavená na Žádné se nikdy nepřečte | 3, 7 |
| Jazyk je nastavený, ale tlačítko Přehrát chybí | Stáhni si hlas v iOS v **Nastavení › Zpřístupnění › Čtení a mluvení › Hlasy** | 7 |
| Kartička ukazuje složené závorky `{…}` | Mluvená nápověda funguje jen za hranatými závorkami, matematikou nebo obrázkem; obal text do `[…]` | 3 |
| Po otočení chybí Dobré a Snadné | Je zapnuté **Nastavení › Chování › Přísnější hodnocení**; vypni ho, nebo hodnoť před otočením | 2 |
| [Karty k opakování]{.ui} nového balíčku nic nenajde | Nestudované kartičky ještě nejsou na řadě; použij Dnes, [Nové karty]{.ui} nebo [Všechny karty]{.ui} | 2 |
| Kartička ohodnocená Znovu se ve stejném sezení nevrátila | Tak je to navrženo: je na řadě za 5 minut a přijde v příštím sezení | 6 |
| Posun jezdce priority nezměnil počty k opakování | Tak je to navrženo: priorita mění jen pořadí omezeného sezení | 6 |
| Odložený balíček pořád chybí | Obrazovka Balíčky › [Možnosti balíčků]{.ui} › [Priorita opakování]{.ui} › Obnovit | 6 |
| Jednotlivou odloženou kartičku nejde obnovit | Vyprší ve svůj den; nebo ji z [Všechny karty]{.ui} znovu odlož na Zítra | 6 |
| Klávesy 1–4 nebo mezerník nic nedělají | Píšeš odpověď, je zapnuté Přísnější hodnocení, nebo odpověď kartičky se zakrytím ještě není odkrytá | 8 |
| Dlouhé kartičky se vždy otevírají v panelu | Při větším textu se kartičky nezmenšují; rozděl je, nebo sniž velikost textu v JustFlip! | 11 |
| Žádné připomenutí nepřichází | Zapni **Nastavení › Připomenutí › Denní připomenutí opakování** a povol oznámení v Nastavení iOS | 2 |
| Průvodci se už neobjevují | **Nastavení › Nápověda › Průvodci** je ukáže znovu | 1 |

### Obrázky, zvuk a úpravy

| Co vidíš | Co dělat | Kapitola |
|---|---|---|
| Obrázek v tmavém režimu zmizí | Dej mu plné bílé nebo světlé pozadí | 4 |
| Po importu chybí obrázek | Zkontroluj zprávu o importu z Anki; SVG není podporované | 4, 5 |
| Po výměně obrázku nebo zvuku zmizel text strany | Uložilo se na kartě Obrázek nebo Audio; před uložením se přepni zpátky na Text | 4 |
| Mluvit karty přeskočí kartičku | Obě strany potřebují text a jazyk s nainstalovaným hlasem | 7 |
| Poslech se sám zastavil | Zvuk převzal hovor nebo jiná aplikace; spusť znovu přes [Mluvit odsud]{.ui} | 7 |

### Import

| Co vidíš | Co dělat | Kapitola |
|---|---|---|
| Méně kartiček než řádků nebo poznámek | Kartičky se stejnou otázkou se sloučily (soubory balíčků), nebo se přeskočily řádky bez otázky (CSV) | 5 |
| Víc kartiček než poznámek v Anki | Každé číslo cloze je samostatná kartička; to je v pořádku | 5 |
| Balíček se objevil dvakrát | CSV vždy vytvoří nový balíček, stejně jako import z Anki s volbou [Přidat novou kopii]{.ui} | 5 |
| Kartičky jen s obrázkem se po opakovaném importu zdvojily | Nemají otázku, podle které by se spárovaly; smaž přebytečné | 5 |
| První kartička zní „Otázka / Odpověď“ | Zapni [Přeskočit první řádek jako záhlaví]{.ui} | 5 |
| Celý text je v jednom sloupci | Změň [Oddělovač]{.ui} v náhledu CSV | 5 |
| Úprava po importu zmizela | Nahradila ji verze ze souboru; udělej stejnou opravu i v souboru | 5 |
| Plán skočil zpátky, nebo se vrátily smazané kartičky | Byl importován starší archiv zájmu | 5, 10 |
| Importované kartičky skončily ve špatném balíčku | Dva balíčky mají stejný název; jeden přejmenuj | 1 |
| Nový zájem se neobjevil | Zájem se stejným názvem už existoval a byl použit místo něj | 1 |

### Synchronizace, zařízení a data

| Co vidíš | Co dělat | Kapitola |
|---|---|---|
| Stav synchronizace ukazuje [Nedostupné]{.ui} | Přihlas se k iCloudu a povol JustFlip! ho používat | 10 |
| Změna nedorazí na druhé zařízení | Porovnej časy odeslání a stažení na obrazovkách Synchronizace iCloud obou zařízení | 10 |
| Umístění zálohy ukazuje [Pouze lokálně]{.ui} | Měj navíc někde v bezpečí exportovaný archiv | 10 |
| Objevily se dva zájmy se stejným názvem | JustFlip! je po další synchronizaci sloučí automaticky | 10 |
| Widget ukazuje staré počty | Otevři JustFlip! na tom zařízení; widget ví to, co tam aplikace naposledy uložila | 8 |
| Hodinky říkají [Otevřete JustFlip na iPhonu a kartičky se synchronizují.]{.ui} | Jednou otevři aplikaci na iPhonu | 8 |
| Hodinky ukazují „N se synchronizuje do iPhonu“ | Dej iPhone do dosahu; hodnocení se doručí a použijí jednou | 8 |
| Kartička chybí ve Spotlightu | Zkontroluj [Zahrnout do vyhledávání v zařízení]{.ui} u jejího zájmu *i* balíčku; hledej podle začátku slova | 8 |
| JustFlip! ignoruje tmavý režim | Motiv je pevně světlý nebo tmavý; vyber [Systém]{.ui} | 11 |
| Panel Co je nového je prázdný | Jsi offline; použij [Zkusit znovu]{.ui} nebo [Otevřít v prohlížeči]{.ui} | 8 |
| Položka nabídky Statistiky má zámek | Statistiky jsou součástí Pro, včetně zkušební verze | 9 |
| Obnovení nenajde žádný nákup | Použij Apple účet, se kterým jsi Pro koupil | 1 |

## Slovníček {#glossary}

| Pojem | Význam |
|---|---|
| **Zájem** | Nejvyšší úroveň tvé knihovny: obor, který obsahuje balíčky |
| **Balíček** | Ucelená skupina kartiček uvnitř zájmu |
| **Kartička** | Otázka a odpověď, každá strana s vlastním textem, obrázkem, zvukem a jazykem |
| **Dnes** | Panel na obrazovce Zájmy, který sbírá kartičky k opakování ze všech zájmů a nové kartičky do tvého denního limitu |
| **Na řadě (k opakování)** | Kartička, jejíž čas opakování nastal a která není vyřazená ani odložená |
| **Nová kartička** | Kartička, kterou jsi ještě nikdy nestudoval |
| **Problémová** | Kartička, jejíž poslední hodnocení bylo Znovu nebo Těžké, bez ohledu na datum opakování |
| **Viděno** | Poznámka, kterou si JustFlip! udělá, když poprvé otočíš kartičku při procházení; není to hodnocení |
| **Interval** | Za jak dlouho se kartička vrátí, od minut po měsíce |
| **Snadnost** | Vlastní tempo růstu intervalu kartičky; začíná na 2,5, drží se mezi 1,3 a 3,5 |
| **Fáze** | Neviděno, Učení, Opakování (interval 7 dní a víc), Zvládnuto (30 dní a víc) nebo Přeučování |
| **Zvládnutí** | Podíl kartiček balíčku, jejichž poslední hodnocení bylo Dobré nebo Snadné; ukazatele pokroku přidávají vlastní pokrok |
| **Retence** | Podíl opakování ohodnocených Dobré nebo Snadné |
| **Zralé opakování** | Opakování kartičky, jejíž interval už dosáhl 30 dní |
| **Zapomenutí** | Kartička, kterou ses naučil a pak zapomněl |
| **Pijavice** | Kartička zapomenutá osmkrát nebo víckrát; uvedená pod [Tyhle karty stále unikají]{.ui} |
| **Série** | Dny v řadě s aspoň jedním opakováním; až dva vynechané dny se přemostí |
| **Předpověď** | Kolik kartiček přijde na řadu v každém z příštích dní; kartičky po termínu se přičtou k dnešku |
| **Naléhavost** | Skóre, které kombinuje kartičky na řadě, jak moc jsou po termínu, dobu od posledního studia a zvládnutí |
| **Vyřadit** | Vyjmout kartičku z opakování a zachovat její historii; vrátíš ji volbou Znovu zařadit |
| **Odložit** | Dát kartičku, balíček nebo zájem stranou do zvoleného dne, bez hodnocení |
| **Priorita opakování** | Váha od 0 do 100 % (výchozí 75 %), která rozhoduje, čí kartičky přijdou v omezeném sezení první |
| **Přísnější hodnocení** | Nastavení, které po otočení kartičky ponechá jen Znovu a Těžké |
| **Chytré plánování** | Plánovač FSRS-5 (Pro, beta), který míří zhruba na 90% vybavení |
| **Ukazatel pokroku** | Kartička, kterou si hodnotíš sám od 0 do 100, pro dovednosti, které kartička nevyzkouší (Pro) |
| **Cloze (doplňovačka)** | Kartička s mezerou k doplnění, zapsaná pomocí `{{c1::…}}` |
| **Mluvená nápověda** | `{…}` za částí kartičky, které říká hlasu, co má říct místo toho |
| **Značka přílohy** | `![attachment:0]`, která umístí obrázek do textu |
| **Popis obrázku** | Text, který VoiceOver přečte místo obrázku |
| **Zakrytí obrázku** | Obrázek se zakrytými oblastmi, z nichž každá se stane samostatnou kartičkou |
| **Mluvit karty** | Poslech celého balíčku bez použití rukou: otázka, čtyřvteřinová pauza, odpověď, tón (Pro) |
| **Automatický hlas** | Nejlepší nainstalovaný hlas pro jazyk: prémiový, pak vylepšený, pak standardní |
| **Zeptat se AI** | Prompt se studijní zprávou, který ti JustFlip! sestaví k vložení do tvého vlastního AI chatu |
| **Průvodce** | Jednorázová nápověda vysvětlující ovládací prvek; znovu je přehraješ v **Nastavení › Nápověda › Průvodci** |
| **Startovní knihovna** | Hotové balíčky nabízené při prvním spuštění a v **Nastavení › Nápověda › Knihovna** |
| **Archiv zájmu** | Export jednoho zájmu jako `.flashcards.zip`, včetně pokroku |
| **Úplná záloha** | Týdenní archiv `.justflip` celé knihovny; uchovává se nejnovějších 10 |
| **Snímek pokroku** | Denní záloha pokroku bez médií; uchovává se nejnovějších 30 |
| **Zahrnout do vyhledávání v zařízení** | Přepínač zájmu a balíčku, který rozhoduje, jestli se kartičky objeví ve Spotlightu |

## Zdarma a Pro {#free-pro}

JustFlip! můžeš používat zdarma a bez omezení počtu kartiček. Pro ruší
dva limity knihovny a přidává hrstku pokročilých funkcí. Bezplatná
zkušební verze, pokud je nabízena, odemkne funkce Pro na dobu svého
trvání.

| Funkce | Zdarma | Pro | Kapitola |
|---|---|---|---|
| Zájmy | 3 | Neomezeně | 1 |
| Balíčky na zájem | 5 | Neomezeně | 1 |
| Kartičky, formátování, obrázky, zvuk, zakrytí obrázku | ✓ | ✓ | 3, 4 |
| Import a export (Anki, CSV, soubory balíčků, archivy) | ✓ | ✓ | 5 |
| Opakování, priority, odkládání, vyřazování | ✓ | ✓ | 2, 6 |
| Tlačítko Přehrát a výběr hlasů | ✓ | ✓ | 7 |
| Apple Watch, widget, Siri, Spotlight | ✓ | ✓ | 8 |
| Synchronizace přes iCloud, zálohy, obnova | ✓ | ✓ | 10 |
| Motivy a velikost textu | ✓ | ✓ | 11 |
| Zeptat se AI na kartičku nebo sezení | ✓ | ✓ | 9 |
| Zeptat se AI na celý balíček | — | ✓ | 9 |
| Mluvit karty a poslech na pozadí | — | ✓ | 7 |
| Statistiky | — | ✓ | 9 |
| Ukazatele pokroku | — | ✓ | 6 |
| Chytré plánování (beta) | — | ✓ | 6 |

Tarify, nákupy a jejich obnovení najdeš v kapitole 1.

## Formáty souborů {#formats}

| Soubor | Co obsahuje | Kdo ho vytváří | Importuje se jako |
|---|---|---|---|
| `.flashcards` | Balíček, jen text | AI, stránka Balíčky, ty | Aktualizuje odpovídající balíček (podle textu otázky) |
| `.flashcards.zip` | Balíček s obrázky a zvukem — nebo archiv zájmu | Skill pro programovací agenty, stránka Balíčky, [Exportovat archiv]{.ui} | Soubor balíčku se aktualizuje podle otázky; archiv obnoví svůj zájem, včetně pokroku |
| `.apkg`, `.colpkg` | Balíček nebo kolekce z Anki | Anki | Nové balíčky, nebo přeskočení / aktualizace toho, co už máš |
| `.csv` | Jedna kartička na řádek | Jakákoli tabulková aplikace | Vždy nový balíček |
| `.flashcards-stats.csv` / `.json` | Statistiky, ke čtení | [Exportovat statistiky]{.ui} | Nelze importovat |
| `.justflip` | Úplná záloha knihovny | Automatické zálohy, [Exportovat zálohu]{.ui} | **Nastavení › Bezpečnost dat › Obnovit zálohu** |

Formát obsahu souborů balíčků, napsaný pro nástroje AI a autory
balíčků, je zveřejněný spolu s [AI promptem](https://just-flip.app/ai-prompt.html).

## Klávesové zkratky {#shortcuts}

Na Macu a na iPadu s hardwarovou klávesnicí:

| Klávesa | Akce |
|---|---|
| Mezerník | Otočí kartičku, nebo odkryje oblast zakrytí |
| 1 · 2 · 3 · 4 | Znovu · Těžké · Dobré · Snadné |
| Return | Zkontroluje napsanou odpověď |
| ⇧⌘I | Import Cards… (Mac) |
| ⇧⌘E | Export Interest… (Mac) |

Podrobnosti, včetně toho, proč klávesa někdy nic nedělá, najdeš v
kapitole 8.

## Značky v kostce {#markup}

| Napíšeš | Dostaneš |
|---|---|
| `**tučně**` · `*kurzívou*` · `` `kód` `` | **tučně** · *kurzívou* · `kód` |
| `{{c1::odpověď::nápověda}}` | Mezeru s nepovinnou nápovědou |
| `::: hero` … `:::` | Velmi velký obsah na střed |
| `$x^2$` · `$$` … `$$` | Matematiku v řádku · matematický blok |
| ```` ```swift ```` · ```` ```mermaid ```` | Zvýrazněný kód · diagram |
| `| A | B |` + `|---|---|` | Tabulku, nejvýš 2 × 5 |
| `![attachment:0]` | Obrázek strany, sem |
| `[zobrazeno]{vysloveno}` | Nahlas řekne něco jiného |

Kompletní tahák se všemi pravidly uzavírá kapitolu 3.
