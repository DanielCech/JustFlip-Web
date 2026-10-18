---
slug: importing
number: 5
title: Importer des paquets
description: "Importer dans JustFlip! des paquets Anki, des feuilles de calcul CSV, des paquets créés par IA et des paquets prêts à l’emploi, comprendre ce qui se passe quand tu réimportes le même fichier, et exporter un centre d’intérêt pour le partager ou le garder."
---

# Importer des paquets {#importing number="5"}

::: lede
Tu n’es pas obligé de taper chaque carte toi-même. JustFlip! lit les
paquets Anki, les feuilles de calcul et les fichiers de paquet écrits
par une IA, et il peut aussi te rendre un centre d’intérêt sous forme
d’archive unique. Ce chapitre montre par où entre chaque type de
fichier, ce qui est repris — et les quelques règles qui décident si un
import ajoute des cartes ou met à jour celles que tu as déjà.
:::

::: inthischapter
- Trouver l’import sur iPhone, iPad et Mac
- Récupérer un paquet Anki, et lire le rapport d’import
- Transformer une feuille de calcul en paquet
- Importer des paquets créés par une IA ou issus de la bibliothèque prête à l’emploi
- Savoir ce que fait une réimportation, avant de la lancer
- Exporter un centre d’intérêt pour le garder ou le partager
:::

L’importation fait partie de la version gratuite, comme tout ce que
contient ce chapitre.

## Où se trouve l’import {#where}

Tout import commence sur l’écran **Centres d’intérêt**. JustFlip!
reconnaît le fichier à son nom et à son contenu : les mêmes points
d’entrée acceptent donc tous les formats.

| Sur | Comment |
|---|---|
| iPhone, iPad | Le menu [Ajouter ou importer]{.ui} (le bouton en forme de bac) → [Importer des cartes]{.ui} |
| iPhone, iPad | Dans Fichiers, Mail ou Safari : partage le fichier, ou ouvre-le avec JustFlip! |
| iPad, Mac | Fais glisser des fichiers sur la liste des centres d’intérêt — elle affiche [Déposer pour importer]{.ui} |
| Mac | **Fichier › Import Cards…** (⇧⌘I) ou **Fichier › Import Interest Archive…** |
| Partout | Maintiens le doigt sur un centre d’intérêt → [Importer des cartes]{.ui} : un fichier CSV ou Anki directement dans ce centre d’intérêt |
| Partout | [Ajouter ou importer]{.ui} → [Coller des cartes]{.ui} : des cartes que tu as copiées (voir [Coller des cartes](#paste)) |

L’import principal accepte plusieurs fichiers à la fois, et des dossiers
entiers : chaque fichier pris en charge qu’ils contiennent est importé.

![Le menu Ajouter ou importer de l’écran Centres d’intérêt, avec Importer des cartes et Coller des cartes.](images/manual/{lang}/05-import-menu.jpg){.phone}

### Ce que devient chaque fichier

| Fichier | Ce que c’est | Où il arrive |
|---|---|---|
| `.apkg`, `.colpkg` | Un paquet ou une collection Anki | Un centre d’intérêt de ton choix ; un paquet par paquet Anki |
| `.csv` | Une feuille de calcul, une carte par ligne | Un centre d’intérêt de ton choix ; toujours un nouveau paquet |
| `.flashcards` | Un fichier de paquet, texte uniquement — créé par une IA, ou prêt à l’emploi | Le centre d’intérêt nommé dans le fichier |
| `.flashcards.zip` | Un fichier de paquet avec images et son, ou un centre d’intérêt exporté | Le centre d’intérêt nommé dans le fichier |

Pour les fichiers Anki et CSV, JustFlip! te demande d’abord où mettre
les cartes. La feuille [Importer des cartes]{.ui} contient un menu
[Intérêt]{.ui} — avec [Nouvel intérêt…]{.ui} — et, pour une feuille de
calcul, un [Nom du paquet]{.ui}. Touche [Continuer]{.ui}.

Quand l’import crée un nouveau centre d’intérêt, la feuille propose
aussi [Inclure dans la recherche de l’appareil]{.ui}, qui décide si ses
cartes peuvent apparaître dans Spotlight (chapitre 8).

## Paquets Anki {#anki}

JustFlip! importe les paquets de cartes Anki (`.apkg`) et les paquets de
collection (`.colpkg`), des anciennes comme des récentes versions
d’Anki. Dans Anki, utilise **Fichier › Exporter**, choisis *Paquet de
cartes Anki* et inclus les médias. Importe ensuite le fichier comme
ci-dessus.

Pour emporter aussi ta progression, coche en plus *Include scheduling information* (inclure les informations de planification) à l’export.

La promesse est simple : **le contenu d’apprentissage est repris ; la
présentation d’Anki ne l’est pas.** Tes mots, images, sons, formules et
tags arrivent. Ta progression de révision peut venir aussi. Les styles et les scripts d’Anki restent derrière.

### Ce qui est repris

- **Chaque carte.** Chaque carte Anki devient une carte JustFlip!. Les
  types de note recto/verso, inversé et inversé facultatif fonctionnent
  tous.
- **Les notes à trous, découpées.** Une note avec `{{c1::…}}`,
  `{{c2::…}}` et `{{c3::…}}` donne trois cartes JustFlip!, une par
  numéro, exactement comme dans Anki. Chaque carte masque son propre
  numéro et affiche les autres remplis. Un indice comme
  `{{c1::Paris::capitale}}` est conservé.
- **Les images**, dans le texte, dans l’ordre où elles apparaissent. Le
  texte alternatif d’une image Anki devient ce que la voix dit pour
  elle.
- **Le son.** Chaque `[sound:…]` d’un côté est conservé, dans l’ordre
  (chapitre 4).
- **L’occlusion d’image**, issue de l’outil d’Anki comme de l’ancien
  module Image Occlusion Enhanced. Les deux deviennent des cartes à
  occlusion natives.
- **La mise en forme** : gras, italique, listes, liens, petits tableaux,
  maths, indices et exposants.
- **Les tags.**
- **La structure des paquets, aplatie.** JustFlip! n’a pas de
  sous-paquets : `Langues::Espagnol::Verbes` devient donc un seul paquet
  appelé **Langues / Espagnol / Verbes**.
- **Ta progression de révision**, si l’export contient les informations de planification. Chaque carte étudiée garde son intervalle, sa facilité, sa date d’échéance et ses oublis, et son journal de révision arrive comme historique. Un paquet que tu révises depuis des années reprend donc là où il en était. Les cartes suspendues arrivent retirées. Désactive [Conserver la progression Anki]{.ui} dans la feuille d’import pour que toutes les cartes repartent de zéro.

### Ce qui reste dans Anki

- **Les paramètres FSRS d’Anki.** Si tu utilises FSRS dans Anki, ses paramètres et l’état de mémoire des cartes ne sont pas importés. Une carte garde son intervalle, sa date d’échéance et son journal de révision, et reçoit la facilité par défaut.
- **La progression des paquets partagés.** Un paquet téléchargé que tu n’as jamais étudié n’a pas d’historique à apporter : ses cartes commencent donc comme nouvelles.
- **Les styles.** Le CSS personnalisé, les polices et les couleurs sont
  simplifiés.
- **Le code.** Le JavaScript et les modules complémentaires ne
  s’exécutent jamais et ne sont pas conservés.
- **Tout ce qui est en ligne.** Les images distantes, les pages
  intégrées et les iframes ne sont pas récupérées.
- **La vidéo.**
- **Les drapeaux.** Les drapeaux de cartes d’Anki ne sont pas repris.
- **La question répétée.** Anki réaffiche la question du côté réponse ;
  JustFlip! retourne la carte sur place, cette copie est donc supprimée.
  Les cartes à trous font exception, car là, la phrase répétée *est* la
  réponse.

::: gotcha
#### Une note à trous Anki, c’est plusieurs cartes

Un paquet qui affiche 300 notes dans Anki peut arriver avec 700 cartes.
Ce n’est pas un doublon : chaque numéro de trou est une carte, dans Anki
comme dans JustFlip!. Le nombre affiché sur la feuille d’import est le
nombre de cartes.
:::

::: gotcha
#### Les cartes importées n’ont pas de langue

Anki n’enregistre pas la langue d’un champ : chaque carte importée
démarre donc avec sa [Langue]{.ui} réglée sur **Aucune** — et un côté
sans langue n’est jamais lu à voix haute (chapitre 3). Si tu veux
écouter un paquet importé, règle la langue de ses cartes.
:::

### La feuille d’import {#anki-report}

Importer un seul fichier Anki depuis le menu [Ajouter ou importer]{.ui},
depuis Fichiers ou par glisser-déposer ouvre [Importer depuis
Anki]{.ui}. La feuille lit d’abord le paquet — [Vérification du
paquet…]{.ui}, [Décompression…]{.ui}, [Lecture des cartes…]{.ui} — puis
affiche [Prêt à réviser]{.ui} : combien de paquets Anki, de
[Cartes]{.ui}, d’[Images]{.ui} et d’[Audio]{.ui} elle a trouvés.

Si le paquet contient des cartes que tu as déjà étudiées, la feuille affiche aussi [Conserver la progression Anki]{.ui}, activé par défaut. Activé, ces cartes conservent leur planning et leur historique de révision Anki. Désactivé, toutes les cartes repartent de zéro.

![La feuille Importer depuis Anki : le résumé, Ce qui a changé et Options.](images/manual/{lang}/05-anki-report.jpg){.phone}

Sous [Ce qui a changé]{.ui} se trouve le rapport d’import : une phrase
simple pour chaque chose bonne à savoir avant de valider. Par exemple :

- *240 cartes conservent leur planning et leur historique de révision Anki.* (Pour un paquet partagé, ou avec [Conserver la progression Anki]{.ui} désactivé : *Les cartes repartent de zéro ici. Votre historique de révision reste dans Anki.*)
- *Les réponses ne répètent plus la question : JustFlip la garde à
  l’écran pendant le retournement.*
- *12 images n’ont pas pu être lues et ont été omises.*
- *3 cartes n’avaient rien côté question et ont été ignorées.*
- *2 champs provenaient de modules complémentaires d’Anki et ont été
  omis.*

Rien n’est écrit *dans* tes cartes. Une image manquante est simplement
absente, et le rapport est le seul endroit qui le signale.

Sous [Options]{.ui} se trouvent les [Paquets]{.ui} que l’import va
créer, et un seul choix — [Si vous avez déjà ces cartes]{.ui} :

| Option | Les cartes déjà importées depuis ce paquet |
|---|---|
| [Ajouter une nouvelle copie]{.ui} | Ne sont pas touchées ; tout le paquet est ajouté de nouveau, sous forme de nouveaux paquets. Par défaut |
| [Ignorer celles que j’ai déjà]{.ui} | Restent telles quelles ; seules les nouvelles cartes sont ajoutées |
| [Les mettre à jour et garder ma progression]{.ui} | Leur texte, leurs images et leurs tags sont actualisés depuis le fichier ; ton planning n’est pas touché |

JustFlip! se souvient de la note et de la carte Anki dont provient
chaque carte importée : la correspondance fonctionne donc même après que
tu as modifié la question dans JustFlip!. Touche [Importer]{.ui} pour
ajouter les cartes.

::: tip
#### Mettre à jour un paquet que tu étudies encore dans Anki

Continue à travailler dans Anki, exporte de nouveau, et importe avec
[Les mettre à jour et garder ma progression]{.ui}. Les corrections sont
reprises, les nouvelles notes ajoutées, et ton planning JustFlip! reste
le tien.
:::

::: gotcha
#### L’import rapide saute le choix

Deux chemins Anki importent directement, sans feuille et toujours sous
forme de nouvelle copie : [Importer des cartes]{.ui} depuis le menu d’un
centre d’intérêt, et plusieurs fichiers Anki choisis en même temps. Pour
ignorer ou mettre à jour des cartes que tu as déjà, importe un fichier à
la fois depuis le menu [Ajouter ou importer]{.ui}.
:::

## Feuilles de calcul (CSV) {#csv}

Un fichier CSV est le moyen le plus simple de faire entrer une liste
dans JustFlip! : une liste de vocabulaire, un glossaire, un export
d’une autre app. Chaque ligne est une carte ; une colonne est la
question, une autre la réponse.

```csv
Question,Réponse
el perro,le chien
el gato,le chat
"la casa, el hogar",la maison
```

Après [Continuer]{.ui}, [Importer un CSV]{.ui} affiche un aperçu en
direct :

- **[Séparateur]{.ui}** — virgule, point-virgule, barre verticale ou
  tabulation. JustFlip! le devine à partir des premières lignes ;
  change-le si les colonnes ont l’air fausses.
- **[Ignorer la première ligne comme en-tête]{.ui}** — désactivé au
  départ. Active-le quand ta première ligne contient des titres de
  colonnes.
- **[Mappage des colonnes]{.ui}** — choisis quelle colonne est le
  [Recto (question)]{.ui} et laquelle est le [Verso (réponse)]{.ui}. Les
  autres colonnes sont ignorées.
- **[Aperçu]{.ui}** — les premières lignes telles qu’elles seront lues.

Touche **Importer (N)** quand tout semble correct.

![L’aperçu Importer un CSV avec le séparateur, l’interrupteur d’en-tête, le mappage des colonnes et un aperçu des lignes.](images/manual/{lang}/05-csv-preview.jpg){.phone}

Quelques détails qui t’éviteront un deuxième essai :

- Mets un champ entre guillemets droits quand il contient le séparateur
  ou un retour à la ligne ; écris un guillemet à l’intérieur sous la
  forme `""`.
- Le texte peut utiliser le balisage de carte du chapitre 3 — gras,
  maths, trous. Un `{{c1::…}}` dans une cellule CSV reste **une seule**
  carte avec tous ses trous ; les cartes CSV ne sont jamais découpées
  comme les notes à trous d’Anki.
- Une ligne dont la question est vide est ignorée. Une ligne dont la
  réponse est vide est importée comme une carte sans réponse.
- Les cartes CSV n’ont ni langue, ni images, ni tags.

::: gotcha
#### La ligne d’en-tête devient une carte

[Ignorer la première ligne comme en-tête]{.ui} est désactivé au départ.
Si tu l’oublies, tes titres de colonnes deviennent une carte appelée
« Question » dont la réponse est « Réponse ». Vérifie la première ligne
de l’aperçu avant d’importer.
:::

::: gotcha
#### Un CSV ne met jamais rien à jour

Chaque import CSV crée un **nouveau** paquet, même quand un paquet du
même nom existe déjà — tu te retrouves avec deux. Pour modifier des
cartes importées d’une feuille de calcul, modifie-les dans JustFlip!, ou
supprime l’ancien paquet avant d’importer le fichier corrigé.
:::

## Des paquets créés avec l’IA {#ai}

Le paquet le plus facile à apprendre est celui créé à partir de *ton*
matériel : tes notes, un chapitre, la transcription d’un cours.
JustFlip! ne parle lui-même à aucune IA. C’est le site web qui donne à
ton IA les instructions pour écrire un fichier de paquet JustFlip!, et
tu importes le résultat.

| Page | Pour | Tu obtiens |
|---|---|---|
| [Prompt IA](https://just-flip.app/ai-prompt.html) | N’importe quelle IA de chat — ChatGPT, Claude, Gemini | Un fichier `.flashcards` texte uniquement |
| [Skill IA](https://just-flip.app/ai-skill.html) | Un agent de codage capable de lire les fichiers de ton ordinateur | Un `.flashcards.zip`, avec images et son |

Une IA de chat ne peut renvoyer que du texte : la page Prompt IA demande
donc un paquet en texte seul. Un agent de codage peut ouvrir tes images
et fichiers audio locaux et les empaqueter dans un zip, avec
descriptions, licences et même occlusion d’image.

Importe le fichier comme n’importe quel autre. Le fichier nomme lui-même
son centre d’intérêt et ses paquets : il n’y a donc pas de feuille de
configuration. JustFlip! utilise un centre d’intérêt de ce nom si tu en
as un, et le crée sinon. Un fichier de paquet peut aussi définir la
langue de chaque paquet, pour que les cartes soient prêtes à être lues à
voix haute.

::: tip
#### Relis avant d’apprendre

Une IA peut se tromper avec beaucoup d’aplomb. Parcours un nouveau
paquet une fois avant ta première révision, et corrige ou supprime tout
ce qui est douteux. Dix minutes de relecture valent mieux que des
semaines à réviser une mauvaise réponse.
:::

## Coller des cartes {#paste}

Parfois, les cartes sont déjà dans ton presse-papiers — la réponse d’une
IA de chat, une colonne de feuille de calcul, une liste dans Notes.
Choisis [Ajouter ou importer]{.ui} → [Coller des cartes]{.ui}. Comme
l’explique sa note [Comment ça marche]{.ui}, tu copies les cartes — une
par ligne, question et réponse séparées par une virgule — et tu touches
Coller. JustFlip! trouve les cartes dans ce que tu as copié, y compris
dans le bloc de code d’une IA de chat, et ignore le texte autour.

Une liste collée passe par les mêmes feuilles [Importer des cartes]{.ui}
et [Importer un CSV]{.ui} qu’un fichier CSV, vers un paquet nommé
**Cartes collées** sauf si tu changes ce nom. Un fichier de paquet
collé — le JSON qu’écrit une IA à partir de la page Prompt IA — est
importé comme un fichier `.flashcards`. Rien ne quitte ton appareil.

## Paquets prêts à l’emploi {#curated}

La [page Paquets](https://just-flip.app/decks/) du site web est une
petite bibliothèque de paquets tout prêts — langues, musique,
mathématiques, programmation et sciences — dans toutes les langues de
l’app. Touche **Télécharger**, puis ouvre le fichier avec
JustFlip!. Ce sont des fichiers `.flashcards` et `.flashcards.zip`
ordinaires : tout ce qui est dit dans [Réimporter le même
fichier](#reimport) s’applique donc aussi à eux.

## Réimporter le même fichier {#reimport}

Les fichiers de paquet — `.flashcards` et `.flashcards.zip` venant d’une
IA, de la bibliothèque prête à l’emploi ou de ton propre éditeur — sont
conçus pour être importés encore et encore. Corrige une faute dans le
fichier, ajoute dix cartes, importe-le : ton paquet est mis à jour au
lieu d’être dédoublé.

Voici comment JustFlip! fait la correspondance :

1. **Le centre d’intérêt** est celui qui porte le nom de centre
   d’intérêt du fichier. La casse et les espaces en trop n’ont pas
   d’importance.
2. **Le paquet** est celui de ce centre d’intérêt qui porte
   *exactement* le nom de paquet du fichier.
3. **Chaque carte** est associée par son **texte de question**,
   exactement tel qu’il est écrit. Une carte correspondante est mise à
   jour sur place — sa réponse, ses images et ses sons sont remplacés par
   ceux du fichier, et sa progression est conservée. Une carte sans
   correspondance est ajoutée.

Les cartes présentes dans ton paquet mais absentes du fichier ne sont pas
touchées ; un import ne supprime jamais rien.

::: gotcha
#### Deux cartes, une seule question

Comme les cartes sont associées par leur question, deux cartes d’un même
paquet avec le même texte de question — « Nomme cette note. »,
« Traduis : » — finissent en une seule carte, même lors d’un tout
premier import. Donne à chaque carte sa propre question, ou déplace la
consigne commune dans le nom du paquet.
:::

::: gotcha
#### Les cartes sans texte sont ajoutées à chaque fois

Une carte sans aucun texte de question — seulement une image — ne peut
pas être associée : elle n’est donc jamais fusionnée. Cela préserve un
paquet d’images « Qu’est-ce que c’est ? », mais cela signifie aussi que
réimporter le fichier ajoute ces cartes une deuxième fois. Dans un
fichier de paquet, omets complètement le champ `q` pour ces cartes : un
`"q": ""` vide compte comme un texte de question et fusionne avec tous
les autres textes vides.
:::

::: gotcha
#### Tes modifications ne survivent pas à une réimportation

Mettre à jour une carte remplace son contenu par celui du fichier. Si tu
as corrigé une réponse dans JustFlip!, fais la même correction dans le
fichier — sinon le prochain import remettra l’ancienne réponse. Et si tu
renommes le paquet dans JustFlip!, le fichier ne le retrouve plus : le
prochain import crée un nouveau paquet sous l’ancien nom.
:::

Les paquets Anki suivent leur propre règle — le choix fait dans [la
feuille d’import](#anki-report). Les fichiers CSV ne sont jamais
associés.

## Exporter et partager {#export}

Pour emporter un centre d’intérêt avec toi, maintiens le doigt dessus
(clic droit sur Mac) et choisis [Exporter l'archive]{.ui}. Sur Mac,
**Fichier › Export Interest…** (⇧⌘E) fait la même chose pour le centre
d’intérêt sélectionné. JustFlip! écrit un seul fichier,
*Nom du centre d’intérêt*.flashcards.zip, et te demande où
l’enregistrer.

L’archive contient tout ce qu’il y a dans ce centre d’intérêt : chaque
paquet et chaque carte, les images et les sons, et **toute ta
progression de révision**. Enregistre-la dans Fichiers ou sur iCloud
Drive, envoie-la par AirDrop, ou transmets-la comme n’importe quel autre
fichier.

Importer une archive restaure exactement ce centre d’intérêt. Son centre
d’intérêt, ses paquets et ses cartes sont associés grâce aux
identifiants cachés que porte l’archive, pas par leurs noms : rien n’est
dédoublé — même les paquets renommés sont retrouvés.

::: gotcha
#### Une archive apporte son planning avec elle

Importer une archive règle le planning de chaque carte sur celui
enregistré dans l’archive. Importe une vieille archive par-dessus un
centre d’intérêt que tu étudies encore, et ces cartes reviennent là où
elles en étaient au moment de l’export. Ton historique de révision est
fusionné, pas dupliqué. Les cartes ajoutées après l’export restent — et
celles supprimées après reviennent.
:::

::: note
#### Partager un paquet avec quelqu’un

Une archive contient aussi ta progression, et la personne qui l’importe
récupère ton planning pour ces cartes. Pour une copie vierge, partage
plutôt le fichier de paquet d’origine — le `.flashcards` ou le
`.flashcards.zip` que tu as importé.
:::

Le même menu propose [Exporter les statistiques]{.ui}, en
[Feuille de calcul (CSV)]{.ui} ou en [Données complètes (JSON)]{.ui}.
Ces fichiers servent à la lecture et à l’analyse, pas à être réimportés
(chapitre 9). Pour une sauvegarde de toute ta bibliothèque, voir le
chapitre 10.

## Quand un import te surprend {#troubleshooting .cheatsheet}

| Ce que tu vois | Pourquoi, et que faire |
|---|---|
| Moins de cartes que de lignes ou de notes | Des cartes au même texte de question ont fusionné (fichiers de paquet), ou des lignes à question vide ont été ignorées (CSV) |
| Plus de cartes que de notes Anki | Chaque numéro de trou est une carte à part — c’est normal |
| Le paquet est apparu deux fois | Un CSV crée toujours un nouveau paquet ; un import Anki fait avec [Ajouter une nouvelle copie]{.ui} ajoute de nouveaux paquets |
| Les cartes sans texte sont en double | Elles ne peuvent pas être associées lors d’une réimportation ; supprime les doublons, ou importe dans un nouveau paquet |
| Les cartes importées restent muettes | Les cartes Anki et CSV n’ont pas de langue — règle-la sur les cartes (chapitre 3) |
| La première carte est « Question / Réponse » | Active [Ignorer la première ligne comme en-tête]{.ui} |
| Tout le texte est dans une seule colonne | Change le [Séparateur]{.ui} dans l’aperçu CSV |
| Une image manque | Consulte le rapport Anki, et n’oublie pas que le SVG n’est pas pris en charge (chapitre 4) |
| Ma correction a disparu après un import | La version du fichier l’a remplacée — corrige aussi le fichier |
| Le planning d’une carte a fait un bond en arrière | Tu as importé une archive plus ancienne de ce centre d’intérêt |
