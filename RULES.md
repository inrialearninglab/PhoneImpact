# Règle du jeu

## Introduction

Vous êtes des fabricants de smartphones vous allez devoir surpasser votre concurrence en construisant votre smartphone tout en polluant le moins possible.

## But du jeu

Rassembler assez de ressources pour construire tous les composants de son smartphone.


## Matériel
### Smartphones
- 5 smartphones de 4 composants chacun : Coque, Carte Mère, Batterie, Ecran Tactile (chaque composant est une carte épaisse, visuel et taille exacte en cours de réalisation)

Chaque composant est constitué de ressources qui apparaissent sur sa carte (type+nombre):
- Autres matières
- Métaux précieux (rares)
- Autres métaux rares
- Métaux mineurs
- Terres rares
- [visuel du smartphone](./pdf/parts.pdf)

### Cartes ressources
- **99** cartes PolluPlus
  - 4 cartes Métal précieux (et rares) : or, argent, platine, palladium,...
  - 30 cartes Métal rare (hors précieux)/Autres métaux rares : indium, lithium, tantale,...
  - 21 cartes Métal commun (et non rares): aluminium, cuivre, nickel,... (nécessite beaucoup de ressources ou d'énergie)
  - 10 cartes Terre rare : yttrium, néodyme, gadolinium,... (pas rare mais difficile à extraire)
  - 34 cartes Autre matière : Plastique, verre, ceramique, matières synthétiques, etc.(40 à 70% du poids)
  
- **49** cartes PolluMoins
  - 2 cartes Métal précieux (et rares) : or, argent, platine, palladium,...
  - 15 cartes Métal rare (hors précieux)/Autres métaux rares : indium, lithium, tantale,...
  - 10 cartes Métal commun (et non rares): aluminium, cuivre, nickel,... (nécessite beaucoup de ressources ou d'énergie)
  - 5 cartes Terre rare : yttrium, néodyme, gadolinium,... (pas rare mais difficile à extraire)
  - 17 cartes Autre matière : Plastique, verre, ceramique, matières synthétiques, etc.(40 à 70% du poids)
  
- **17** cartes Recyclage
  - 2 cartes Métal précieux (et rares) : or, argent, platine, palladium,...
  - 0 carte Métal rare (hors précieux)/Autres métaux rares : indium, lithium, tantale,...
  - 6 cartes Métal commun (et non rares): aluminium, cuivre, nickel,... (nécessite beaucoup de ressources ou d'énergie)
  - 0 carte Terre rare : yttrium, néodyme, gadolinium,... (pas rare mais difficile à extraire)
  - 9 cartes Autre matière : Plastique, verre, ceramique, matières synthétiques, etc.(40 à 70% du poids)

--> 165 cartes

Précision importante : le % de cartes nécessaires pour les composants n'est pas représentatif du poids réel des ressources d'un smartphone ni de la quantité de matière mais permet de symboliser la variété des ressources nécessaires.

### Cartes événement
--> 17 cartes

Les cartes sont numérotées et doivent être classées dans l'ordre croissant à chaque début de partie.
Elles peuvent être de type :
- bonus
- pillage
- règlementation
- évènement majeur

### Cartes Malus
--> 37 cartes

Les cartes doivent être mélangées à chaque début de partie.

## Préparation du jeu

### Plateau de jeu à construire
Chaque joueur possède un smartphone à construire en assemblant les 4 composants : Coque, Carte Mère, Batterie, Ecran Tactile.
Mélanger les cartes malus et les placer au milieu.

![img](./img/disposition.jpg)

### 3 pioches de cartes ressources

Les cartes ressources doivent être bien mélangées puis rassemblées en pioche, chacune représentant des ressources vendues par un fournisseur:

- PolluPlus qui fait du minage classique polluant non responsable
    - 3 cartes ressources sont tirées de la pioche et placées côté
    - 2 malus

- PolluMoins qui fait du minage avec des efforts
    - 2 cartes ressources visibles parmi tous les types
    - 1 malus

- Recyclage
    - 1 carte ressource visible parmi les métaux recyclables
    - Pas de malus
    - Ne contient pas de terres rares, ni de métaux rares

#### Cartes malus

Les cartes malus sont mélangées et déposées en un tas, face cachée.
- 50 cartes malus
- 1 carte "Attention, vous commencez à trop polluer" à placer en position (nombre de joueurs x 3)
- 1 carte "Alerte pollution, vos malus sont déduis de votre total de points" à placer en position (nombre de joueur x 5)

Exemple : à 5 joueurs la carte "attention" se place en 15e position de la pioche malus et la carte "alert" se place en 25e position de la pioche malus.

#### Cartes événements

15 cartes événements dont l'ordre est défini par un numéro sur celle-ci. Ces cartes événements déclencheront des actions particulières à chaque tour de jeu.

Certains événements désignent le joueur qui a le moins de malus (ex: action xxx commençant par celui qui a le moins de malus).
- En cas d'égalité sur le nombre de malus, on regarde celui qui a le plus de cartes recyclés.
- En cas d'égalité, on prend celui qui a le smartphone ayant l'indice de réparabilité le plus haut
- En cas d'égalité, on prend celui qui a le smartphone ayant le smartphone le plus vieux

Selon le nombre de joueurs, on enlève certaines cartes :
- on enlève les 2 dernières cartes (#13 et #14) à 5 joueurs
- on enlève la dernière carte (#14) à 4 joueurs

## Déroulement du jeu

### Qui commence ?
La personne ayant l'indice de réparabilité le plus haut sur son smartphone:
[Indice de reparabilité](https://www.indicereparabilite.fr/).

Si un smartphone est tellement vieux qu'il n'a pas d'indice de réparabilité calculé de son smartphone --> c'est lui qui commence.

En cas d'égalité d'indice de réparabilité, le smartphone le plus ancien l'emporte.

### Déroulement d’un tour de table

Les joueurs jouent chacun leur tour dans le sens horaire, en commençant par celui qui a été désigné (indice de réparabilité+age du smartphone).

A la fin de chaque tour de table (avant que le 1er joueur ne démarre le tour suivant) :  
- On tire une carte événement valable pour tous les joueurs et on fait éventuellement l'action écrite sur la carte
- Phase de négociation collective : échange de ressources et malus (ex: "je donne 1 ressource "Terre rare" avec 2 malus" ou "j'échange x ressources type1 contre Y ressources type2")

### Déroulement du tour de jeu d'un joueur

Une seule action possible parmi :  
- Pioche de cartes ressources dans une seule des 3 pioches au choix parmi les cartes visibles ou non-visibles (les cartes visibles ne sont repositionnées qu'à la fin de la phase de pioche).
  - Selon la pioche, le joueur pioche des cartes Malus.
  - Les cartes ressources sont cachées aux autres.
- Construction d’un composant ou du téléphone
- Dépolluer : le joueur se débarrasse de 2 cartes malus

## Conditions de fin de partie
2 conditions de fin de partie possible :  
- un joueur a construit son smartphone (tous les composants)
- la carte événement "Fin de partie" est tirée, la partie s'arrête.

On termine le tour quand une des 2 conditions précédentes est atteinte.

## Décompte des points
Le gagnant est celui qui a le plus de points.

On compte les points en fonction :  
- des composants du téléphone construits. Chaque composant rapporte un certain nombre de points, inscrit sur le plateau de jeu.
- si son smartphone est terminé --> 10 points
- éventuellement soustraire des points pour les malus si c'est spécifié durant la partie
