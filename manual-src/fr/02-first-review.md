---
slug: first-review
number: 2
title: Ta première révision
description: "Comment se déroule une révision dans JustFlip! : retourner et noter les cartes, ce que font À revoir, Difficile, Bien et Facile, les modes de révision, le panneau Aujourd’hui, l’écran de résultats, le retrait des cartes et les rappels quotidiens."
---

# Ta première révision {#first-review number="2"}

::: lede
Retourner, noter, recommencer. Une révision prend quelques minutes, et
chaque note que tu donnes décide du moment où la carte reviendra. Ce
chapitre explique les quatre boutons de notation, où lancer une révision,
ce que montre Aujourd’hui, et que faire des cartes que tu connais déjà
par cœur.
:::

::: inthischapter
- Enchaîner la boucle de révision au toucher, par glissements ou au clavier
- Savoir ce que À revoir, Difficile, Bien et Facile font chacun à une carte
- Choisir entre Aujourd’hui et les modes À réviser, Difficiles, Nouvelles et Toutes
- Lire l’écran de résultats et retirer les cartes que tu maîtrises
- Activer un rappel quotidien
:::

## La boucle de révision {#loop}

Chaque révision se déroule de la même façon :

1. **Lis la question** et essaie de te rappeler la réponse. Essaie
   vraiment : c’est l’effort de mémoire qui fait que ça reste.
2. **Retourne la carte.** Touche-la, ou appuie sur Espace sur un clavier.
3. **Note-toi.** Touche le bouton qui correspond à ce que tu savais, ou
   fais glisser la carte.
4. **La carte suivante arrive.** Une petite note en bas, comme
   [Suivante : 3 j]{.ui}, t’indique quand la carte que tu viens de noter
   reviendra.

La barre en haut montre où tu en es dans la session. Pour t’arrêter plus
tôt, ferme la session et confirme avec [Quitter]{.ui}. Tout ce que tu as
noté jusque-là est enregistré ; la session n’est simplement pas comptée
comme terminée.

![Une session de révision côté réponse, avec les quatre boutons de notation et, au-dessus de chaque nom, le prochain intervalle.](images/manual/{lang}/02-grade-buttons.jpg){.phone}

::: tip
#### Noter avant de retourner

Tu n’es pas obligé de retourner la carte. Si tu connaissais la réponse
instantanément, note directement le côté question avec un bouton ou un
glissement. L’indication sous la carte le dit : [Appuyer sur la carte
pour voir la réponse • ou glisser pour répondre directement]{.ui}.
:::

## Les quatre notes {#grades}

Les boutons de notation se trouvent sous la carte. Chacun affiche
l’intervalle qu’il donnerait à cette carte : tu sais donc toujours ce que
tu choisis.

| Note | Couleur | Touche | Glissement | Signifie | Une nouvelle carte revient dans |
|---|---|---|---|---|---|
| [À revoir]{.ui} | Rouge | 1 | Vers le bas | Tu ne savais pas | 5 minutes |
| [Difficile]{.ui} | Orange | 2 | À gauche | Tu as trouvé, avec effort | 20 minutes |
| [Bien]{.ui} | Vert | 3 | À droite | Tu savais | 1 jour |
| [Facile]{.ui} | Bleu | 4 | Vers le haut | Tu savais instantanément | 4 jours |

Après la première fois, les intervalles s’allongent à chaque bonne
réponse. Bien multiplie le dernier intervalle, Facile l’étire davantage,
Difficile ne l’allonge qu’un peu, et À revoir fait repartir la carte avec
un pas court. Les chiffres sur les boutons changent à chaque carte. Le
chapitre 6 explique le calcul.

::: tip
#### Des notes honnêtes, des révisions plus courtes

C’est tentant d’appuyer sur Bien pour une carte que tu savais *presque*.
Ne le fais pas : la carte reviendrait alors une fois oubliée. Un
Difficile ou un À revoir honnête te coûte un coup d’œil de plus
maintenant et t’en épargne beaucoup plus tard. Les touches 1 à 4 et
Espace fonctionnent sur Mac et sur iPad avec clavier, sauf quand tu
saisis du texte dans un champ.
:::

### Vu, la cinquième réponse

Il existe une réponse de plus, sur laquelle tu n’appuies jamais : **Vu**.
La première fois que tu retournes une carte en *parcourant* la liste des
cartes d’un paquet, hors révision, JustFlip! note que tu l’as vue. Vu
n’est pas une note. Ça ne compte ni comme su ni comme raté ; ça indique
seulement que la carte n’est plus intacte. Dans la liste des cartes, un
œil gris marque ces cartes, tandis que les autres couleurs montrent la
dernière note donnée.
<!-- VERIFY: a first Seen sets dueDate = now (initialInterval .seen = 0),
so a browsed card then shows up in a deck's Due Cards — confirm and
decide whether to mention it. -->

## Jeter un œil et Évaluation plus stricte {#peeking}

Par défaut, les quatre notes restent disponibles après avoir retourné la
carte, car retourner pour vérifier fait partie de la boucle. Si tu
préfères être strict, active **Réglages › Comportement › Évaluation plus
stricte** ([Limiter les options lors du retournement de la carte]{.ui}).
C’est désactivé par défaut.

Avec Évaluation plus stricte, retourner une carte revient à regarder la
réponse. Seuls [À revoir]{.ui} et [Difficile]{.ui} restent, les
glissements vers la droite et vers le haut ne fonctionnent plus, et
l’indication devient [Appuyer sur la carte pour retourner • glisser à
gauche (Difficile) ou vers le bas (À revoir)]{.ui}. Pour donner Bien ou
Facile, note le côté question *avant* de retourner.

::: note
#### Les cartes à occlusion font exception

Une carte à occlusion d’image ne peut pas recevoir de réponse sans
dévoiler ses masques : les dévoiler ne compte donc jamais comme regarder
la réponse. Les quatre notes restent disponibles (chapitre 4).
:::

## Où lancer une révision {#modes}

Il y a trois endroits d’où lancer une révision, et chacun choisit les
cartes différemment.

| Où | Choisis | Quelles cartes |
|---|---|---|
| **Aujourd’hui** (écran Centres d’intérêt) | [Démarrer la révision]{.ui} | Les cartes à réviser de tous les centres d’intérêt, puis des nouvelles cartes dans la limite de ton quota quotidien |
| Écran **Paquets**, menu ▶ | [Cartes à réviser]{.ui} | Les cartes de ce centre d’intérêt dont l’heure de révision est venue |
| | [Cartes difficiles]{.ui} | Les cartes que tu as notées en dernier À revoir ou Difficile |
| | [Nouvelles cartes]{.ui} | Les cartes que tu n’as jamais étudiées |
| **Cartes** (un paquet), menu ▶ | [Cartes à réviser]{.ui} | Les cartes de ce paquet dont l’heure de révision est venue |
| | [Toutes les cartes]{.ui} | Toutes les cartes du paquet |
| | [Cartes difficiles]{.ui} | Les cartes que tu as notées en dernier À revoir ou Difficile |

Sur l’écran Paquets, le menu affiche un nombre à côté de chaque élément,
comme [Cartes difficiles (6)]{.ui}. Un élément vide est grisé. Les cartes
retirées et reportées sont exclues de tous les modes, sauf Toutes les
cartes.

Les sessions À réviser, Difficiles et Nouvelles se font par lots de
**Cartes par session** (Réglages › Comportement, 20 par défaut). Quand
d’autres cartes attendent, l’écran de résultats propose de continuer.

::: gotcha
#### Toutes les cartes, c’est vraiment toutes

[Toutes les cartes]{.ui} est un mode de bachotage. Il montre toutes les
cartes du paquet dans un ordre mélangé, y compris celles que tu as
retirées ou reportées, et il ne s’arrête pas après un lot. Tes notes
comptent quand même : bachoter un paquet la veille d’un examen modifie
donc aussi son planning.
:::

::: gotcha
#### Difficiles ignore le calendrier

Une carte est difficile quand ta dernière note pour elle était À revoir
ou Difficile, *même si elle n’est pas à réviser*. Une carte notée
Difficile et planifiée pour le mois prochain apparaît quand même dans
Cartes difficiles. C’est tout l’intérêt : c’est le mode pour travailler
les points faibles, pas pour rester à jour.
:::

::: gotcha
#### Nouvelles cartes ignore le quota quotidien

[Nouvelles cartes]{.ui}, sur l’écran Paquets, propose toutes les cartes
jamais étudiées de ce centre d’intérêt, quel que soit le nombre de
nouvelles cartes que tu as déjà vues aujourd’hui. Aujourd’hui, à
l’inverse, n’introduit chaque jour que le nombre de nouvelles cartes
autorisé dans les Réglages. Et sur un paquet seul, [Cartes à
réviser]{.ui} ne contient que des cartes déjà étudiées : une carte jamais
vue n’a pas encore de date de révision. Pour commencer un paquet tout
neuf, utilise Aujourd’hui, [Nouvelles cartes]{.ui} sur l’écran Paquets,
ou [Toutes les cartes]{.ui}.
:::

## Aujourd’hui {#today}

Le panneau **Aujourd’hui**, en haut de l’écran Centres d’intérêt, répond
à une seule question : que dois-je réviser maintenant ? Il rassemble en
une seule session les cartes à réviser de tous tes centres d’intérêt.

![Le panneau Aujourd’hui avec les cartes à réviser, le temps estimé, la série et une pastille par centre d’intérêt.](images/manual/{lang}/02-today.jpg){.phone}

- **Le titre** affiche par exemple [12 à réviser · 5 nouvelles]{.ui}. En
  dessous figure une estimation du temps, comme [Environ 5 min]{.ui}.
- **[Démarrer la révision]{.ui}** lance la session. Avant ta première
  révision, le bouton affiche [Commencer le test]{.ui}.
- **Les pastilles** en dessous, une par centre d’intérêt, lancent une
  session avec les seules cartes de ce centre d’intérêt. Elles
  apparaissent quand au moins deux centres d’intérêt ont des cartes en
  attente.
- **La série**, comme [4 jours d'affilée]{.ui}, compte les jours où tu as
  révisé au moins une carte. Un ou deux jours manqués dans une longue
  série ne la cassent pas.

Une session Aujourd’hui commence par les cartes à réviser. Quand
plusieurs centres d’intérêt ou paquets ont des cartes en attente, leur
priorité d’apprentissage décide lesquels prennent plus de place dans la
session (chapitre 6). Viennent ensuite les nouvelles cartes, dans la
limite de ton quota quotidien.

### Nouvelles cartes par jour

**Réglages › Comportement › Nouvelles cartes par jour** fixe combien de
cartes jamais étudiées Aujourd’hui introduit chaque jour : 5, 10, 15 ou
20, ou [Aucune]{.ui}. La valeur par défaut est 10. Les cartes commencées
aujourd’hui comptent dans ce nombre : le quota ne grossit donc pas si tu
enchaînes les sessions. À côté, [Cartes par session]{.ui} plafonne le
nombre de cartes d’une session Aujourd’hui : 10, 15, 20 ou 30, ou
[Illimité]{.ui}.

**Réglages › Rythme de révision** ([Détendu]{.ui}, [Régulier]{.ui} ou
[Intensif]{.ui}, Régulier par défaut) règle ce qu’Aujourd’hui te demande
chaque jour et la vitesse à laquelle les paquets commencent à paraître en
retard. Le chapitre 6 l’explique.

### Tout est à jour

Quand les révisions du jour sont faites et qu’aucune nouvelle carte
n’attend, Aujourd’hui affiche [Tout est à jour]{.ui}. Il t’indique quand
les prochaines cartes arrivent à échéance, par exemple [Prochaine
révision demain · 8 cartes]{.ui}, et affiche un petit graphique
[7 prochains jours]{.ui} de ce qui t’attend. Tu peux toujours étudier
quand tu veux depuis l’écran Paquets ou Cartes.

## Pendant une session {#session}

La ligne au-dessus de la carte contient quelques commandes
supplémentaires :

- **Reporter.** Met de côté la carte en cours, son paquet ou tout son
  centre d’intérêt jusqu’à [Demain]{.ui}, [Dans 3 jours]{.ui},
  [Dans 1 semaine]{.ui} ou une [Date personnalisée…]{.ui}. Les cartes
  reportées restent hors des révisions jusque-là. Le chapitre 6 donne
  les détails.
- **Demander à l’IA.** Prépare une requête d’étude sur la carte en cours,
  ou sur tout son paquet (Pro), à coller dans une IA de chat
  (chapitre 9).
- **Saisir les réponses.** Tape ta réponse avant de retourner la carte,
  et JustFlip! la compare à la carte : [Correct !]{.ui}, [Presque —
  comparez attentivement]{.ui} ou [Pas tout à fait]{.ui}. C’est toujours
  toi qui choisis la note.
- **Ouvrir le paquet.** Quitte la session et ouvre le paquet d’où vient
  la carte en cours. Ce que tu as déjà noté est conservé.

## L’écran de résultats {#results}

À la fin de la session, tu vois [Pratique terminée]{.ui} avec ton taux de
réussite, le nombre de [Cartes révisées]{.ui} et ton [Temps
d'étude]{.ui}. Le taux de réussite compte Bien et Facile comme des
bonnes réponses.

![L’écran de résultats : le taux de réussite, les cartes révisées, le temps d’étude et le décompte de chaque note.](images/manual/{lang}/02-results.jpg){.phone}

Si d’autres cartes attendent au-delà de ce lot, le titre affiche par
exemple [Bravo — 20 faites]{.ui}, et un bouton [Réviser 15 de plus]{.ui}
enchaîne avec le lot suivant. À la vraie fin d’une session, JustFlip!
peut ajouter [Revenez demain pour 8 cartes]{.ui}. Après la révision d’un
seul paquet, [Redémarrer]{.ui} relance le même mode. [Terminé]{.ui} te
ramène en arrière.

Deux types de suggestions peuvent apparaître en dessous :

- **[Vous les connaissez bien]{.ui}.** Les cartes notées Bien ou Facile
  pendant cette session et désormais loin dans le planning : un
  intervalle d’au moins **90 jours** et au moins **4 bonnes réponses
  d’affilée**. Chacune a un bouton [Retirer]{.ui}, et [Annuler]{.ui} si
  tu changes d’avis.
- **[Celles-ci vous échappent sans cesse]{.ui}.** Les cartes notées À
  revoir que tu as oubliées de nombreuses fois : 8 fois ou plus, sans
  série de rattrapage de 3 bonnes réponses. Une telle carte est
  généralement mal formulée. Essaie de la découper en cartes plus
  petites, ou retire-la si elle n’a plus d’importance.

## Retirer une carte {#retire}

Retirer une carte, c’est dire « je la connais, arrête de me
l’interroger ». JustFlip! ne fait que *suggérer* de retirer ; il ne
retire jamais une carte de lui-même.

Une carte retirée :

- n’apparaît plus dans Aujourd’hui, Cartes à réviser, Cartes difficiles
  ni Nouvelles cartes, et ne compte plus comme à réviser ;
- apparaît toujours dans [Toutes les cartes]{.ui}, et compte toujours
  dans la maîtrise du paquet ;
- garde tout son historique, et un badge [Retirée]{.ui} dans la liste
  des cartes.

Tu peux retirer n’importe quelle carte toi-même : maintiens le doigt
dessus dans la liste des cartes et choisis [Retirer la carte]{.ui}. Pour
la récupérer, choisis [Réactiver la carte]{.ui}. Une carte réactivée
reprend son planning exactement là où elle l’avait laissé.

## Rappels quotidiens {#reminders}

La répétition espacée ne paie que si elle est régulière, et un petit
coup de pouce aide. Les rappels sont **désactivés** tant que tu ne les
actives pas. Active-les sur la dernière page de la visite de bienvenue,
ou plus tard dans **Réglages › Rappels › Rappel de révision
quotidien** : [Un rappel par jour, uniquement quand des cartes sont
dues.]{.ui}

La première fois que tu l’actives, iOS demande si JustFlip! peut envoyer
des notifications ; autorise-le. Choisis l’heure avec [Heure du
rappel]{.ui} ; elle est réglée au départ sur 19 h. La notification
affiche par exemple [C'est l'heure de réviser]{.ui} avec [12 cartes
prêtes · environ 3 min]{.ui}.

Dans la même section, [Sauvetage de série]{.ui} ajoute un petit rappel en
soirée les jours où tu n’as pas encore révisé et où ta série est en
danger.

::: gotcha
#### Pas de notification ? Vérifie les Réglages d’iOS

Si tu as refusé les notifications une fois, JustFlip! ne peut plus
redemander. Active-les dans l’app Réglages d’iOS, sous **Notifications ›
JustFlip**, et le rappel se met à fonctionner.
:::
