---
slug: accessibility-themes
number: 11
title: Accessibilité et thèmes
description: "Comment JustFlip! fonctionne avec VoiceOver, le texte plus grand, Réduire les animations, Augmenter le contraste et Contrôle vocal, comment choisir un thème et une taille de texte, et comment écrire des cartes dont tout le monde peut profiter."
---

# Accessibilité et thèmes {#accessibility-themes number="11"}

::: lede
JustFlip! s’appuie sur les réglages d’accessibilité que tu utilises déjà
sur ton iPhone, ton iPad et ton Mac. Tu n’as rien à activer dans l’app.
VoiceOver, le texte plus grand, Réduire les animations et Augmenter le
contraste fonctionnent, tout simplement. En plus, JustFlip! a sa propre
taille de texte et cinq thèmes, pour que l’app se lise confortablement et
ait l’allure que tu aimes.
:::

::: inthischapter
- Voir quels réglages système JustFlip! suit, et ce que chacun change
- Réviser avec VoiceOver : retourner, noter et entendre les trous des cartes à trous
- Régler la taille du texte, pour tout l’appareil ou pour JustFlip! seul
- Choisir un thème : JustFlip clair, JustFlip sombre, Brume, Brume sombre ou Système
- Écrire des cartes qui fonctionnent pour chacun, quels que soient ses yeux et ses oreilles
:::

## L’app suit tes réglages {#system-settings}

JustFlip! n’a pas de mode accessibilité à activer. L’app lit les réglages
de **Réglages › Accessibilité** sur ton appareil et s’y adapte. Voici ce
que chacun change :

| Réglage système | Ce que fait JustFlip! |
|---|---|
| VoiceOver | Lit chaque carte, chaque bouton et chaque graphique, avec des actions nommées pour retourner et noter |
| Police plus grande | Agrandit le texte de l’app, y compris celui de tes cartes |
| Texte en gras | Affiche le texte de l’app dans une graisse plus forte |
| Réduire les animations | Empêche la carte de tourner quand elle se retourne, et calme les autres animations |
| Augmenter le contraste | Passe à des couleurs plus contrastées et ajoute des contours là où la couleur seule ne suffit pas |
| Différencier sans couleur | Ajoute des symboles, des points et des contours aux indicateurs qui, sinon, n’utilisent que la couleur |
| Contrôle vocal | Chaque bouton répond à son nom visible, et la carte à quelques expressions supplémentaires |

Le seul réglage d’accessibilité propre à l’app est ta **taille de
texte**, sous **Réglages › Apparence**. Tu en sauras plus dans [Texte
plus grand](#larger-text).

::: note
#### Notre rapport d’accessibilité public

Nous tenons un rapport honnête et détaillé de ce qui est implémenté et de
ce qui est encore en test, appareil par appareil, sur
https://just-flip.app/accessibility/. Les étiquettes d’accessibilité
d’Apple sur l’App Store sont publiées une catégorie à la fois, seulement
une fois que cette catégorie a passé les tests sur de vrais appareils.
:::

## VoiceOver {#voiceover}

VoiceOver lit JustFlip! comme il lit les apps d’Apple. Les listes, les
formulaires et les Réglages utilisent des commandes standard, et les
éléments regroupés, comme une ligne de paquet ou une statistique, sont
lus comme un seul élément plutôt qu’en une suite de fragments.

### Cartes et révisions

Une carte est **un seul élément** pour VoiceOver. Il lit le côté que tu
regardes, et une indication te dit de toucher deux fois pour la
retourner. Après le retournement, VoiceOver annonce « Question » ou
« Réponse » : tu sais toujours de quel côté tu te trouves.

Sur une carte, balaie vers le haut ou vers le bas pour accéder à ses
actions :

- [Retourner la carte]{.ui} retourne la carte.
- [Afficher tout le contenu]{.ui} ouvre une carte trop longue pour tenir,
  dans une feuille où tu peux tout lire.
- [Afficher l’image en plein écran]{.ui} ou [Afficher le diagramme en
  plein écran]{.ui} ouvre une image ou un diagramme en grand, où tu peux
  zoomer.

Les boutons de notation sont lus avec la note d’abord et les détails
ensuite : la note, puis quand la carte reviendrait, puis combien de fois
tu as choisi cette note pendant la session. Après chaque note, VoiceOver
te dit où tu en es, par exemple « Carte 4 sur 20 », et il annonce
[Pratique terminée]{.ui} à la fin de la session.

:::: pair
```markdown
La capitale de la France
est {{c1::Paris}}.
```

::: {.card side="question" spoken="La capitale de la France est espace vide."}
La capitale de la France est [[…]]{.blank}.
:::
::::

**Les trous ne sont jamais dévoilés.** Côté question, VoiceOver dit
« espace vide » là où se trouvent les mots masqués, ou lit l’indice si le
trou en a un. La réponse ne vient qu’après le retournement.

VoiceOver lit le reste de la carte comme le fait la voix de JustFlip! :

- **Les indices parlés** sont utilisés. `[iOS]{aïe o èsse}` est lu
  « aïe o èsse » (chapitre 3).
- **Les formules** sont lues à partir de leur indice parlé, ou de leur
  source TeX quand il n’y a pas d’indice.
- **Les diagrammes** sont lus par leurs libellés, pas par leurs flèches.
- **Les tableaux** sont lus ligne par ligne, cellule par cellule.
- **Les images** sont lues à partir de leur description (voir [Écrire
  des cartes accessibles](#accessible-cards)). Une image sans
  description est lue simplement « Image ».
- **Les drapeaux** sont lus par leur nom, par exemple « Drapeau rouge ».

### Listes et actions

Les menus accessibles par appui prolongé ont aussi des actions
VoiceOver : tu n’as pas besoin du geste. Sur la ligne d’un centre
d’intérêt, balaie vers le haut ou vers le bas pour [Modifier
l’intérêt]{.ui}, [Importer des cartes]{.ui}, [Exporter l'archive]{.ui},
[Exporter les statistiques]{.ui} et [Supprimer]{.ui}. La ligne d’un
paquet propose [Modifier le paquet]{.ui} et [Supprimer le paquet]{.ui}.
Dans le champ des tags, VoiceOver confirme chaque tag que tu ajoutes ou
retires.

Dans les Statistiques, les graphiques peuvent être explorés point par
point : chaque point est lu avec sa date et sa valeur.

Sur une carte à occlusion d’image, l’image propose les actions [Zoom
avant]{.ui}, [Zoom arrière]{.ui} et [Réinitialiser le zoom]{.ui}, à la
place du pincement.

### Sur l’Apple Watch

La montre lit chaque carte sous la forme « Question » ou « Réponse »
suivi de son texte. Noter une carte sur la montre se fait normalement en
maintenant le doigt dessus (chapitre 8). VoiceOver ne peut pas maintenir
le doigt : les quatre notes sont donc aussi proposées comme actions sur
la carte. Balaie vers le haut ou vers le bas pour choisir À revoir,
Difficile, Bien ou Facile.

## Texte plus grand {#larger-text}

Par défaut, JustFlip! utilise la taille de texte réglée pour tout ton
appareil dans **Réglages › Accessibilité › Affichage et taille du texte ›
Police plus grande**. Les boutons, les listes, les statistiques et le
texte de tes cartes grandissent tous avec elle.

Tu peux aussi donner à JustFlip! sa propre taille, indépendante du reste
de l’appareil. Va dans **Réglages › Apparence** :

![La section Apparence des Réglages : le menu des thèmes, l’interrupteur Suivre la taille du texte du système et le curseur Taille du texte avec son aperçu.](images/manual/{lang}/11-appearance-settings.jpg){.phone}

- [Suivre la taille du texte du système]{.ui} est activé par défaut.
  JustFlip! utilise alors la taille de l’appareil.
- Le curseur [Taille du texte]{.ui} choisit la taille pour JustFlip!
  seul. Le déplacer désactive [Suivre la taille du texte du
  système]{.ui} pour toi. La ligne en dessous, « Voici à quoi ressemblent
  les listes et les boutons. », montre la taille que tu choisis.

Le curseur compte dix crans, de la plus petite taille système jusqu’à la
troisième taille d’accessibilité. Les deux plus grandes tailles, que tu
peux régler dans iOS, fonctionnent toujours dans JustFlip! quand elles
viennent du réglage de ton appareil. Le curseur ne les propose
simplement pas. À ces tailles, la plupart des cartes ne tiennent plus sur
la carte, et tu ouvrirais presque chacune dans une feuille à part.

La dernière étape de la visite de bienvenue propose le même curseur, pour
que tu puisses choisir une taille confortable avant ta première
révision.

::: gotcha
#### Le grand texte ne rétrécit pas pour tenir

À la taille par défaut, JustFlip! rétrécit légèrement une longue carte
pour qu’elle tienne (chapitre 3). Avec une taille de texte plus grande,
il ne le fait pas. Ta carte s’affiche exactement à la taille demandée. Ce
qui ne tient pas s’estompe en bas, et le bouton **•••** (ou l’action
VoiceOver [Afficher tout le contenu]{.ui}) ouvre le reste. Si cela arrive
sur la plupart de tes cartes, découpe-les en cartes plus courtes. C’est
de toute façon bon pour ta mémoire.
:::

::: note
#### Ce qui est encore en chantier

La prise en charge du texte plus grand est presque complète, mais elle
n’a pas encore été testée sur appareil à toutes les tailles. La seule
lacune connue : aux toutes plus grandes tailles, le titre et les boutons
de notation autour de la carte, sur l’écran de révision, peuvent manquer
de place. La carte elle-même s’affiche bien. Si tu as besoin des plus
grandes tailles, régler la taille de texte propre à JustFlip! un ou deux
crans plus bas garde l’écran de révision bien rangé.
:::
<!-- VERIFY: Readiness doc (2026-07-19) says "at AX3 and above the Review/Testing chrome (screen title, response buttons) overflows the screen with nothing to scroll". Confirm this is still open before publishing. -->

## Mouvement, graisse et contraste {#visual}

### Réduire les animations

Avec **Réduire les animations** activé, la carte ne tourne plus en 3D
quand tu la retournes. Elle change de côté sur place, un peu plus vite.
Les autres mouvements de l’app sont calmés aussi : les cartes qui
s’envolent après une note, le scintillement des listes en chargement, les
illustrations de la visite de bienvenue, le remplissage des barres de
progression et les résultats de révision.

### Texte en gras

**Texte en gras** rend le texte de l’app plus épais, comme partout
ailleurs sur ton appareil. Un texte plus épais prend plus de place :
JustFlip! en tient donc compte quand il calcule si une carte tient.
<!-- VERIFY: card body text is drawn by CardMarkupView from an explicit UIFont; confirm Bold Text actually thickens card question/answer text, not only system-styled UI text. -->

### Augmenter le contraste

Avec **Augmenter le contraste** activé, JustFlip! passe à des versions
plus contrastées de ses couleurs, en clair comme en sombre. À quelques
endroits, des contours prennent le relais de la couleur seule :

- le **drapeau** d’une carte reçoit un contour autour de sa couleur,
- sur une carte à **occlusion d’image**, la zone sur laquelle tu es
  interrogé est davantage mise en évidence,
- les **diagrammes**, sur la carte et en plein écran, utilisent eux aussi
  les couleurs plus contrastées.

Chaque paire de couleurs utilisée pour du texte est mesurée par rapport à
son arrière-plan en clair, en sombre et dans les deux apparences
Augmenter le contraste, et chacune dépasse un rapport de contraste de
4,5:1.

### Différencier sans couleur

Quand **Différencier sans couleur** est activé, les petits indicateurs
qui utilisent la couleur reçoivent aussi une forme :

- les petits indicateurs qui montrent l’urgence d’une carte et la
  dernière note que tu lui as donnée passent à des symboles distincts,
- la carte de chaleur d’activité des Statistiques ajoute un, deux ou
  trois points pour une activité faible, moyenne ou forte, et entoure la
  case d’aujourd’hui,
- les zones d’occlusion d’image sont davantage mises en évidence, comme
  avec Augmenter le contraste.

Certaines choses ne reposent jamais sur la couleur, quels que soient tes
réglages : les boutons de notation portent toujours un libellé et un
symbole, et le drapeau sélectionné dans le sélecteur de drapeaux est
marqué d’un anneau et d’une coche.

## Contrôle vocal et claviers {#voice-control}

**Contrôle vocal** utilise les noms affichés à l’écran : « Toucher À
revoir », « Toucher Bien » ou « Toucher Réglages » fonctionnent comme
prévu. Quelques commandes répondent à des expressions supplémentaires :

| Dis | Effet |
|---|---|
| « Toucher Retourner la carte », « Toucher Afficher l’autre côté » ou « Toucher Retourner » | Retourne la carte |
| « Toucher Reporter » ou « Toucher Répéter » | Ouvre le menu de report pendant une révision |

Contrôle vocal n’a pas encore été testé de bout en bout sur tous les
appareils. Les curseurs et les menus par appui prolongé sont les parties
les moins testées. Si un nom ne fonctionne pas à ces endroits,
« Afficher les numéros » fonctionne toujours.

**Au clavier**, une révision n’a besoin d’aucun pointeur : Espace
retourne la carte et les touches 1 à 4 la notent, sur Mac et sur un iPad
avec clavier physique. La liste complète se trouve au chapitre 8.
JustFlip! utilise partout des boutons, menus et interrupteurs standard,
mais l’**Accès complet au clavier** n’a pas encore été testé de bout en
bout.

## Thèmes {#themes}

Un thème est la palette de couleurs dans laquelle toute l’app est
dessinée. Choisis-en un sous **Réglages › Apparence › Thème**. Le menu
affiche un petit échantillon du thème actuel :

| Thème | Son allure |
|---|---|
| [Système]{.ui} | La palette dorée de JustFlip!, claire ou sombre selon ton appareil. Par défaut. |
| [JustFlip clair]{.ui} | La palette dorée, toujours claire, quel que soit le réglage de ton appareil |
| [JustFlip sombre]{.ui} | La palette dorée, toujours sombre |
| [Brume]{.ui} | Une palette claire, calme et minérale, avec un bleu eau claire, du genévrier et de la sauge |
| [Brume sombre]{.ui} | Brume sur des surfaces couleur d’encre profonde |

![Les cinq thèmes côte à côte : Système, JustFlip clair, JustFlip sombre, Brume et Brume sombre.](images/manual/{lang}/11-theme-swatches.jpg){.shot width=80%}

Le changement est instantané : toute l’app se redessine dès que tu
choisis un thème, sans redémarrage. Chaque thème intègre déjà le clair ou
le sombre : il n’y a donc pas d’interrupteur clair/sombre séparé. Pour
suivre le mode sombre de l’appareil, choisis [Système]{.ui}.

::: note
#### Là où les thèmes ne vont pas

Le thème concerne l’app elle-même. Le widget de l’écran d’accueil garde
le doré de JustFlip! et suit le réglage clair ou sombre de l’appareil.
L’app pour Apple Watch est toujours sombre. Les images de tes cartes
s’affichent exactement telles qu’elles sont, dans tous les thèmes.
:::

::: gotcha
#### Un thème fixe ignore le mode sombre

[JustFlip clair]{.ui} et [Brume]{.ui} restent clairs même quand ton
appareil passe en mode sombre au coucher du soleil, et les deux thèmes
sombres restent sombres en plein jour. Si JustFlip! ne suit pas ton mode
sombre, vérifie **Réglages › Apparence › Thème**. Seul [Système]{.ui} le
suit.
:::

## Écrire des cartes accessibles {#accessible-cards}

L’app ne peut lire que ce qui se trouve sur tes cartes. Ces habitudes
rendent un paquet utilisable par tous ceux qui s’en servent, toi compris,
quand tu l’écoutes avec Lire les cartes en promenade.

1. **Décris chaque image.** Quand un côté a une image, l’éditeur affiche
   un champ [Description de l’image]{.ui} (« Décrivez l’image
   (facultatif) »). VoiceOver le lit à la place de l’image. Décris ce que
   montre l’image : « Un petit oiseau brun à la poitrine rouge sur un
   piquet de clôture » en dit bien plus que « photo d’oiseau ». Sur une
   carte « Quel est cet oiseau ? », omets le nom, sinon la description
   donne la réponse (chapitre 4). La description rend aussi une carte
   composée d’une seule image trouvable dans Spotlight (chapitre 8). Et
   elle voyage avec le paquet quand tu l’exportes et le partages.
2. **Règle la langue de chaque côté.** Le sélecteur [Langue]{.ui} décide
   quelle voix lit le côté à voix haute avec le bouton haut-parleur et
   avec Lire les cartes (chapitre 7). Un côté sans langue n’est jamais lu
   par la voix de JustFlip!.
3. **Ajoute des indices parlés là où la lecture se trompe.** Un indice
   comme `$c^2${c au carré}` corrige à la fois ce que dit la voix de
   JustFlip! *et* ce que lit VoiceOver, d’un seul coup.
4. **Donne un indice aux trous quand le contexte est mince.** Avec un
   indice, VoiceOver et la voix lisent l’indice au lieu de simplement
   « espace vide ».
5. **Ne laisse pas la couleur porter le sens.** Les drapeaux sont lus
   par leur nom, mais ce que *signifie* chaque couleur ne dépend que de
   toi. Si « rouge » veut dire « examen la semaine prochaine », mets-le
   aussi dans un tag. Les tags sont du texte : ils peuvent être lus et
   recherchés.
6. **Soigne les libellés de tes diagrammes.** Un diagramme est lu par
   ses libellés : « Démarrer la révision → Carte à réviser ? » en dit
   plus que « A → B ».
7. **Garde des cartes courtes.** Une carte courte tient aux grandes
   tailles de texte et sur l’Apple Watch, et elle est aussi plus facile
   à retenir.

::: gotcha
#### La langue est pour la voix, pas pour VoiceOver

Le sélecteur [Langue]{.ui} contrôle la voix propre à JustFlip! : le
bouton haut-parleur et Lire les cartes. VoiceOver lit les cartes avec la
voix réglée dans les propres réglages de VoiceOver. Pour une carte dans
une autre langue, le bouton haut-parleur de la carte est le moyen le plus
fiable de l’entendre correctement prononcée.
:::
<!-- VERIFY: CardMarkupView sets accessibilityLabel from speech text with no accessibilityLanguage / speech-language attribute (grep found none). Confirm on device that VoiceOver does not switch to the card's language. -->
