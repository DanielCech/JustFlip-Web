---
slug: reference
number: 12
title: Référence
description: "La référence de JustFlip! : un tableau de dépannage pour chaque chapitre, un glossaire des termes de l’app, ce que comprennent les versions gratuite et Pro, les formats de fichiers et les raccourcis clavier."
---

# Référence {#reference number="12"}

::: lede
Tout ce que tu pourrais avoir besoin de vérifier en vitesse : que faire
quand quelque chose cloche, ce que signifie un mot, ce qu’ajoute Pro, et
à quoi sert chaque fichier. Chaque entrée renvoie au chapitre qui
l’explique en détail.
:::

::: inthischapter
- Régler les surprises les plus courantes grâce au tableau de dépannage
- Chercher n’importe quel terme dans le glossaire
- Voir d’un coup d’œil ce qui est gratuit et ce qu’ajoute Pro
- Distinguer les formats de fichiers
- Trouver les raccourcis clavier et l’aide-mémoire du balisage
:::

## Dépannage {#troubleshooting}

### Cartes et révisions

| Ce que tu vois | Que faire | Chapitre |
|---|---|---|
| Une carte n’est jamais lue à voix haute | Règle la [Langue]{.ui} du côté ; un côté réglé sur Aucune n’est jamais lu | 3, 7 |
| Une langue est réglée, mais il n’y a pas de bouton Lire | Télécharge une voix dans **Réglages › Accessibilité › Lire et énoncer › Voix** d’iOS | 7 |
| La carte affiche des accolades `{…}` | Un indice parlé ne fonctionne qu’après des crochets, des maths ou une image ; entoure le texte de `[…]` | 3 |
| Bien et Facile disparaissent après le retournement | **Réglages › Comportement › Évaluation plus stricte** est activé ; désactive-le, ou note avant de retourner | 2 |
| [Cartes à réviser]{.ui} ne trouve rien dans un nouveau paquet | Les cartes jamais étudiées ne sont pas encore à réviser ; utilise Aujourd’hui, [Nouvelles cartes]{.ui} ou [Toutes les cartes]{.ui} | 2 |
| Une carte notée À revoir n’est pas revenue dans la même session | C’est voulu : elle est à réviser dans 5 minutes et revient à ta prochaine session | 6 |
| Déplacer un curseur de priorité n’a pas changé le nombre de cartes à réviser | C’est voulu : la priorité ne change que l’ordre d’une session plafonnée | 6 |
| Un paquet reporté manque toujours | Écran Paquets › [Options du paquet]{.ui} › [Priorité de révision]{.ui} › Reprendre | 6 |
| Une carte reportée seule ne peut pas être reprise | Elle expire à sa date ; ou reporte-la de nouveau à Demain depuis [Toutes les cartes]{.ui} | 6 |
| Les touches 1 à 4 ou Espace ne font rien | Tu saisis une réponse, Évaluation plus stricte est activé, ou la réponse d’une occlusion n’est pas encore révélée | 8 |
| Les longues cartes s’ouvrent toujours dans une feuille | Aux grandes tailles de texte, les cartes ne rétrécissent pas ; découpe-les, ou baisse la taille de texte de JustFlip! | 11 |
| Aucun rappel n’arrive | Active **Réglages › Rappels › Rappel de révision quotidien**, et autorise les notifications dans les Réglages d’iOS | 2 |
| Les guides n’apparaissent plus | **Réglages › Aide › Guides** les réaffiche | 1 |

### Images, son et modification

| Ce que tu vois | Que faire | Chapitre |
|---|---|---|
| Une image disparaît en mode sombre | Donne-lui un fond blanc ou clair uni | 4 |
| Une image manque après un import | Consulte le rapport d’import Anki ; le SVG n’est pas pris en charge | 4, 5 |
| Le texte d’un côté a disparu après le remplacement de son image ou de son son | Il a été enregistré depuis l’onglet Image ou Audio ; reviens à Texte avant d’enregistrer | 4 |
| Lire les cartes saute une carte | Les deux côtés ont besoin de texte et d’une langue dont une voix est installée | 7 |
| L’écoute s’est arrêtée toute seule | Un appel ou une autre app a pris l’audio ; relance avec [Lire à partir d'ici]{.ui} | 7 |

### Importation

| Ce que tu vois | Que faire | Chapitre |
|---|---|---|
| Moins de cartes que de lignes ou de notes | Des cartes à la même question ont fusionné (fichiers de paquet), ou des lignes sans question ont été ignorées (CSV) | 5 |
| Plus de cartes que de notes Anki | Chaque numéro de trou est une carte à part ; c’est normal | 5 |
| Un paquet est apparu deux fois | Un CSV crée toujours un nouveau paquet, tout comme un import Anki avec [Ajouter une nouvelle copie]{.ui} | 5 |
| Les cartes sans texte sont en double après une réimportation | Elles n’ont pas de question permettant de les associer ; supprime les doublons | 5 |
| La première carte affiche « Question / Réponse » | Active [Ignorer la première ligne comme en-tête]{.ui} | 5 |
| Tout le texte est dans une seule colonne | Change le [Séparateur]{.ui} dans l’aperçu CSV | 5 |
| Une modification a disparu après un import | La version du fichier l’a remplacée ; fais la même correction dans le fichier | 5 |
| Un planning a fait un bond en arrière, ou des cartes supprimées sont revenues | Une archive plus ancienne du centre d’intérêt a été importée | 5, 10 |
| Des cartes importées sont arrivées dans le mauvais paquet | Deux paquets portent le même nom ; renomme-en un | 1 |
| Un nouveau centre d’intérêt n’est pas apparu | Il en existait déjà un du même nom, qui a été utilisé à la place | 1 |

### Synchronisation, appareils et données

| Ce que tu vois | Que faire | Chapitre |
|---|---|---|
| L’état de synchronisation indique [Indisponible]{.ui} | Connecte-toi à iCloud et autorise JustFlip! à l’utiliser | 10 |
| Une modification n’arrive pas sur l’autre appareil | Compare les heures d’envoi et de réception sur l’écran Synchronisation iCloud des deux appareils | 10 |
| Emplacement de sauvegarde indique [Local uniquement]{.ui} | Garde aussi une archive exportée en lieu sûr | 10 |
| Deux centres d’intérêt du même nom sont apparus | JustFlip! les fusionne automatiquement à la synchronisation suivante | 10 |
| Le widget affiche d’anciens nombres | Ouvre JustFlip! sur cet appareil ; le widget sait ce que l’app y a enregistré en dernier | 8 |
| La montre affiche [Ouvrez JustFlip sur votre iPhone pour synchroniser vos cartes.]{.ui} | Ouvre l’app iPhone une fois | 8 |
| La montre affiche « N en cours de synchronisation vers l’iPhone » | Rapproche ton iPhone ; les notes sont transmises et appliquées une seule fois | 8 |
| Une carte manque dans Spotlight | Vérifie [Inclure dans la recherche de l’appareil]{.ui} sur son centre d’intérêt *et* son paquet ; cherche par le début d’un mot | 8 |
| JustFlip! ignore le mode sombre | Le thème est fixé sur clair ou sombre ; choisis [Système]{.ui} | 11 |
| La feuille Nouveautés est vide | Tu es hors ligne ; utilise [Réessayer]{.ui} ou [Ouvrir dans le navigateur]{.ui} | 8 |
| L’élément de menu Statistiques affiche un cadenas | Les Statistiques font partie de Pro, essai compris | 9 |
| La restauration ne trouve aucun achat | Utilise le compte Apple avec lequel tu as acheté Pro | 1 |

## Glossaire {#glossary}

| Terme | Signification |
|---|---|
| **Centre d’intérêt** | Le niveau supérieur de ta bibliothèque : un sujet qui contient des paquets |
| **Paquet** | Un groupe de cartes ciblé, à l’intérieur d’un centre d’intérêt |
| **Carte** | Une question et une réponse, chaque côté ayant ses propres texte, image, son et langue |
| **Aujourd’hui** | Le panneau de l’écran Centres d’intérêt qui rassemble les cartes à réviser de tous les centres d’intérêt, plus des nouvelles cartes dans la limite de ton quota quotidien |
| **À réviser** | Une carte dont l’heure de révision est arrivée et qui n’est ni retirée ni reportée |
| **Nouvelle carte** | Une carte que tu n’as jamais étudiée |
| **Difficile (carte)** | Une carte dont la dernière note était À revoir ou Difficile, quelle que soit son échéance |
| **Vu** | La trace que JustFlip! enregistre la première fois que tu retournes une carte en parcourant la liste ; ce n’est pas une note |
| **Intervalle** | Le temps avant qu’une carte revienne, de quelques minutes à plusieurs mois |
| **Facilité** | Le taux de croissance propre à l’intervalle d’une carte ; démarre à 2,5, reste entre 1,3 et 3,5 |
| **Étape** | Non vue, Apprentissage, Révision (intervalle de 7 jours ou plus), Maîtrisée (30 jours ou plus) ou Réapprentissage |
| **Maîtrise** | La part des cartes d’un paquet dont la dernière note était Bien ou Facile ; les suivis de progression ajoutent leur propre progression |
| **Rétention** | La part des révisions notées Bien ou Facile |
| **Révision mature** | La révision d’une carte dont l’intervalle avait déjà atteint 30 jours |
| **Oubli** | Une carte que tu avais apprise, puis oubliée |
| **Sangsue** | Une carte oubliée huit fois ou plus ; listée sous [Celles-ci vous échappent sans cesse]{.ui} |
| **Série** | Les jours consécutifs avec au moins une révision ; jusqu’à deux jours manqués sont comblés |
| **Prévision** | Le nombre de cartes qui arrivent à échéance chaque jour à venir ; les cartes en retard sont ajoutées à aujourd’hui |
| **Urgence** | Un score qui combine les cartes à réviser, leur retard, le temps écoulé depuis ta dernière étude et la maîtrise |
| **Retirer** | Sortir une carte des révisions en conservant son historique ; s’annule avec Réactiver |
| **Reporter** | Mettre une carte, un paquet ou un centre d’intérêt de côté jusqu’à un jour choisi, sans le noter |
| **Priorité de révision** | Un poids de 0 à 100 % (75 % par défaut) qui décide quelles cartes passent en premier dans une session plafonnée |
| **Évaluation plus stricte** | Un réglage qui ne laisse que À revoir et Difficile une fois la carte retournée |
| **Planification intelligente** | Le planificateur FSRS-5 (Pro, bêta), qui vise environ 90 % de rappel |
| **Suivi de progression** | Une carte que tu évalues toi-même de 0 à 100, pour des compétences qu’une carte ne peut pas tester (Pro) |
| **Texte à trous** | Une carte à compléter écrite avec `{{c1::…}}` |
| **Indice parlé** | `{…}` après un morceau de carte, qui dit à la voix quoi prononcer à la place |
| **Marqueur de pièce jointe** | `![attachment:0]`, qui place une image dans le texte |
| **Description de l’image** | Le texte que VoiceOver lit à la place d’une image |
| **Occlusion d’image** | Une image avec des zones masquées, chacune devenant sa propre carte |
| **Lire les cartes** | L’écoute mains libres d’un paquet entier : question, pause de quatre secondes, réponse, carillon (Pro) |
| **Voix automatique** | La meilleure voix installée pour une langue : Premium, puis Améliorée, puis Standard |
| **Demander à l’IA** | Une requête sous forme de rapport d’étude que JustFlip! prépare pour que tu la colles dans ta propre IA de chat |
| **Guide** | Une bulle d’aide affichée une seule fois pour expliquer une commande ; à revoir sous **Réglages › Aide › Guides** |
| **Bibliothèque de départ** | Les paquets tout prêts proposés au premier lancement, et sous **Réglages › Aide › Bibliothèque** |
| **Archive de centre d’intérêt** | Un export `.flashcards.zip` d’un centre d’intérêt, progression comprise |
| **Sauvegarde complète** | Une archive `.justflip` hebdomadaire de toute la bibliothèque ; les 10 plus récentes sont conservées |
| **Instantané de progression** | Une sauvegarde quotidienne de la progression, sans médias ; les 30 plus récents sont conservés |
| **Inclure dans la recherche de l’appareil** | L’interrupteur de centre d’intérêt et de paquet qui décide si les cartes apparaissent dans Spotlight |

## Gratuit et Pro {#free-pro}

JustFlip! est gratuit, sans limite de cartes. Pro supprime les deux
limites de la bibliothèque et ajoute quelques fonctions avancées. Un
essai gratuit, lorsqu’il est proposé, débloque les fonctions Pro pendant
sa durée.

| Fonction | Gratuit | Pro | Chapitre |
|---|---|---|---|
| Centres d’intérêt | 3 | Illimité | 1 |
| Paquets par centre d’intérêt | 5 | Illimité | 1 |
| Cartes, mise en forme, images, son, occlusion d’image | ✓ | ✓ | 3, 4 |
| Import et export (Anki, CSV, fichiers de paquet, archives) | ✓ | ✓ | 5 |
| Révisions, priorités, report, retrait | ✓ | ✓ | 2, 6 |
| Le bouton Lire et le choix des voix | ✓ | ✓ | 7 |
| Apple Watch, widget, Siri, Spotlight | ✓ | ✓ | 8 |
| Synchronisation iCloud, sauvegardes, restauration | ✓ | ✓ | 10 |
| Thèmes et taille du texte | ✓ | ✓ | 11 |
| Demander à l’IA à propos d’une carte ou d’une session | ✓ | ✓ | 9 |
| Demander à l’IA à propos d’un paquet entier | — | ✓ | 9 |
| Lire les cartes et l’écoute en arrière-plan | — | ✓ | 7 |
| Statistiques | — | ✓ | 9 |
| Suivis de progression | — | ✓ | 6 |
| Planification intelligente (bêta) | — | ✓ | 6 |

Les formules, les achats et la restauration sont traités au chapitre 1.

## Formats de fichiers {#formats}

| Fichier | Ce qu’il contient | Créé par | S’importe comme |
|---|---|---|---|
| `.flashcards` | Un paquet, texte uniquement | Une IA, la page Paquets, toi | Met à jour le paquet correspondant (par texte de question) |
| `.flashcards.zip` | Un paquet avec images et son — ou une archive de centre d’intérêt | Le skill pour agent de codage, la page Paquets, [Exporter l'archive]{.ui} | Un fichier de paquet met à jour par question ; une archive restaure son centre d’intérêt, progression comprise |
| `.apkg`, `.colpkg` | Un paquet ou une collection Anki | Anki | De nouveaux paquets, ou ignorer / mettre à jour ce que tu as déjà |
| `.csv` | Une carte par ligne | N’importe quel tableur | Toujours un nouveau paquet |
| `.flashcards-stats.csv` / `.json` | Des statistiques, à lire | [Exporter les statistiques]{.ui} | Ne peut pas être importé |
| `.justflip` | Une sauvegarde complète de la bibliothèque | Les sauvegardes automatiques, [Exporter la sauvegarde]{.ui} | **Réglages › Sécurité des données › Restaurer la sauvegarde** |

Le format de contenu des fichiers de paquet, rédigé pour les outils d’IA
et les auteurs de paquets, est publié avec le [prompt
IA](https://just-flip.app/ai-prompt.html).

## Raccourcis clavier {#shortcuts}

Sur Mac, et sur un iPad avec clavier physique :

| Touche | Action |
|---|---|
| Espace | Retourner la carte, ou révéler une zone d’occlusion |
| 1 · 2 · 3 · 4 | À revoir · Difficile · Bien · Facile |
| Retour | Vérifier une réponse saisie |
| ⇧⌘I | Import Cards… (Mac) |
| ⇧⌘E | Export Interest… (Mac) |

Les détails, y compris les raisons pour lesquelles une touche ne fait
parfois rien, se trouvent au chapitre 8.

## Le balisage en un coup d’œil {#markup}

| Tu écris | Tu obtiens |
|---|---|
| `**gras**` · `*italique*` · `` `code` `` | **gras** · *italique* · `code` |
| `{{c1::réponse::indice}}` | Un trou avec un indice facultatif |
| `::: hero` … `:::` | Contenu très grand et centré |
| `$x^2$` · `$$` … `$$` | Maths en ligne · un bloc de maths |
| ```` ```swift ```` · ```` ```mermaid ```` | Code coloré · un diagramme |
| `| A | B |` + `|---|---|` | Un tableau, 2 × 5 au plus |
| `![attachment:0]` | L’image du côté, ici |
| `[affiché]{prononcé}` | Prononcer autre chose à voix haute |

L’aide-mémoire complet, avec toutes les règles, clôt le chapitre 3.
