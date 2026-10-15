---
slug: sync-backup
number: 10
title: Synchronisation, sauvegardes et données
description: "Comment JustFlip! protège tes cartes et ta progression : synchronisation iCloud, sauvegardes automatiques, Récemment supprimés, restauration, export d’archives, et une liste de vérifications quand la synchronisation semble bloquée."
---

# Synchronisation, sauvegardes et données {#sync-backup number="10"}

::: lede
Les cartes peuvent être réécrites ou réimportées. Ta progression, elle,
ne le peut pas : chaque note, chaque intervalle, chaque jour de série
n’existe que parce que tu y as consacré du temps. JustFlip! la protège
donc en trois couches distinctes, chacune couvrant une défaillance que
les autres ne couvrent pas. Ce chapitre explique ce que fait chaque
couche, où la trouver, et que faire quand quelque chose semble clocher.
:::

::: inthischapter
- Comprendre les trois couches : synchronisation iCloud, sauvegardes automatiques et export manuel
- Lire l’état de synchronisation et l’écran Synchronisation iCloud
- Trouver, restaurer et comprendre tes sauvegardes automatiques
- Savoir ce que fait une suppression, et ce que contient Récemment supprimés
- Exporter l’archive d’un centre d’intérêt, progression comprise
- Suivre une liste de vérifications quand la synchronisation semble bloquée
:::

## Trois couches de sécurité {#layers}

| Couche | Ce que c’est | Ce contre quoi elle te protège |
|---|---|---|
| **1. Synchronisation iCloud** | Ta bibliothèque, identique sur chaque appareil | Un appareil perdu, cassé ou remplacé |
| **2. Sauvegardes automatiques** | Des instantanés réguliers que JustFlip! prend tout seul | Les erreurs que la synchronisation copierait partout |
| **3. Export manuel** | Des fichiers d’archive que tu enregistres où tu veux | Tout le reste, y compris quitter iCloud |

Les trois se trouvent dans **Réglages › Sécurité des données**. Ouvre les
Réglages depuis l’icône en forme de roue dentée en haut de la liste des
centres d’intérêt et fais défiler jusqu’à la section [Sécurité des
données]{.ui}.

![Réglages › Sécurité des données : État de synchronisation, la dernière sauvegarde complète et le dernier instantané de progression, Emplacement de sauvegarde, Récemment supprimés, et les boutons Exporter la sauvegarde et Restaurer la sauvegarde.](images/manual/{lang}/10-data-safety.jpg){.phone}

::: gotcha
#### La synchronisation n’est pas une sauvegarde

La synchronisation rend tous les appareils identiques. Erreurs comprises :
supprime un centre d’intérêt sur ton iPad et il disparaît de ton iPhone
et de ton Mac en quelques minutes. La synchronisation n’a pas
d’annulation propre. C’est précisément pour cela que les couches 2 et 3
existent.
:::

## Synchronisation iCloud {#icloud-sync}

La synchronisation est incluse pour tout le monde, version gratuite comme
Pro. Il n’y a rien à activer dans JustFlip! : si ton appareil est
connecté à iCloud, ta bibliothèque se synchronise via ton propre compte
iCloud.

### Ce qui se synchronise

- Les centres d’intérêt, les paquets et les cartes, images et sons
  compris
- Ta progression : chaque note, intervalle, échéance et oubli
- Les cartes retirées et reportées, les drapeaux, les priorités et les
  suivis de progression
- Les suppressions, y compris ce qui attend dans Récemment supprimés

Tes **réglages restent propres à chaque appareil** : le thème, la taille
du texte, les voix, les rappels et les limites quotidiennes comme
[Nouvelles cartes par jour]{.ui}. Tu peux ainsi avoir un iPhone calme et
un iPad chargé. L’Apple Watch reçoit ses cartes de ton iPhone et non
d’iCloud (voir le chapitre 8).

### Comment elle se comporte

- **Hors ligne d’abord.** Tout fonctionne sans connexion. Tes
  modifications sont enregistrées aussitôt sur l’appareil et envoyées dès
  que tu es de nouveau en ligne.
- **En arrière-plan.** Il n’y a pas de bouton de synchronisation. Les
  modifications voyagent toutes seules, généralement en quelques
  secondes à quelques minutes.
- **La dernière modification l’emporte.** Si tu modifies la même carte
  sur deux appareils avant qu’ils ne se synchronisent, c’est la
  modification la plus récente qui reste.

::: tip
#### Un nouvel appareil, en toute simplicité

Installe JustFlip! sur le nouvel appareil, connecte-toi avec le même
compte Apple et ouvre l’app. Tes centres d’intérêt apparaissent à mesure
qu’ils arrivent ; la liste vide l’indique pendant l’attente. Une grosse
bibliothèque avec beaucoup d’images peut prendre un moment lors de la
première synchronisation : laisse l’app ouverte, en Wi-Fi.
:::

## L’état de synchronisation {#sync-status}

La première ligne de Sécurité des données, [État de
synchronisation]{.ui}, indique l’état d’iCloud sur cet appareil, avec
l’heure du dernier envoi réussi en dessous.

| État | Ce qu’il signifie |
|---|---|
| [Vérification…]{.ui} | JustFlip! demande à iCloud si ton compte est disponible |
| [Disponible]{.ui} | Ton compte iCloud est prêt et la synchronisation peut fonctionner |
| [Synchronisation…]{.ui} | Des modifications sont envoyées ou reçues en ce moment |
| [Indisponible]{.ui} | Aucun compte iCloud n’est disponible sur cet appareil : rien ne se synchronise |
| [Échec de la synchronisation]{.ui} | iCloud a signalé une erreur lors de la dernière tentative |

[Indisponible]{.ui} et [Échec de la synchronisation]{.ui} s’affichent en
rouge.

::: note
#### « Disponible » ne veut pas dire « tout est envoyé »

[Disponible]{.ui} indique seulement que ton compte est prêt. Cela ne
garantit pas que chaque modification a déjà atteint iCloud. Pour cela,
regarde les heures d’envoi et de réception sur l’écran Synchronisation
iCloud.
:::

### L’écran Synchronisation iCloud

Touche [État de synchronisation]{.ui} pour les détails :

- [État actuel]{.ui} : l’état du tableau ci-dessus.
- **Last successful upload** et **Last successful download** (dernier
  envoi et dernière réception réussis) : le moment où iCloud a
  *confirmé* pour la dernière fois que des modifications ont été envoyées
  depuis cet appareil, ou reçues sur celui-ci. Un enregistrement local ne
  compte pas ; seul un transfert confirmé compte.
- **Upload in progress** (envoi en cours), tant qu’un envoi est en
  cours.
- [Vérifier à nouveau]{.ui} : redemande à iCloud si ton compte est
  disponible.
- [Dépannage]{.ui} : la dernière erreur signalée par iCloud, ou [Aucune
  erreur de synchronisation]{.ui}.
- [Activité de synchronisation récente]{.ui} : un journal des
  événements de synchronisation récents sur cet appareil, utile quand tu
  contactes l’assistance.

![L’écran Synchronisation iCloud avec les heures d’envoi et de réception, Vérifier à nouveau et le journal d’activité récente.](images/manual/{lang}/10-icloud-sync.jpg){.phone}

::: tip
#### Compare deux appareils côte à côte

Quand une modification faite sur un appareil n’apparaît jamais sur
l’autre, ouvre cet écran sur les deux. Si le **Last successful upload**
d’un appareil est antérieur à la modification, le problème vient de cet
appareil : il ne l’a pas encore envoyée. Si l’envoi est récent mais que
le **Last successful download** de l’autre appareil est ancien, c’est
l’appareil récepteur qui ne l’a pas encore récupérée.
:::

## Sauvegardes automatiques {#automatic-backups}

JustFlip! sauvegarde ta bibliothèque tout seul. Tu en trouveras deux
types dans Sécurité des données :

| Sauvegarde | Ligne dans Sécurité des données | Contenu | Fréquence approximative | Conservées |
|---|---|---|---|---|
| **Sauvegarde complète** | [Dernière sauvegarde complète]{.ui} | Une archive avec tous les centres d’intérêt : cartes, images, sons et toute la progression | Hebdomadaire | Les 10 plus récentes |
| **Instantané de progression** | [Dernier instantané de progression]{.ui} | Tous les centres d’intérêt avec leur progression, sans images ni sons | Quotidienne | Les 30 plus récents |

Sur iPhone et iPad, le système lance les sauvegardes en arrière-plan,
quand il juge le moment opportun. Sur Mac, JustFlip! vérifie chaque fois
que tu passes l’app au premier plan et rattrape tout ce qui est en
retard. Une sauvegarde est sautée quand rien n’a changé depuis la
précédente.
<!-- VERIFY: the skip check compares interests' modifiedAt with the last backup date; confirm that reviewing cards (not only editing) counts as a change. -->
Quand la sauvegarde la plus ancienne sort du nombre conservé, elle est
supprimée automatiquement.

Les dates passent au rouge quand une sauvegarde est en retard : une
sauvegarde complète de plus de quatre semaines ou un instantané de
progression de plus de quatre jours.

### Exporter la sauvegarde : une sauvegarde complète tout de suite

[Exporter la sauvegarde]{.ui} crée immédiatement une sauvegarde complète
et l’ajoute à la liste, par exemple avant de tenter quelque chose de
risqué. Elle écrit un fichier nommé par exemple
`JustFlip-2026-09-30_14-05-12.justflip`.

### Où les sauvegardes sont conservées

La ligne [Emplacement de sauvegarde]{.ui} indique où tes sauvegardes
sont stockées :

- [iCloud Drive]{.ui} : les sauvegardes sont conservées dans l’espace
  iCloud Drive de JustFlip!, à l’écart de la synchronisation. Un problème
  de synchronisation ou une suppression synchronisée ne les touche pas.
- [Local uniquement]{.ui} : iCloud Drive n’est pas disponible, les
  sauvegardes restent donc sur cet appareil. Touche la ligne pour savoir
  pourquoi : [Non connecté à iCloud]{.ui}, [iCloud Drive est
  désactivé]{.ui} ou [Votre quota de stockage iCloud est plein]{.ui}.
<!-- VERIFY: the app's entitlements list only the CloudKit iCloud service (no CloudDocuments / ubiquity container). If so, url(forUbiquityContainerIdentifier:) returns nil and Backup Location is always "Local only" in shipping builds. Also verify whether the backup folder is visible in the Files app. -->

::: gotcha
#### Les sauvegardes locales partent avec l’app

« Le stockage local fonctionne, mais il ne sera pas synchronisé entre les
appareils et ne survivra pas à une désinstallation », prévient l’app
elle-même. Si Emplacement de sauvegarde indique [Local
uniquement]{.ui}, supprimer JustFlip! supprime aussi ses sauvegardes.
Garde également une [archive exportée](#export) en lieu sûr.
:::

## Restaurer une sauvegarde {#restore}

Touche [Restaurer la sauvegarde]{.ui} dans Sécurité des données pour
voir les [Archives disponibles]{.ui}, de la plus récente à la plus
ancienne, chacune avec son nom de fichier et sa date. Touches-en une pour
la restaurer. Un message confirme la fin de l’opération : « Restore
completed. Interests have been merged. »

![Restaurer la sauvegarde : la liste des archives disponibles, de la plus récente à la plus ancienne.](images/manual/{lang}/10-restore-backup.jpg){.phone}

Une restauration **fusionne** ; elle n’efface jamais ta bibliothèque au
préalable :

- Les centres d’intérêt, paquets et cartes de la sauvegarde sont
  rétablis. Tout ce qui a été créé après la sauvegarde reste tel quel.
- Pour chaque carte de la sauvegarde, le **planning est ramené** à ce
  qu’il était au moment de la sauvegarde : étape d’apprentissage,
  intervalle, échéance, facilité et oublis.
- L’**historique** des révisions est **combiné**. Les révisions faites
  après la sauvegarde sont conservées, et restaurer deux fois la même
  sauvegarde ne crée aucun doublon.

::: gotcha
#### Une restauration démarre dès que tu touches

Il n’y a pas d’étape de confirmation : toucher une sauvegarde la
restaure. Choisis la bonne date avant de toucher la liste. Et n’oublie
pas que les cartes qu’elle contient reviennent à leur planning *de ce
moment-là* : restaurer une vieille sauvegarde pour réparer un paquet
remonte aussi le temps pour toutes les autres cartes qu’elle contient.
:::

::: gotcha
#### Après une restauration, laisse du temps à tes appareils

Une restauration écrit beaucoup de modifications d’un coup, et chaque
autre appareil doit les recevoir. Garde JustFlip! ouvert sur l’appareil
restauré, en Wi-Fi, jusqu’à ce que son **Last successful upload** soit
récent. Ouvre ensuite JustFlip! sur tes autres appareils et laisse-leur
quelques minutes avant d’y réviser.
:::

## Supprimer, et Récemment supprimés {#recently-deleted}

::: gotcha
#### La suppression est définitive

Quand tu supprimes un centre d’intérêt, un paquet ou une carte, il
disparaît aussitôt, sur tous tes appareils. Avant de supprimer quoi que
ce soit que tu pourrais regretter, choisis [Exporter l'archive]{.ui} dans
le menu contextuel du centre d’intérêt. L’archive conserve ses paquets,
ses cartes et ta progression, et tu pourras l’importer de nouveau plus
tard. Une carte que tu veux seulement sortir de tes révisions gagne à
être retirée plutôt que supprimée (chapitre 2).
:::

**Réglages › Sécurité des données › Récemment supprimés** contient les
centres d’intérêt et les paquets que JustFlip! a mis de côté pour toi,
comme la copie vide laissée après la fusion de deux centres d’intérêt ou
de deux paquets. La ligne indique combien d’éléments attendent, ou
[Vide]{.ui}.

![Récemment supprimés, avec un élément et ses boutons Restaurer et Supprimer.](images/manual/{lang}/10-recently-deleted.jpg){.phone}

Chaque élément affiche son nom, le centre d’intérêt auquel il
appartenait, et quand il a été mis de côté. Deux boutons :

- [Restaurer]{.ui} le récupère avec toutes ses cartes et sa progression.
- [Supprimer]{.ui} l’efface définitivement, tout de suite. C’est
  irréversible.

Au bout de **30 jours**, JustFlip! supprime définitivement ce qui reste.

## Exporter une archive {#export}

La troisième couche, c’est toi qui la contrôles : un fichier d’archive
que tu peux garder dans Fichiers, sur un disque, ou dans n’importe quel
service de stockage en ligne.

| Tu veux… | Fais ceci | Tu obtiens |
|---|---|---|
| Garder ou déplacer un centre d’intérêt, avec sa progression | Appui long sur le centre d’intérêt › [Exporter l'archive]{.ui} | `Nom.flashcards.zip` |
| Faire la même chose sur Mac | Sélectionne le centre d’intérêt › **Fichier › Export Interest…** (⇧⌘E) | `Nom.flashcards.zip` |
| Sauvegarder toute la bibliothèque maintenant | **Réglages › Sécurité des données › Exporter la sauvegarde** | un fichier `.justflip` parmi tes sauvegardes |
| Analyser tes chiffres | Appui long › [Exporter les statistiques]{.ui} | CSV ou JSON (chapitre 9) |

L’archive d’un centre d’intérêt contient chaque paquet et chaque carte de
ce centre d’intérêt, ses images et ses sons, **et ta progression**. Pour
la récupérer, ouvre le fichier avec JustFlip! depuis Fichiers, la feuille
de partage ou AirDrop, ou, sur Mac, dépose-le sur la fenêtre ou utilise
**Fichier › Import Interest Archive…**. L’import fonctionne comme une
restauration : il fusionne, et le même fichier peut donc être ouvert
deux fois sans créer de doublons. Le chapitre 5 détaille l’importation.

::: gotcha
#### Une archive emporte ta progression

[Exporter l'archive]{.ui} inclut toujours ta progression. C’est ce que tu
veux pour une sauvegarde. Mais quand tu envoies le fichier à un ami, tes
échéances et ton historique voyagent avec.
<!-- VERIFY: whether importing someone else's archive applies the sender's progress to the recipient's copy (importProgress writes schedule fields unconditionally when the card ids match). -->
:::

## Des centres d’intérêt en double venus de deux appareils {#duplicates}

Les noms de centres d’intérêt sont uniques dans ta bibliothèque, sans
tenir compte de la casse. Mais si deux appareils sont hors ligne et que
tu crées un centre d’intérêt du même nom sur chacun — par exemple
« Espagnol » sur l’iPhone pendant un vol et « espagnol » sur l’iPad à la
maison — les deux copies existent une fois les appareils de nouveau
synchronisés.

JustFlip! s’en aperçoit et **les fusionne automatiquement** : les paquets
des deux copies sont regroupés sous un seul centre d’intérêt, et tu vois
un court message comme « Merged duplicate copies of 'Espagnol' created
on another device ». Les noms sont comparés sans tenir compte de la
casse, des accents ni des espaces en trop. Chaque appareil choisit la
même copie survivante : tous finissent donc avec le même centre
d’intérêt unique, et un paquet qui arrive plus tard pour la copie
fusionnée retrouve quand même le bon endroit.

## Dépannage de la synchronisation {#troubleshooting}

Quand une modification n’apparaît pas sur un autre appareil, parcours
cette liste dans l’ordre. La plupart des problèmes se règlent à l’étape
3 ou 4.

1. **Laisse passer quelques minutes.** La synchronisation n’est pas
   instantanée. Garde JustFlip! ouvert sur les deux appareils pendant une
   minute ou deux.
2. **Vérifie l’état.** Ouvre **Réglages › Sécurité des données › État de
   synchronisation** sur les deux appareils. [Indisponible]{.ui} signifie
   qu’aucun compte iCloud n’est disponible ; [Échec de la
   synchronisation]{.ui} affiche l’erreur sous [Dépannage]{.ui}. Touche
   [Vérifier à nouveau]{.ui} après avoir corrigé quoi que ce soit.
3. **Le même compte Apple.** Les deux appareils doivent être connectés
   avec le **même** compte Apple. Dans les Réglages du système, touche
   ton nom en haut pour vérifier.
4. **iCloud est activé pour JustFlip!** Dans les Réglages du système, va
   dans ton nom › **iCloud** et vérifie qu’iCloud Drive est activé et que
   JustFlip! est autorisé à utiliser iCloud.
5. **Assez de stockage iCloud.** Un compte iCloud plein arrête la
   synchronisation. Vérifie sous ton nom › **iCloud** › **Gérer le
   stockage**, et libère de l’espace si nécessaire.
6. **Une connexion qui fonctionne.** Vérifie que l’appareil est en
   ligne.
7. **Compare les heures d’envoi et de réception** sur l’écran
   Synchronisation iCloud, comme décrit dans [L’état de
   synchronisation](#sync-status), pour trouver quel appareil est en
   retard.
8. **Redémarre et mets à jour.** Ferme et rouvre JustFlip!, redémarre
   l’appareil, et installe toute mise à jour de JustFlip!. En dernier
   recours, déconnecte-toi d’iCloud puis reconnecte-toi.
9. **Toujours bloqué ?** Utilise [Envoyer un commentaire]{.ui} dans les
   Réglages et mentionne ce qu’affiche le journal [Activité de
   synchronisation récente]{.ui}.

::: tip
#### Avant de tenter quoi que ce soit de radical

Avant de supprimer et réinstaller l’app, ou de te déconnecter d’iCloud,
touche [Exporter la sauvegarde]{.ui} et exporte une archive de tes
centres d’intérêt les plus importants. Ainsi, quoi qu’il arrive ensuite,
ta progression est en sécurité.
:::
