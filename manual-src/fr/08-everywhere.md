---
slug: everywhere
number: 8
title: JustFlip! partout
description: "Utiliser JustFlip! sur iPad, Mac et Apple Watch, avec les raccourcis clavier, le widget de l’écran d’accueil, Siri et Raccourcis, la recherche Spotlight et la feuille Nouveautés."
---

# JustFlip! partout {#everywhere number="8"}

::: lede
Ta bibliothèque vit dans iCloud : elle te suit d’un appareil à l’autre.
Chaque appareil joue sur ses points forts : une vue partagée spacieuse
sur iPad, une barre des menus et une notation au clavier d’une seule main
sur Mac, une révision express au poignet, et le nombre de cartes à
réviser sur ton écran d’accueil avant même d’avoir ouvert l’app.
:::

::: inthischapter
- Travailler dans les vues partagées de l’iPad et du Mac, et faire glisser des paquets depuis Fichiers ou le Finder
- Réviser au clavier, avec la liste complète des raccourcis
- Réviser sur l’Apple Watch, et comprendre pourquoi la montre a besoin de ton iPhone
- Ajouter le widget Cartes à réviser à ton écran d’accueil ou à ton écran verrouillé
- Demander à Siri ce qu’il y a à réviser, ou lancer une révision sans toucher l’écran
- Retrouver n’importe quelle carte depuis Spotlight, et en tenir les paquets privés à l’écart
:::

## iPad {#ipad}

Sur iPad, JustFlip! utilise une disposition en deux colonnes, comme l’app
Réglages. La **barre latérale** à gauche contient tes centres d’intérêt
et, une fois que tu en choisis un, les paquets de ce centre d’intérêt. La
**colonne de détail** à droite affiche les cartes du paquet sélectionné.
Tu navigues à gauche et tu étudies à droite, sans perdre le fil.

![JustFlip! sur iPad : les paquets d’un centre d’intérêt dans la barre latérale, les cartes de ce paquet dans la colonne de détail.](images/manual/{lang}/08-ipad-split.jpg){.shot width=80%}

La disposition s’adapte à la façon dont tu tiens l’iPad :

- **Quand il y a de la place** (en paysage, ou sur un grand iPad en
  portrait), les deux colonnes sont côte à côte.
- **Quand l’espace manque** (un iPad plus petit en portrait, ou
  JustFlip! à côté d’une autre app), les cartes occupent tout l’écran. La
  barre latérale apparaît quand tu touches le bouton de barre latérale
  dans le coin supérieur ou que tu balaies depuis le bord gauche.

JustFlip! fonctionne aussi en Split View et en Slide Over à côté d’une
autre app, et les colonnes s’ajustent à l’espace disponible. L’app
s’exécute dans une seule fenêtre : tu ne peux pas ouvrir deux fenêtres
JustFlip! côte à côte.

### Glisser-déposer

Le glisser-déposer fonctionne de deux façons :

- **Importer un fichier en le déposant.** Fais glisser un fichier
  `.flashcards` ou `.flashcards.zip`, une feuille de calcul CSV ou un
  paquet Anki `.apkg` depuis l’app Fichiers (ou depuis une autre app en
  Split View) sur JustFlip!. Tu peux le déposer n’importe où dans la
  fenêtre, et l’import démarre comme si tu avais ouvert le fichier. Le
  chapitre 5 explique ce que chaque format apporte.
- **Réorganiser ta bibliothèque.** Les centres d’intérêt, les paquets et
  les cartes peuvent tous être réorganisés en les faisant glisser. Pour
  les centres d’intérêt, choisis [Reorder]{.ui} dans le menu en haut de
  l’écran Centres d’intérêt. Pour les paquets et les cartes, choisis
  [Modifier]{.ui} dans le menu de la liste. Fais ensuite glisser les
  lignes par leurs poignées et touche [Terminé]{.ui} une fois fini.

::: tip
#### Un pointeur et un clavier, ça aide

Avec un trackpad ou une souris, les boutons de notation se soulèvent
quand tu les survoles. Avec un clavier physique, les raccourcis de
révision de [la liste des raccourcis](#keyboard) fonctionnent sur iPad
exactement comme sur Mac.
:::

## Mac {#mac}

Sur Mac, JustFlip! utilise toute la largeur d’une fenêtre de bureau avec
trois colonnes : **Centres d’intérêt**, **Paquets** et **Cartes**.
Réduis la largeur de la fenêtre et la colonne Centres d’intérêt se range
derrière le bouton de barre latérale, pour que les paquets et les cartes
gardent assez de place. Dans une fenêtre très étroite, seules les cartes
restent à l’écran. Élargis de nouveau la fenêtre et les trois colonnes
reviennent.

![JustFlip! sur Mac. Trois colonnes : centres d’intérêt, paquets et liste des cartes.](images/manual/{lang}/08-mac-three-columns.jpg){.shot width=80%}

### La barre des menus

JustFlip! ajoute ses propres commandes en haut du menu **Fichier** :

| Commande | Raccourci | Ce qu’elle fait |
|---|---|---|
| [Import Cards…]{.ui} | ⇧⌘I | Ouvre un sélecteur de fichiers pour tout fichier importable |
| [Import Interest Archive…]{.ui} | — | Le même sélecteur de fichiers, sous le nom que tu pourrais chercher |
| [Export Interest…]{.ui} | ⇧⌘E | Exporte le centre d’intérêt sélectionné sous forme d’archive |
| [Export Statistics…]{.ui} | — | Exporte les statistiques du centre d’intérêt sélectionné |

Les deux commandes d’import ouvrent le même sélecteur. JustFlip! déduit
le format du fichier lui-même : peu importe donc celle que tu choisis. Le
reste de la barre des menus (À propos, Masquer, Quitter, Édition,
Fenêtre, Aide) est la barre des menus standard du Mac.

::: gotcha
#### L’export a besoin d’un centre d’intérêt sélectionné

[Export Interest…]{.ui} et [Export Statistics…]{.ui} agissent sur le
centre d’intérêt sélectionné dans la barre latérale. Si aucun centre
d’intérêt n’est sélectionné, elles ne font strictement rien : pas
d’erreur, pas de boîte de dialogue. Clique d’abord sur un centre
d’intérêt, puis choisis la commande.
:::

::: note
#### Les noms de menu sont en anglais

Pour l’instant, les quatre commandes du menu Fichier ci-dessus sont en
anglais, quelle que soit la langue de l’app. Tout le reste de JustFlip!
suit ta langue.
:::

Quelques points fonctionnent différemment des autres apps Mac :

- **Il n’y a pas de ⌘, pour les Réglages.** Ouvre les Réglages depuis le
  bouton en forme de roue dentée en haut de la colonne Centres
  d’intérêt, puis choisis [Réglages]{.ui}.
- **Il n’y a pas de ⌘F.** Pour chercher dans toutes tes cartes, utilise
  le bouton loupe en haut de la colonne Centres d’intérêt.
- **Aucune touche ne lance une révision.** Clique sur un bouton de
  révision pour commencer, puis utilise le clavier pour le reste.

Le glisser-déposer depuis le Finder fonctionne comme sur iPad : dépose
un fichier de paquet n’importe où dans la fenêtre pour l’importer.

## Raccourcis clavier {#keyboard .cheatsheet}

Les raccourcis de révision fonctionnent sur Mac et sur un iPad avec
clavier physique. Ils sont pensés pour une seule main : retourne avec la
barre d’espace, note avec les touches numériques, et ne touche jamais au
pointeur.

| Touche | Action | Où elle fonctionne |
|---|---|---|
| Espace | Retourner la carte | Pendant une révision |
| Espace | Révéler la zone masquée | Pendant la révision d’une occlusion d’image |
| 1 | Noter **À revoir** | Pendant une révision |
| 2 | Noter **Difficile** | Pendant une révision |
| 3 | Noter **Bien** | Pendant une révision |
| 4 | Noter **Facile** | Pendant une révision |
| Retour | Vérifier la réponse saisie | Pendant une révision avec [Saisir les réponses]{.ui} activé |
| ⇧⌘I | [Import Cards…]{.ui} | Mac, partout (menu Fichier) |
| ⇧⌘E | [Export Interest…]{.ui} | Mac, avec un centre d’intérêt sélectionné (menu Fichier) |


Les touches numériques sont de simples chiffres, pas ⌘ + chiffre. La
notation tient ainsi en une seule touche.

::: gotcha
#### Trois raisons pour lesquelles une touche ne fait rien

Chacune est voulue, et chacune ressemble à un bug quand on ne la connaît
pas :

1. **Tu es en train de saisir une réponse.** Tant que le champ
   [Saisissez votre réponse]{.ui} est actif, Espace et 1 à 4 tapent des
   caractères. Sinon, taper « 3 » noterait la carte Bien. Retour vérifie
   toujours la réponse.
2. **Tu as activé Évaluation plus stricte.** Avec **Réglages ›
   Comportement › Évaluation plus stricte** activé, retourner la carte
   retire les boutons Bien et Facile, et les touches 3 et 4 avec eux.
   C’est désactivé par défaut.
3. **La réponse de l’occlusion est encore masquée.** Sur une carte à
   occlusion d’image, les touches de notation ne fonctionnent qu’une fois
   la réponse révélée avec Espace.
:::

## Apple Watch {#watch}

L’app pour la montre est un petit compagnon concentré sur l’essentiel.
Elle indique combien de cartes sont à réviser et te permet de les
réviser au poignet. Pratique dans une file d’attente, en promenade, ou
partout où tu ne peux pas sortir ton téléphone.

:::: split
![L’écran Aujourd’hui de la montre : les cartes à réviser, ta série, le bouton Réviser et une ligne par centre d’intérêt.](images/manual/{lang}/08-watch-today.jpg){.phone}

::: text
L’écran Aujourd’hui de la montre affiche :

- le nombre de **cartes à réviser**,
- ta **série**, si tu en as une,
- le bouton [Réviser]{.ui},
- jusqu’à quatre de tes centres d’intérêt, chacun avec son nombre de
  cartes à réviser.

La première fois que tu l’ouvres, la montre n’a encore rien à afficher.
Elle te demande : [Ouvrez JustFlip sur votre iPhone pour synchroniser
vos cartes.]{.ui} Ouvre l’app iPhone une fois, et la montre se remplit.
:::
::::

### Réviser au poignet

1. Touche [Réviser]{.ui}.
2. Lis la question. Touche la carte, ou [Voir la réponse]{.ui}, pour la
   retourner.
3. **Maintiens le doigt sur la carte** pour la noter. Les quatre notes
   apparaissent en grille, avec les mêmes couleurs et symboles que sur
   ton iPhone : À revoir, Difficile, Bien et Facile. Choisis-en une, et
   la carte suivante arrive toute seule.
4. Quand la file est terminée, la montre affiche [Beau travail]{.ui} et
   t’indique combien de cartes tu as révisées.

Pourquoi maintenir le doigt plutôt que quatre boutons ? L’écran de la
montre est petit. Quatre boutons pousseraient la réponse — justement ce
que tu évalues — hors de l’écran. Maintenir la carte garde tout
l’affichage pour la carte elle-même. La première carte de ta première
session explique le geste une fois, puis une petite indication
[Maintenez pour noter]{.ui} reste sous la carte. Tu peux aussi noter une
carte depuis le côté question, quand tu la connais au premier coup
d’œil.

![Noter une carte sur l’Apple Watch : maintiens le doigt sur la carte, puis choisis une note.](images/manual/{lang}/08-watch-rating.jpg){.shot width=40%}

### Ce qu’affiche la montre

L’iPhone prépare chaque carte pour la montre, afin qu’elle ait le même
aspect que sur le téléphone : gras, italique et code, formules, photos et
diagrammes, réduits à la taille de ton poignet.

- **Les cartes à trous** fonctionnent. Les trous s’affichent sous la
  forme [[…]]{.blank}, ou de l’indice si tu en as donné un. Le verso
  affiche la phrase avec les trous remplis, plus les éventuelles notes du
  côté réponse.
- **Les drapeaux** apparaissent sous forme d’une couleur douce derrière
  le nom du paquet en haut de la carte. Tu les vois sur la montre, mais
  tu les règles sur l’iPhone.
- **Le code et les tableaux** s’affichent dans une police simple à chasse
  fixe, sans coloration syntaxique.

### Ce que la montre laisse sur ton iPhone

Certaines cartes ne tiennent pas sur un poignet : JustFlip! ne les envoie
donc pas du tout à la montre. Mieux vaut cela qu’afficher une carte
privée de la partie sur laquelle elle t’interroge. Ces cartes restent sur
ton iPhone :

- les cartes avec de l’**audio** ou un **PDF** sur l’un des côtés,
- les **suivis de progression**, que tu notes avec un curseur et non
  avec quatre boutons,
- les cartes de plus de **280 caractères** sur l’un des côtés,
- les cartes dont la photo ou le diagramme est trop lourd à envoyer, ou
  trop détaillé pour être lu à la taille d’un poignet.

La montre emporte aussi au plus **60 cartes** à la fois. Chaque fois que
des cartes restent en arrière, l’écran Aujourd’hui le signale, par
exemple « 12 cartes nécessitent votre iPhone ». Si aucune de tes cartes à
réviser ne peut l’être sur la montre, tu verras [Révisez sur votre
iPhone]{.ui} à la place du bouton Réviser.

### Ton iPhone tient le planning

La montre ne planifie rien elle-même. Ton **iPhone** est le seul appareil
qui décide quand chaque carte revient. La montre garde une copie des
cartes que ton iPhone lui a envoyées en dernier et une liste des notes
que tu as données. Elle renvoie ces notes à ton iPhone, qui met à jour le
planning. Ton iPhone se synchronise ensuite avec iCloud, et tes autres
appareils suivent.

Au quotidien, tu ne remarqueras rien de tout cela : avec ton iPhone à
proximité, une note lui parvient en quelques secondes. Tu le remarqueras
quand les deux sont éloignés.

::: gotcha
#### Les notes attendent ton iPhone

Révise sur la montre avec ton iPhone hors de portée, et les notes
attendent sur la montre. L’écran Aujourd’hui les affiche, par exemple
« 3 en cours de synchronisation vers l’iPhone », jusqu’à ce que ton
iPhone les reçoive. Rien n’est perdu. Les notes sont transmises quand les
deux se reconnectent, et chacune n’est appliquée qu’une seule fois.

D’ici là, l’iPhone, le widget et tes autres appareils affichent toujours
ces cartes comme à réviser. Le prochain intervalle compte aussi à partir
du moment où ton iPhone reçoit la note, pas du moment où tu l’as donnée.
Après une longue révision loin de ton téléphone, certaines cartes peuvent
revenir quelques heures plus tard que d’habitude.
:::

L’app pour la montre n’existe qu’en thème sombre, comme la plupart des
apps pour Apple Watch.

## Le widget de l’écran d’accueil {#widget}

Le widget **Cartes à réviser** te montre ce qui t’attend sans ouvrir
l’app. Touche-le et JustFlip! s’ouvre directement sur la révision du
jour.

![Le widget Cartes à réviser sur l’écran verrouillé (à gauche) et, en taille moyenne, sur l’écran d’accueil (à droite).](images/manual/{lang}/08-widget-sizes.jpg){.shot width=80%}

Il existe en trois tailles pour l’écran d’accueil et trois pour l’écran
verrouillé :

| Taille | Affiche |
|---|---|
| Petite | Le nombre de cartes à réviser, ta série, et les sept derniers jours de révisions sous forme de petites barres vertes |
| Moyenne | Le même nombre, la répartition entre cartes à réviser et nouvelles, et une frise : les jours récents en vert, les jours à venir en doré |
| Grande | Tout ce qui précède, ta meilleure série, et une frise plus complète sur deux semaines |
| Écran verrouillé, circulaire | Le nombre de cartes à réviser, ou une coche |
| Écran verrouillé, rectangulaire | Les cartes à réviser et nouvelles, et ta série |
| Écran verrouillé, en ligne | Un résumé d’une ligne à côté de l’heure |

Quand il n’y a plus rien à faire, le widget affiche [Tout est à
jour]{.ui} et t’indique quand les prochaines cartes arrivent, par exemple
« Prochaine demain · 12 ».

Pour l’ajouter :

1. Touche un espace vide de ton écran d’accueil et maintiens le doigt
   jusqu’à ce que les apps se mettent à trembler.
2. Touche **Modifier**, puis **Ajouter un widget**.
3. Cherche **JustFlip**, choisis **Cartes à réviser**, balaie jusqu’à la
   taille souhaitée, et touche **Ajouter le widget**.

Pour l’écran verrouillé, maintiens le doigt sur l’écran verrouillé,
touche **Personnaliser**, choisis l’écran verrouillé, et ajoute Cartes à
réviser depuis la liste des widgets.

::: gotcha
#### Le widget montre ce que cet appareil a vu en dernier

Le widget ne lit pas directement ta bibliothèque. Il affiche un résumé
que l’app enregistre sur cet appareil chaque fois que tu l’ouvres, que tu
la quittes ou que tu termines une révision. Le widget se met à jour tout
seul à minuit et quand les prochaines cartes arrivent à échéance. Mais
si tu révises sur ton iPad ou ton Mac, le widget de l’iPhone ne se met à
jour que la prochaine fois que tu ouvres JustFlip! sur l’iPhone.
:::

Le widget est disponible sur iPhone et iPad. Il utilise le doré de
JustFlip! quel que soit le thème choisi dans l’app, et suit le réglage
clair ou sombre de ton appareil.

## Siri et Raccourcis {#siri}

JustFlip! offre deux actions à Siri et à l’app Raccourcis. Tu n’as rien à
configurer : elles sont disponibles dès que tu as ouvert l’app une fois.

| Action | Ce qui se passe | Ouvre l’app ? |
|---|---|---|
| **Combien de cartes à réviser** | Siri te dit combien de cartes sont à réviser et combien de nouvelles cartes sont prêtes | Non |
| **Commencer la révision** | JustFlip! s’ouvre et lance la révision du jour | Oui |

En français, tu peux dire :

- « Combien de cartes à réviser dans JustFlip »
- « Qu’y a-t-il à réviser dans JustFlip »
- « Cartes à réviser dans JustFlip »
- « Commencer une révision dans JustFlip »
- « Réviser mes cartes dans JustFlip »
- « Étudier avec JustFlip »

Une réponse typique est « Vous avez 14 cartes à réviser. » ou « Rien à
réviser, mais 5 nouvelles cartes sont prêtes. » Quand tout est fait, Siri
te dit que tout est à jour.

Les deux actions apparaissent aussi dans l’app **Raccourcis**. Cherches-y
JustFlip pour en ajouter une à un raccourci de ta création, ou pour la
placer sur ton écran d’accueil.

::: gotcha
#### Les phrases Siri ont besoin d’une langue prise en charge par Siri

Les phrases parlées fonctionnent en anglais, allemand, espagnol,
français, italien, japonais, coréen et portugais du Brésil. Siri ne prend
pas en charge le tchèque : le tchèque n’a donc pas de phrases. Sur un
appareil en tchèque, tu peux quand même lancer les deux actions depuis
l’app Raccourcis, et la réponse est en tchèque.
:::

::: note
#### Le nombre vient du résumé du widget

« Combien de cartes à réviser » répond instantanément, sans ouvrir l’app.
L’action lit le même résumé enregistré que le widget, et la même règle
s’applique donc : elle sait ce que cet appareil savait la dernière fois
que tu as utilisé JustFlip! dessus.
:::

## Spotlight {#spotlight}

JustFlip! ajoute tes cartes à Spotlight, la recherche de ton appareil.
Balaie vers le bas sur l’écran d’accueil, tape quelques lettres d’une
question, et la carte apparaît sous JustFlip!. Touche-la, et JustFlip!
ouvre le paquet de cette carte, fait défiler jusqu’à elle et l’entoure un
instant d’un anneau.

Spotlight cherche dans :

- la **question** et la **réponse** de la carte,
- ses **tags**,
- les noms du **paquet** et du **centre d’intérêt**.

Une carte composée d’une seule image, sans texte, est retrouvée grâce à
la **description** de son image. Une raison de plus d’en écrire une
(chapitre 11).

::: note
#### Spotlight cherche le début des mots

Spotlight cherche les mots qui *commencent* par ce que tu tapes.
« photo » trouve « photosynthèse », mais « synthèse » non. La recherche
ignore la casse et les accents, mais pas les fautes de frappe. Pour
trouver un mot au milieu d’un autre, utilise plutôt la recherche de
l’app : la loupe de l’écran Centres d’intérêt, [Rechercher des
cartes]{.ui}, trouve le texte n’importe où.
:::

### Tenir des paquets à l’écart de la recherche

Au départ, tout est consultable dans la recherche. Pour tenir un centre
d’intérêt ou un paquet à l’écart de Spotlight, désactive [Inclure dans la
recherche de l’appareil]{.ui} :

- **Pour un centre d’intérêt :** maintiens le doigt sur le centre
  d’intérêt (ou clic droit sur Mac), choisis [Modifier l’intérêt]{.ui}
  et désactive l’interrupteur. Tous les paquets de ce centre d’intérêt
  disparaissent de la recherche.
- **Pour un seul paquet :** maintiens le doigt sur le paquet, choisis
  [Modifier le paquet]{.ui} et désactive l’interrupteur. Les autres
  paquets de ce centre d’intérêt restent consultables.

Le même interrupteur apparaît quand tu crées un centre d’intérêt ou un
paquet, et quand un import crée un nouveau centre d’intérêt. Quand tu
importes dans un centre d’intérêt existant, les nouvelles cartes suivent
le réglage de ce centre d’intérêt.

::: gotcha
#### L’interrupteur du centre d’intérêt l’emporte

Une carte n’apparaît dans Spotlight que si **son centre d’intérêt et son
paquet** sont tous deux inclus. Désactive le centre d’intérêt, et aucun
de ses paquets n’apparaît, quel que soit leur propre interrupteur. Il
n’y a pas d’interrupteur par carte. Pour garder quelques cartes privées,
déplace-les dans un paquet à part et désactive ce paquet.
:::

L’index reste sur cet appareil. Rien n’en sort, et l’interrupteur n’est
pas inclus quand tu exportes ou partages un paquet : la personne qui
reçoit le paquet décide elle-même.

## Nouveautés {#whats-new}

Après une mise à jour qui apporte de nouvelles fonctionnalités, un bouton
doré [Nouveautés]{.ui} apparaît dans le coin inférieur de l’écran
principal. Il reste environ cinq secondes (quinze avec VoiceOver, qui
l’annonce aussi), puis s’efface. Touche-le pour ouvrir la feuille
**Nouveautés**, qui liste ce qui a changé dans chaque version.

Tu vois ce bouton une fois par version apportant des fonctionnalités,
que tu le touches ou non. Les mises à jour correctives ne l’affichent
pas, pas plus qu’une nouvelle installation. Tu n’as encore rien manqué.

Tu l’as raté ? La feuille est toujours à portée de doigt : touche le
bouton en forme de roue dentée en haut de l’écran Centres d’intérêt et
choisis [Nouveautés]{.ui}.

La feuille charge la page Nouveautés de just-flip.app, dans la langue de
ton app : elle a donc besoin d’une connexion Internet. Hors ligne, elle
affiche [Impossible de charger les nouveautés]{.ui} et propose
[Réessayer]{.ui} et [Ouvrir dans le navigateur]{.ui}. Tu peux aussi lire
la même page à tout moment sur https://just-flip.app/news/.
