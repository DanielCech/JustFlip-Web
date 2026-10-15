---
slug: scheduling
number: 6
title: Comment fonctionne la planification
description: "Comment JustFlip! décide quand tu reverras une carte : étapes d’apprentissage, intervalles et facilité, ce qui rend une carte à réviser, priorités de révision, report, suivis de progression et Planification intelligente."
---

# Comment fonctionne la planification {#scheduling number="6"}

::: lede
Tu n’as jamais à planifier une révision. Chaque note que tu donnes dit à
JustFlip! à quel point tu connais une carte, et l’app calcule quand la
remontrer : bientôt si elle t’a échappé, bien plus tard si elle était
facile. Ce chapitre soulève le capot. Tu verras ce que signifient les
étapes, pourquoi les intervalles grandissent comme ils le font, et
quelles commandes te permettent d’orienter la file sans tricher avec ta
mémoire.
:::

::: inthischapter
- Les cinq étapes que traverse une carte, et ce qui la fait avancer
- Intervalles et facilité en termes simples, avec les maths exactes pour les curieux
- Ce que signifie « à réviser », et comment JustFlip! décide de ce qui passe en premier
- Accorder plus de ton temps à un sujet grâce aux priorités de révision
- Reporter une carte, un paquet ou tout un centre d’intérêt, puis le reprendre
- Suivre des compétences que les cartes ne peuvent pas noter, avec les suivis de progression
:::

## L’idée en une minute {#idea}

La mémoire s’efface selon une courbe. Juste après avoir appris quelque
chose, tu l’oublies vite, et chaque fois que tu t’en souviens de nouveau,
la courbe s’aplatit. La répétition espacée en tire parti : elle te montre
une carte juste avant que tu ne l’aies oubliée. Chaque rappel réussi
repousse la révision suivante plus loin.

Dans JustFlip!, chaque carte porte trois nombres :

| Nombre | Ce qu’il signifie |
|---|---|
| **Intervalle** | Le temps avant que la carte revienne, de quelques minutes à plusieurs mois |
| **Facilité** | La vitesse à laquelle l’intervalle grandit pour cette carte. Elle démarre à 2,5 |
| **Échéance** | Le moment où l’intervalle s’achève et où la carte est de nouveau prête |

Ta note après chaque retournement modifie la facilité et l’intervalle,
et l’échéance suit. Les boutons de notation affichent l’intervalle que
donnerait chaque choix : rien ne se passe dans ton dos. Après la note,
une petite indication [Suivante : …]{.ui} confirme quand tu reverras la
carte.

## Les cinq étapes {#stages}

Chaque carte se trouve à l’une des cinq étapes. L’étape est une
étiquette qui décrit l’intervalle de la carte. Elle ne décide pas de
l’intervalle.

| Étape | Signification | Intervalle typique |
|---|---|---|
| **Non vue** | Jamais étudiée | — |
| **Apprentissage** | Fraîchement apprise, ou oubliée depuis Révision | de quelques minutes à quelques jours |
| **Révision** | L’intervalle a atteint 7 jours | d’une à quatre semaines |
| **Maîtrisée** | L’intervalle a atteint 30 jours | plusieurs mois |
| **Réapprentissage** | Une carte Maîtrisée que tu as oubliée | de nouveau des pas courts |

```text
Non vue ──note──▶ Apprentissage ──7 jours──▶ Révision ──30 jours──▶ Maîtrisée
                        ▲                        │                       │
                        └─────── À revoir ───────┘              À revoir │
                                                                         ▼
                                                                Réapprentissage
```

Ce qui fait passer une carte d’une étape à l’autre :

- **N’importe quelle note** fait passer une carte Non vue en
  Apprentissage.
- **Difficile, Bien ou Facile** font monter une carte dès que son nouvel
  intervalle franchit un seuil : 7 jours la font passer en Révision,
  30 jours en Maîtrisée. Les étapes suivent l’intervalle : un Facile sur
  une nouvelle carte ne la rend donc pas Maîtrisée sur-le-champ. Elle
  doit encore gagner ses 30 jours.
- **À revoir** renvoie une carte en Apprentissage ou en Révision vers
  Apprentissage, et une carte Maîtrisée vers Réapprentissage. Dans les
  deux cas, l’intervalle tombe à 5 minutes.
<!-- VERIFY: in SM-2 mode a Relearning card's Good/Easy interval is always the initial step (1 or 4 days), so it never reaches the 7-day threshold and appears to stay in Relearning. Confirm the intended exit path in CardStatistics+SRS.swift calculateNextInterval before describing how a card leaves Relearning. -->

L’écran Statistiques compte tes cartes par étape, sous **Collection** :
[Nouvelles]{.ui}, [Apprentissage]{.ui} (qui inclut le Réapprentissage),
[Révision]{.ui} et [Maîtrisées]{.ui}. Le chapitre 9 couvre le reste de
cet écran.

::: note
#### La maîtrise n’est pas l’étape Maîtrisée

Le pourcentage de **Maîtrise** d’un paquet ou d’un centre d’intérêt
compte les cartes dont la *dernière* note était Bien ou Facile. Ce n’est
pas la part de cartes Maîtrisées. Un paquet peut afficher une maîtrise
élevée après une seule bonne session, bien avant qu’une carte n’atteigne
l’étape Maîtrisée. La maîtrise te dit comment tu t’en es sorti
récemment. Les étapes te disent à quel point la connaissance est
installée.
:::

## Intervalles et facilité {#intervals}

### La première note

Une carte que tu n’as jamais notée, ou que tu viens d’oublier, part de
premiers pas fixes :

| Note | Prochaine révision |
|---|---|
| À revoir | dans 5 minutes |
| Difficile | dans 20 minutes |
| Bien | dans 1 jour |
| Facile | dans 4 jours |

### Chaque note ensuite

À partir de là, chaque note part de l’intervalle qu’a déjà la carte :

- **À revoir** fait tout recommencer : 5 minutes, et une facilité plus
  basse.
- **Difficile** allonge un peu l’intervalle, de 20 %, et baisse la
  facilité.
- **Bien** multiplie l’intervalle par la facilité de la carte : environ
  2,5× pour une carte typique.
- **Facile** multiplie par la facilité *et* par un bonus de 1,3, et
  augmente la facilité.

La facilité est le taux de croissance propre à la carte. Chaque
Difficile et chaque À revoir ralentit sa croissance pour la suite.
Chaque Facile l’accélère. La facilité ne descend jamais sous 1,3 et ne
dépasse jamais 3,5 : une carte difficile avance donc quand même, mais à
plus petits pas.

Voici une nouvelle carte à laquelle tu réponds **Bien** à chaque fois :

| Révision | Intervalle | Étape ensuite |
|---|---|---|
| 1re | 1 jour | Apprentissage |
| 2e | 2,5 jours | Apprentissage |
| 3e | environ 6 jours | Apprentissage |
| 4e | environ 16 jours | Révision |
| 5e | environ 39 jours | Maîtrisée |

Cinq révisions réussies, étalées sur environ deux mois, et la carte ne
revient plus qu’une fois par mois, voire moins.

::: tip
#### Pourquoi les jours varient

Les intervalles de deux jours ou plus reçoivent un petit coup de pouce
aléatoire allant jusqu’à ±10 %. Sinon, des cartes apprises ensemble le
même soir reviendraient ensemble pour toujours, comme un gros bloc dans
ton calendrier. Ce coup de pouce les répartit sur les jours voisins. Les
boutons de notation affichent toujours l’intervalle avant ce décalage :
la date réelle peut donc différer d’un jour environ.
:::

::: note
#### Sous le capot : la variante de SM-2

JustFlip! utilise une variante de SM-2, l’algorithme derrière SuperMemo
et Anki. Avec une facilité *E* et un intervalle actuel *I*, une note met
d’abord à jour la facilité, bornée entre 1,3 et 3,5 :

$$
E' = \min\bigl(3.5,\ \max(1.3,\ E + \Delta)\bigr), \qquad \Delta \in \{-0.20,\ -0.15,\ 0,\ +0.15\}
$$

pour À revoir, Difficile, Bien et Facile. Ensuite, le nouvel intervalle
d’une carte déjà en cours est :

$$
I_{\text{hard}} = \max(1.2\,I,\ 1\ \text{hour})
$$

$$
I_{\text{good}} = \max(E'\,I,\ 1\ \text{day})
$$

$$
I_{\text{easy}} = \max(1.3\,E'\,I,\ 4\ \text{days})
$$

À revoir donne toujours 5 minutes. Les intervalles de deux jours ou plus
sont ensuite multipliés par un facteur aléatoire :

$$
I_{\text{final}} = I \times (1 + u), \qquad u \in [-0.1,\ 0.1]
$$
:::

### Planification intelligente (Pro) {#smart-schedule}

Sous **Réglages › Comportement**, l’interrupteur [Planification
intelligente]{.ui} (marqué [BETA]{.ui}) remplace les intervalles SM-2
par **FSRS-5**, un planificateur moderne. FSRS planifie chaque révision
au moment où ta probabilité de te souvenir de la carte tombe à environ
90 %. Le but : moins de révisions pour la même rétention. Il ne modifie
que les intervalles de Difficile, Bien et Facile. À revoir ramène
toujours une carte au bout de 5 minutes.

JustFlip! tient ses valeurs SM-2 à jour dans tous les cas : tu peux donc
désactiver la Planification intelligente à tout moment sans rien perdre.
C’est une fonction Pro. Sans Pro, toucher l’interrupteur ouvre l’écran
Pro à la place.

## Ce que signifie « à réviser » {#due}

Une carte est **à réviser** dès que son échéance est passée, sauf si tu
l’as retirée ou reportée. Les cartes retirées (chapitre 2) et reportées
(voir [Reporter](#postponing)) gardent leur planning. Elles ne se
présentent simplement pas tant qu’elles sont mises de côté.

Les cartes que tu n’as jamais étudiées ne sont pas à réviser. Elles sont
**nouvelles**. La session [Aujourd'hui]{.ui} mélange les deux : d’abord
les cartes à réviser, puis des nouvelles cartes prises sur ton quota
quotidien. Les valeurs par défaut sont 20 [Cartes par session]{.ui} et
10 [Nouvelles cartes par jour]{.ui}, toutes deux sous **Réglages ›
Comportement**.

### Quelles cartes passent en premier

Dans la session Aujourd’hui et dans le menu de révision de l’écran
Paquets, JustFlip! construit la file ainsi :

1. **Les plus anciennes d’abord.** Les cartes arrivées à échéance un jour
   antérieur passent avant celles arrivées à échéance plus tard.
2. **Un mélange quotidien au sein de chaque jour.** Les cartes à réviser
   le même jour sont mélangées dans un ordre qui change chaque jour.
   Ainsi, une courte session ne pioche pas toujours la même tranche de
   tête d’un gros retard.
3. **Les paquets jouent chacun leur tour.** Les cartes de chaque paquet
   sont entremêlées avec les autres à tour de rôle, en fonction de la
   priorité (voir [Priorités de révision](#priorities)).
4. **Les nouvelles cartes en dernier,** dans la limite de ce qui reste
   de ton quota quotidien et de la taille de la session.
5. **Les cartes sœurs d’occlusion d’image sont espacées,** pour que deux
   cartes issues de la même image ne se suivent pas.

Une révision lancée depuis la liste de cartes d’un seul paquet mélange
les cartes à réviser de ce paquet.

::: gotcha
#### À revoir ne répète pas la carte dans la même session

Une carte notée **À revoir** est de nouveau à réviser au bout de 5
minutes, mais elle ne réapparaît pas plus loin dans la session en cours.
Tu la retrouveras à ta prochaine session. Si tu veux un deuxième essai
tout de suite, termine la session et lances-en une autre quelques
minutes plus tard.
:::

### Urgence

Les centres d’intérêt et les paquets reçoivent aussi un score
d’**urgence**, qui pilote l’indicateur coloré dans les listes et le tri
[Par urgence]{.ui}. Il combine plusieurs signaux. Les plus importants
sont la part de cartes à réviser et le retard de la plus ancienne carte.
Les plus faibles sont le temps écoulé depuis ta dernière étude du
paquet, une maîtrise basse et quelques nouvelles cartes. Les cartes
retirées et reportées ne comptent pas. Pendant quelques heures après que
tu as étudié un paquet, son urgence reste à zéro, pour que l’indicateur
ne s’emballe pas à cause des remises en file de 5 minutes.

**Réglages › Rythme de révision** modifie la vitesse à laquelle l’urgence
grimpe : **Détendu** (lentement, avec des premiers lots plus petits),
**Régulier** (par défaut) ou **Intensif** (rapidement, avec toute la file
visible). Le rythme de révision ne change jamais les intervalles
eux-mêmes.

## Priorités de révision {#priorities}

Quand tu as plus de cartes à réviser que de temps, la priorité décide
quelles cartes tu vois en premier. Chaque centre d’intérêt a une
[Priorité d’apprentissage]{.ui} de 0 % à 100 %, par paliers de 5 %. Elle
démarre à **75 %**. Par défaut, chaque paquet est réglé sur [Hériter du
centre d’intérêt]{.ui}, mais il peut aussi avoir sa propre valeur.

Tu peux la régler à trois endroits :

- **Un centre d’intérêt :** maintiens le doigt dessus dans la liste des
  centres d’intérêt, choisis [Modifier l’intérêt]{.ui} et déplace le
  curseur [Priorité d’apprentissage]{.ui}.
- **Un paquet :** maintiens le doigt dessus, choisis [Modifier le
  paquet]{.ui}, désactive [Hériter du centre d’intérêt]{.ui} et déplace
  le curseur.
- **Tous les paquets d’un centre d’intérêt d’un coup :** sur l’écran
  Paquets, ouvre le menu [Options du paquet]{.ui} (l’icône en forme de
  dossier) et choisis [Priorité de révision]{.ui}. La feuille affiche le
  curseur [Priorité du centre d’intérêt]{.ui} et, sous [Priorité du
  paquet]{.ui}, une ligne par paquet.

![La feuille Priorité de révision : le curseur du centre d’intérêt en haut, puis une ligne par paquet avec son propre interrupteur Hériter du centre d’intérêt.](images/manual/{lang}/06-review-priority.jpg){.phone}

### Comment se fait le mélange

La priorité change l’*ordre* de la file, pas son contenu. Imagine que
chaque paquet distribue ses cartes à réviser à tour de rôle. Un paquet
avec une priorité deux fois plus élevée distribue deux fois plus
souvent :

| Paquet | Priorité | Ordre de ses cartes dans la session |
|---|---|---|
| Espagnol | 100 % | 1re, 3e, 4e, 6e, 7e … |
| Chimie | 50 % | 2e, 5e, 8e … |

Avec la valeur par défaut de 75 % partout, les paquets alternent
simplement, une carte chacun. Une priorité plus élevée gagne une plus
grande part d’une session plafonnée, et une priorité plus basse se
retrouve repoussée vers la fin.

::: gotcha
#### La priorité ne cache jamais une carte

Même à 0 %, les cartes à réviser d’un paquet restent à réviser. Elles ne
sont simplement proposées qu’après tout le reste. Les nombres de cartes
à réviser sur le widget, dans Aujourd’hui et sur l’écran Paquets restent
exactement les mêmes quand tu déplaces un curseur. La priorité ne compte
que quand une session est plafonnée : dans Aujourd’hui et dans le menu de
révision de l’écran Paquets. La révision d’un seul paquet n’a rien avec
quoi rivaliser.
:::

## Reporter {#postponing}

Parfois, une carte n’est pas ratée, ce n’est juste pas le bon moment :
la semaine d’examens d’une autre matière, des vacances, un paquet que tu
reprendras le mois prochain. Noter À revoir ou Difficile abîmerait son
planning. **Reporter** la met plutôt en attente, sans toucher du tout au
planning.

### Comment reporter

Pendant n’importe quelle révision, touche le bouton [Reporter]{.ui}
(l’icône en forme d’horloge en haut de l’écran de révision). Choisis la
portée :

- [Reporter cette carte]{.ui}
- [Reporter ce paquet]{.ui}
- [Reporter ce centre d’intérêt]{.ui}

Puis choisis pour combien de temps : [Demain]{.ui}, [Dans 3 jours]{.ui},
[Dans 1 semaine]{.ui}, ou [Date personnalisée…]{.ui} pour choisir un
jour sous [Reprendre le]{.ui}. Une mise en attente dure jusqu’au début de
ce jour-là : « Demain » veut donc dire toute la journée de demain, pas
24 heures à partir de maintenant.

![Le menu Reporter pendant une révision, avec les options carte, paquet et centre d’intérêt.](images/manual/{lang}/06-postpone-menu.jpg){.phone}

Les cartes mises en attente quittent aussitôt la session en cours. Si tu
reportes le paquet ou le centre d’intérêt d’une révision portant sur un
seul paquet, la session se termine, puisqu’il ne reste rien à réviser.

### Ce que fait une mise en attente

Une mise en attente est un simple filtre. Rien n’est noté, l’intervalle
et la facilité restent tels quels, et l’historique de la carte ne change
pas. Tant que la mise en attente dure :

| Où | Cartes reportées |
|---|---|
| Aujourd’hui, le widget, les nombres de cartes à réviser et les prévisions | exclues |
| [Cartes à réviser]{.ui} et [Cartes difficiles]{.ui} | exclues |
| [Nouvelles cartes]{.ui} (menu de l’écran Paquets) | exclues, même jamais étudiées |
| [Toutes les cartes]{.ui} | **incluses** |

Si une carte, son paquet et son centre d’intérêt sont tous en attente,
c’est la date la plus tardive qui l’emporte.

### Comment lever une mise en attente

Les mises en attente prennent fin d’elles-mêmes à la date choisie. Pour
en terminer une plus tôt, ouvre l’écran Paquets de ce centre d’intérêt
et choisis [Options du paquet]{.ui} › [Priorité de révision]{.ui}. Tant
que quelque chose est en attente, la feuille comporte une section
[Reporté]{.ui} avec le nombre de cartes en attente et un bouton pour
chaque mise en attente active :

- [Reprendre ce centre d’intérêt]{.ui}
- [Reprendre *nom du paquet*]{.ui}, un pour chaque paquet en attente

::: gotcha
#### Une carte seule ne peut pas être reprise plus tôt

La section Reporté ne liste que les mises en attente de centres
d’intérêt et de paquets. Une mise en attente sur une seule carte compte
dans le total mais n’a pas de bouton Reprendre. Elle expire simplement à
sa date. Pour la raccourcir, ouvre la révision [Toutes les cartes]{.ui}
du paquet, qui ignore les mises en attente. Quand la carte se présente,
reporte-la de nouveau avec [Demain]{.ui}.
:::

::: tip
#### Toutes les cartes est le mode bachotage

[Toutes les cartes]{.ui} inclut volontairement les cartes retirées et
reportées. Utilise-le la veille d’un examen, ou quand tu veux parcourir
un paquet reporté malgré tout. Tes notes y comptent comme partout
ailleurs.
:::

## Suivis de progression (Pro) {#trackers}

Certaines compétences ne tiennent pas sur une carte : un morceau que tu
travailles au piano, une technique d’escalade, un livre que tu lis petit
à petit. Un **suivi de progression** est une carte spéciale avec un nom,
des notes facultatives et une barre de progression que tu règles
toi-même.

Pour en ajouter un, ouvre un paquet, touche le menu [Plus
d'actions]{.ui} et choisis [Ajouter un suivi de progression]{.ui}. La
première fois, une courte introduction explique l’idée. Donne un nom au
suivi ([Que voulez-vous suivre ?]{.ui}) et, si tu veux, des notes. Plus
tard, touche le suivi et déplace le curseur [Progression]{.ui}, de 0 à
100 par paliers de cinq, selon où tu estimes en être.

![Un paquet de suivis de progression, chacun avec sa barre de progression et son pourcentage.](images/manual/{lang}/06-progress-tracker.jpg){.phone}

Ce que fait un suivi, et ce qu’il ne fait pas :

- Il n’est **jamais révisé.** Les suivis restent en dehors de toutes les
  sessions de révision, d’Aujourd’hui, des nombres de cartes à réviser,
  des étapes des Statistiques et de Lire les cartes.
- Il **ne compte pas pour ta série.** Personne ne t’interroge : il n’y a
  donc rien à compter.
- Il **compte bien pour la maîtrise du paquet.** Une carte ajoute 1 à la
  maîtrise du paquet quand sa dernière note était Bien ou Facile. Un
  suivi ajoute sa propre progression : 60 % ajoute 0,6. Un paquet qui ne
  contient que des suivis affiche leur progression moyenne comme
  maîtrise.
<!-- VERIFY: the in-app intro string trackerIntroPoint3Text says trackers "never affect deck mastery", but DeckStatistics.masteryIncludingTrackers (used by the card list and BackgroundStatsActor) blends them in. The manual follows the code; one of the two should be aligned. -->

::: gotcha
#### Les suivis sont auto-évalués

Un suivi dit exactement ce que tu lui dis, rien de plus. C’est tout
l’intérêt, mais cela signifie aussi qu’un suivi réglé sur 100 % fait
monter la maîtrise d’un paquet autant qu’une carte que tu connais
vraiment. Sois honnête avec le curseur.
:::

Les suivis de progression sont une fonction Pro. Sans Pro, l’élément de
menu porte un cadenas et ouvre l’écran Pro. Les suivis que tu as déjà
sont conservés en lieu sûr. À leur place, le paquet affiche une seule
ligne indiquant combien de suivis il contient, et ils reviennent dès que
Pro est de nouveau actif.

## Cartes retirées {#retire}

**Retirer** une carte (« je la connais, arrête de me l’interroger ») la
sort de À réviser et de Difficiles sans effacer son historique. C’est
expliqué au chapitre 2. Pour la planification, retiens deux choses :

- Une carte retirée garde son intervalle, sa facilité et son échéance.
  Réactive-la et elle reprend exactement là où elle s’était arrêtée.
- Une carte retirée compte toujours dans la maîtrise, mais plus dans
  l’urgence ni dans les nombres de cartes à réviser.

## Référence rapide {#reference}

| Réglage ou valeur | Où | Par défaut |
|---|---|---|
| Premiers pas (À revoir / Difficile / Bien / Facile) | intégré | 5 min / 20 min / 1 jour / 4 jours |
| Facilité de départ | intégré | 2,5 (plage 1,3–3,5) |
| Révision / Maîtrisée | intégré | intervalle ≥ 7 / ≥ 30 jours |
| [Cartes par session]{.ui} | Réglages › Comportement | 20 |
| [Nouvelles cartes par jour]{.ui} | Réglages › Comportement | 10 |
| [Planification intelligente]{.ui} (Pro) | Réglages › Comportement | désactivée |
| Rythme de révision | Réglages › Rythme de révision | Régulier |
| [Priorité d’apprentissage]{.ui} | Modifier l’intérêt / Modifier le paquet / Priorité de révision | 75 %, les paquets héritent |
| Reporter | écran de révision, icône horloge | — |
| Suggestion de retrait | écran de résultats | intervalle ≥ 90 jours et 4 bonnes réponses d’affilée |
