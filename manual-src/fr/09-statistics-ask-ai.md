---
slug: statistics-ask-ai
number: 9
title: Statistiques et Demander à l’IA
description: "Comment JustFlip! mesure les cartes à réviser, la maîtrise, les séries et la rétention, comment lire honnêtement l’écran Statistiques, et comment Demander à l’IA transforme ton historique de révision en rapport d’étude pour ton propre tuteur IA."
---

# Statistiques et Demander à l’IA {#statistics-ask-ai number="9"}

::: lede
Chaque note que tu donnes est un petit indice sur ta mémoire. JustFlip!
les garde tous, et ce chapitre te montre comment les lire : les nombres
que tu vois chaque jour, l’écran Statistiques plus détaillé, et Demander
à l’IA, qui transforme ce que tu sais et ce que tu rates sans cesse en
briefing pour l’IA de chat de ton choix.
:::

::: inthischapter
- Comprendre les cartes à réviser, la maîtrise et les séries, et comment chacune est calculée
- Lire la rétention, la carte de chaleur d’activité, le classement des paquets et les prévisions
- Distinguer « apprendre mieux » de « simplement réviser plus »
- Briefer ChatGPT, Claude ou Gemini avec un rapport d’étude Demander à l’IA
- Exporter tes statistiques en feuille de calcul ou en données JSON complètes
:::

## Les nombres que tu vois chaque jour {#everyday}

Tu n’as pas besoin de l’écran Statistiques pour savoir où tu en es. Trois
nombres apparaissent partout dans l’app, et tous sont gratuits.

| Nombre | Où tu le vois | Ce qu’il signifie |
|---|---|---|
| **À réviser** | Aujourd’hui, lignes des paquets, liste des cartes | Les cartes dont la date de prochaine révision est arrivée |
| **Maîtrise** | Lignes des centres d’intérêt et des paquets | La part des cartes dont la *dernière* note était Bien ou Facile |
| **Série** | Aujourd’hui, sous la forme « *N* jours d’affilée » | Les jours consécutifs avec au moins une révision |

### À réviser

Une carte est à réviser quand sa date de révision planifiée est passée.
Aujourd’hui additionne les cartes à réviser de tous tes centres
d’intérêt, avec les nouvelles cartes autorisées pour la journée, et te
donne une estimation comme « Environ 6 min ». Quand rien n’est à
réviser, Aujourd’hui affiche [Tout est à jour]{.ui} et une petite bande
[7 prochains jours]{.ui}, pour que tu voies venir la charge de demain.
La façon dont les échéances sont choisies fait l’objet du chapitre 6.

### Maîtrise

La maîtrise d’un paquet compte chaque carte dont la note **la plus
récente** était Bien ou Facile, et la divise par le nombre de cartes du
paquet. Les cartes jamais révisées comptent aussi, comme pas encore
maîtrisées : un paquet fraîchement importé démarre donc à 0 %. La
maîtrise d’un centre d’intérêt est la moyenne de la maîtrise de ses
paquets, chaque paquet pesant autant quelle que soit sa taille.

::: note
#### La maîtrise bouge dans les deux sens

Comme seule la dernière note compte, la maîtrise est un instantané, pas
un trophée. Appuie sur À revoir pour une carte que tu savais la semaine
dernière et cette carte cesse de compter jusqu’à ce que tu la réussisses
de nouveau. C’est voulu : le nombre te dit ce que tu sais *aujourd’hui*.
:::

### Série

Ta série compte les jours où tu as révisé au moins une carte. Une seule
carte suffit. Tu as aussi droit à un jour de grâce : si tu n’as pas
encore révisé aujourd’hui, la série d’hier tient jusqu’à la fin de la
journée.

JustFlip! est indulgent avec les jours manqués çà et là. Jusqu’à **deux
jours manqués** au sein de ta série actuelle sont comblés
automatiquement : une seule journée chargée n’efface donc pas une
habitude d’un mois. Les jours comblés ne s’ajoutent pas au compte. Si tu
veux un petit rappel avant que ta série ne s’interrompe, active
[Sauvetage de série]{.ui} sous **Réglages › Rappels**. Il envoie un
rappel en soirée les jours où tu n’as pas encore révisé.

## Ouvrir les Statistiques (Pro) {#opening}

L’écran Statistiques complet est une fonction **Pro**. Ouvre-le depuis le
menu [Réglages]{.ui} (l’icône en forme de roue dentée) en haut de la
liste des centres d’intérêt, puis choisis [Statistiques]{.ui}. Sans Pro,
l’élément de menu porte un cadenas et ouvre l’écran Pro à la place. Un
essai gratuit de Pro le débloque aussi.

![L’écran Statistiques : le sélecteur de centre d’intérêt, les quatre tuiles de résumé et les étapes de la collection.](images/manual/{lang}/09-statistics-overview.jpg){.phone}

Les Statistiques portent toujours sur **un seul centre d’intérêt à la
fois**. Choisis-le sous [Portée]{.ui}, en haut. Tout ce qui se trouve en
dessous, des tuiles de résumé aux prévisions, additionne tous les paquets
de ce centre d’intérêt. Les nombres restent ainsi comparables dans le
temps. Pour comparer deux sujets, passe de l’un à l’autre dans le
sélecteur.

L’écran se met à jour tout seul après tes révisions : tu peux donc le
garder ouvert sur un iPad ou un Mac à côté d’une session d’étude.

### Les tuiles de résumé

| Tuile | Ce qu’elle montre |
|---|---|
| [Rétention mature]{.ui} | À quelle fréquence tu t’es souvenu des cartes *matures* sur les [30 derniers jours]{.ui} (voir [Rétention](#retention)) |
| [Révisions]{.ui} | Combien de révisions tu as faites sur les [7 derniers jours]{.ui}, aujourd’hui compris |
| [Série actuelle]{.ui} | Ta série dans ce centre d’intérêt, plus ta plus longue de tous les temps |
| [À réviser maintenant]{.ui} | Les cartes à réviser en ce moment, plus le nombre de celles qui arrivent à échéance demain |

La série est calculée ici de la même façon que dans Aujourd’hui, mais
uniquement à partir des révisions du centre d’intérêt sélectionné. Elle
peut être plus courte que ta série dans Aujourd’hui, qui compte tous les
centres d’intérêt.

### Les étapes de la collection

Sous [Collection]{.ui}, chaque carte du centre d’intérêt est rangée dans
l’une de quatre étapes :

| Étape | Légende | Signification |
|---|---|---|
| [Nouvelles]{.ui} | À découvrir | Jamais révisées |
| [Apprentissage]{.ui} | Construction de la mémoire | En cours d’apprentissage, ou de réapprentissage après un oubli |
| [Révision]{.ui} | Renforcement | Dans le cycle de révision régulier |
| [Maîtrisées]{.ui} | Mémoire à long terme | Intervalles de 30 jours et plus |

Une collection en bonne santé glisse vers la droite au fil des semaines.
Le chapitre 6 explique comment une carte passe d’une étape à l’autre.

::: gotcha
#### À réviser maintenant n’est pas Aujourd’hui

[À réviser maintenant]{.ui} compte **toutes** les cartes du centre
d’intérêt dont la date de révision est passée, y compris celles que tu as
reportées. Aujourd’hui ne propose que ce qui tient dans une session : les
cartes reportées restent dehors, et [Cartes par session]{.ui} et
[Nouvelles cartes par jour]{.ui} plafonnent le reste. Un gros nombre À
réviser maintenant à côté d’une courte session Aujourd’hui est normal,
pas un bug.
:::

## Rétention : globale et mature {#retention}

La rétention répond à une seule question : *quand une carte s’est
présentée, t’en es-tu souvenu ?* Une révision compte comme réussie quand
tu l’as notée **Bien ou Facile**. À revoir et Difficile comptent tous
deux comme non réussies.
<!-- VERIFY: whether a "Seen" response is stored as a review and so also counts as not remembered in retention, reviews and streaks. -->

Le graphique [Rétention mature]{.ui} trace ce taux jour par jour. Choisis
la période avec la commande segmentée : [7D]{.ui}, [30D]{.ui},
[90D]{.ui} ou [All]{.ui}.

![Le graphique de rétention sur 90 jours. Chaque point est la part de révisions matures réussies d’une journée.](images/manual/{lang}/09-retention-chart.jpg){.shot width=80%}

**Mature** est le mot important. Une révision compte comme mature quand
la carte avait déjà atteint un intervalle d’**au moins 30 jours** avant
que tu n’y répondes. Les nouvelles cartes sont faciles à « retenir » : tu
les as vues il y a une minute. Une carte vue pour la dernière fois il y a
un mois est le vrai test de la mémoire à long terme, et c’est ce que
montre la courbe mature.

Les premières semaines, tu n’auras pas encore de révisions matures. Le
graphique se rabat alors sur la **rétention globale**, toutes les
révisions de toutes les cartes, et la légende en dessous le précise :
« Affichage de toutes les révisions — le signal mature apparaît lorsque
les cartes atteignent des intervalles de 30 jours. » Dès que tes
premières cartes franchissent la barre des 30 jours, le graphique passe
de lui-même au signal mature. S’il n’y a aucune révision dans la
période, tu verras [Pas encore assez de révisions matures]{.ui}.

::: tip
#### Lis la tendance, pas le point

Une seule journée peut passer de 60 % à 100 % sur trois révisions.
Choisis [30D]{.ui} ou [90D]{.ui} et regarde la forme de la courbe. Une
courbe stable entre 80 et 99 % signifie que ton planning fait son
travail.
:::

## Régularité : séries et carte de chaleur {#consistency}

La section [Régularité]{.ui} affiche ta série [Actuel]{.ui} et ta série
la [Plus longue]{.ui} pour le centre d’intérêt, au-dessus d’une carte de
chaleur des **12 dernières semaines**. Chaque case est un jour, et une
case plus foncée signifie plus de révisions ce jour-là, par rapport à ta
journée la plus chargée de la période. La case d’aujourd’hui porte un
petit point.

![La carte de chaleur Régularité : 12 semaines de jours de révision, des cases plus foncées pour les jours plus chargés.](images/manual/{lang}/09-heatmap.jpg){.shot width=80%}

Cherche les trous et les amas, pas la couleur. Dix minutes chaque jour
valent mieux qu’une heure chaque dimanche, car la répétition espacée
repose sur le fait de voir les cartes près de leur échéance.

::: note
#### Plus longue peut sembler plus courte qu’Actuel

[Plus longue]{.ui} est ta meilleure suite de jours *consécutifs*, sans
les deux jours comblés qui protègent [Actuel]{.ui}. Une série actuelle
qui a survécu à un jour manqué peut donc être plus longue que ta « plus
longue ». Les deux nombres sont justes ; ils mesurent simplement des
choses légèrement différentes.
:::

## Comparaison des paquets {#deck-comparison}

[Comparaison des paquets]{.ui} classe les paquets du centre d’intérêt
par rétention, **le plus faible en haut**. Cette barre compte toutes les
révisions que tu as jamais faites dans le paquet, pas seulement celles
des 30 derniers jours : elle évolue donc lentement. Sous le graphique,
les quatre premiers paquets indiquent combien de cartes sont à réviser
maintenant et le nombre total d’oublis, c’est-à-dire les fois où une
carte que tu savais a de nouveau été oubliée.

Le paquet en haut est celui où tes efforts rapportent le plus. Cela
signifie généralement l’une de trois choses :

1. **Les cartes manquent de clarté.** Deux réponses possibles, ou trop de
   choses sur une carte. Le chapitre 3 donne les solutions.
2. **Le contenu s’appuie sur quelque chose que tu n’as pas appris.**
   C’est exactement à cela que sert [Demander à l’IA](#ask-ai).
3. **Tu vas trop vite.** Tu as ajouté plus de nouvelles cartes que tu ne
   peux en absorber. Baisse [Nouvelles cartes par jour]{.ui} pendant un
   moment.

## Prévision des révisions {#forecast}

La prévision est un graphique en barres du nombre de cartes qui arrivent
à échéance chaque jour, sur une période de [7D]{.ui} ou [30D]{.ui} à
venir, d’après le planning tel qu’il est maintenant. Les cartes déjà en retard sont
ajoutées à la barre d’aujourd’hui : un retard accumulé ne disparaît donc
jamais de la vue. Les cartes retirées sont exclues.

Un pic dans deux semaines est normal après un gros import ou une semaine
chargée en nouvelles cartes. Si tu en vois un arriver, étale-le : révise
un peu plus les jours qui précèdent.

::: gotcha
#### La prévision ne connaît que le planning du jour

Chaque note que tu donnes déplace l’échéance d’une carte : la prévision
est donc une projection, pas une promesse. Les cartes ratées reviennent
plus tôt et rendent demain plus chargé que ne l’annonçait le graphique.
:::

## Lire les nombres honnêtement {#reading}

Il est facile de se sentir productif tout en apprenant peu. L’écran
Statistiques est conçu pour répondre à une question plus difficile :
*est-ce que j’apprends mieux, ou est-ce que je révise simplement plus ?*
Quelques règles empiriques :

- **Révisions en hausse, rétention mature en baisse.** Tu ajoutes plus
  vite que tu ne consolides. Ralentis sur les nouvelles cartes ; ton
  retard te remerciera.
- **Rétention mature stable, révisions stables.** C’est l’objectif. Le
  planning fait son travail ; continue.
- **Rétention globale élevée, mais pas encore de signal mature.** Rien ne
  cloche. Tes cartes n’ont simplement pas encore atteint des intervalles
  de 30 jours. Laisse passer un mois.
- **Un paquet loin en dessous des autres.** Ce paquet a un problème de
  cartes ou de prérequis, pas de volonté. Voir [Comparaison des
  paquets](#deck-comparison).
- **Une longue série aux cases pâles.** Une carte par jour maintient la
  série en vie, mais pas le planning. Surveille aussi [À réviser
  maintenant]{.ui}.

::: gotcha
#### Note honnêtement, sinon les nombres mentent

Chaque chiffre de ce chapitre est construit à partir de tes notes.
Appuie sur Bien pour une carte à moitié retenue et tu gonfles à la fois
la maîtrise, la rétention et les intervalles, et la carte revient plus
tard qu’elle ne le devrait. Difficile n’est pas un échec ; c’est une
information.
:::

## Demander à l’IA : briefe ton propre tuteur {#ask-ai}

Au bout de quelques semaines, JustFlip! sait une chose qu’aucune IA de
chat ne sait : quelles cartes tu maîtrises et lesquelles tu rates sans
cesse. **Demander à l’IA** en fait une requête toute prête — un rapport
d’étude accompagné d’instructions — que tu colles dans ChatGPT, Claude,
Gemini ou tout autre assistant.

### Où le trouver

| Depuis | Choisis | Portée |
|---|---|---|
| Une carte de la liste des cartes (appui long ou clic droit) | [Demander à l'IA]{.ui} | Cette carte |
| Le bouton étincelles en haut d’une révision | [Interroger l'IA sur la carte]{.ui} | La carte à l’écran |
| Le bouton étincelles en haut d’une révision | [Interroger l'IA sur le paquet]{.ui} **(Pro)** | Tout le paquet de cette carte |
| Un paquet de la liste des paquets (appui long ou clic droit) | [Demander à l'IA]{.ui} **(Pro)** | Tout le paquet |
| L’écran de résultats après une révision | [Demander à l'IA]{.ui} | Les cartes de cette session |

Les cartes seules et les rapports de session sont gratuits. Les rapports
de paquet sont **Pro** : sans Pro, ces éléments de menu affichent un
cadenas et ouvrent l’écran Pro.

![La feuille Demander à l’IA : Copier la requête et Enregistrer la requête, les liens Ouvrir dans une IA de chat, et l’aperçu de la requête.](images/manual/{lang}/09-ask-ai-sheet.jpg){.phone}

### Ce que contient le rapport

Un **rapport de paquet** trie tes cartes selon leur historique :

- **Les cartes qui te posent problème** : celles qui ont au moins un
  oubli, une facilité basse, ou qui sont encore en apprentissage. Elles
  sont listées de la pire à la moins mauvaise, chacune avec sa réponse et
  une ligne de statistiques, par exemple « failed 4 of 6 review(s) · 2
  lapse(s) · ease 1.8 · avg 21s to answer ». Le rapport en inclut
  jusqu’à 25.
- **Les cartes que tu maîtrises** : listées par leur seule question, pour
  le contexte, afin que l’IA ne te fasse pas perdre de temps à les
  réexpliquer (jusqu’à 60).
- **Un paquet tout neuf**, sans historique, est listé carte par carte, et
  l’IA est invitée à en déduire le sujet et à en enseigner les bases.

Un **rapport de carte** couvre une carte : sa question et sa réponse, et
ton historique avec elle. Un **rapport de session** liste les cartes de
la révision que tu viens de terminer, avec la note donnée à chacune.

### Ce qu’il demande à l’IA

Les instructions suivent la même idée quelle que soit la portée :

1. **Enseigner les prérequis.** Tes erreurs révèlent souvent des
   connaissances de base que le paquet ne couvre pas : l’IA est invitée
   à les enseigner en partant de zéro.
2. **Expliquer les idées fausses** que suggèrent tes mauvaises réponses.
3. **Recommander des sources**, chacune avec un lien direct, en
   privilégiant la documentation officielle et les références sérieuses.
4. **Éventuellement, écrire de nouvelles cartes** pour combler les
   lacunes, en CSV (`question,answer`) dans un bloc de code, prêtes à
   importer.

La requête elle-même est en anglais, la langue que les modèles de chat
suivent le plus fiablement, mais elle demande à l’IA de **répondre dans
la langue de ton appareil**, et d’écrire les éventuelles nouvelles cartes
dans la langue du paquet.

### L’envoyer

La feuille te propose [Copier la requête]{.ui} et [Enregistrer la
requête]{.ui}, qui enregistre un fichier `.txt`. Sous [Ouvrir dans une
IA de chat]{.ui}, les lignes ChatGPT, Claude et Gemini ouvrent
l’assistant sur une nouvelle conversation, dans son app si elle est
installée, sinon dans le navigateur. Elles n’emportent pas ta requête :
copie d’abord, puis ouvre, puis colle. L’[Aperçu de la requête]{.ui}, en
bas, montre exactement ce que tu t’apprêtes à partager.

::: tip
#### Boucle la boucle

Quand l’IA t’écrit de nouvelles cartes, copie sa réponse, reviens à la
liste des centres d’intérêt et choisis [Ajouter ou importer]{.ui} ›
[Coller des cartes]{.ui}. JustFlip! trouve le CSV dans la réponse, même
à l’intérieur d’un bloc de code, et t’en montre un aperçu. Tu choisis le
paquet avant tout enregistrement.
:::

::: note
#### JustFlip! ne parle jamais à une IA

Demander à l’IA ne contient aucune IA. JustFlip! se contente d’assembler
du texte sur ton appareil, et ne contacte jamais aucun service d’IA. Le
rapport ne quitte l’app que lorsque **tu** le copies ou l’enregistres. La
suite se passe entre toi et le service dans lequel tu le colles : lis
donc l’aperçu d’abord si tes cartes contiennent quoi que ce soit de
privé.
:::

::: gotcha
#### Les cartes sans texte arrivent sous forme de substitut

Le rapport est du texte brut. Une carte sans texte sur l’un des côtés,
avec seulement une image ou de l’audio, parvient à l’IA sous la forme
« (no text — this card uses an image, audio, or PDF) ». Les suivis de
progression sont complètement exclus des rapports de paquet. Si un
paquet est surtout fait d’images, ajoute une ligne de texte aux cartes
qui comptent.
:::

## Exporter tes statistiques {#export}

Pour tes propres feuilles de calcul et graphiques, tu peux exporter les
statistiques complètes d’un centre d’intérêt. L’export est gratuit.

- **iPhone et iPad :** fais un appui long sur un centre d’intérêt dans la
  liste et choisis [Exporter les statistiques]{.ui}, puis [Feuille de
  calcul (CSV)]{.ui} ou [Données complètes (JSON)]{.ui}. Choisis où
  enregistrer le fichier.
- **Mac :** fais un clic droit sur un centre d’intérêt pour le même menu,
  ou sélectionne un centre d’intérêt et choisis **Fichier › Export
  Statistics…**, qui enregistre le CSV.

Les fichiers portent le nom du centre d’intérêt, par exemple
`Espagnol.flashcards-stats.csv`.

### Le CSV : une ligne par carte

| Colonne | Contenu |
|---|---|
| `interest`, `deck` | Où se trouve la carte |
| `question`, `answer` | Le texte de la carte |
| `state` | `unseen`, `learning`, `reviewing`, `relearning` ou `graduated` |
| `ease_factor` | La facilité de la carte (2,5 pour une nouvelle carte) |
| `interval_days` | L’intervalle actuel, en jours |
| `due_date` | La prochaine révision, sous forme de date et heure ISO 8601 |
| `lapses` | Le nombre de fois où la carte a été oubliée après avoir été apprise |
| `streak` | Les bonnes réponses d’affilée |
| `total_reviews` | Toutes les révisions enregistrées |
| `success_rate` | La part de réponses Bien ou Facile, de 0 à 1 |
| `avg_review_time_sec` | Le temps de réponse moyen |
| `last_reviewed` | L’heure de la dernière révision, vide si jamais révisée |

### Le JSON : tout

L’export JSON contient les mêmes champs par carte, plus un résumé des
étapes pour chaque paquet, chaque session d’étude avec son début, sa fin,
son nombre de cartes et son taux de réussite, et l’**historique** complet
de chaque carte : chaque révision avec son heure, sa note, son temps de
réponse, et l’intervalle et la facilité avant et après. Utilise-le quand
tu veux tracer ta propre courbe de l’oubli.

::: gotcha
#### Les exports de statistiques sont à sens unique

Un fichier de statistiques sert à la lecture, pas à la restauration.
JustFlip! ne peut pas le réimporter, et il ne contient ni images ni sons.
Pour déplacer ou sauvegarder un centre d’intérêt *avec* sa progression,
utilise plutôt [Exporter l'archive]{.ui} ; voir le chapitre 10.
:::
