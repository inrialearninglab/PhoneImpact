# Règle du jeu

## Introduction

Vous êtes des fabricants de smartphones vous allez devoir surpasser votre concurrence en construisant votre smartphone
tout en polluant le moins possible.

## But du jeu

Rassembler assez de ressources pour construire tous les composants de son smartphone.

## Composition du jeu

### Téléphone à construire (7 Wonders Architect)

4 composants : Coque, Carte Mère, Batterie, Ecran Tactile
Chaque composant est constitué de ressources :
- x Matières synthétiques
- y Métaux précieux (rares)
- z Autres métaux rares
- w Métaux mineurs
- v Terres rares

### 3 pioches de carte ressources/types de ressources:

Pour chaque pioche, de 1 à 3 cartes visibles et un tas de cartes non visibles. Chaque pioche représente des ressources vendues par un fournisseur

- PolluePlus qui fait du minage classique polluant non responsable
    - 3 cartes ressources visibles parmi tous les types
    - 2 malus carbone

- PollueMoins qui fait du minage avec des efforts
    - 2 cartes ressources visibles parmi tous les types
    - 1 malus carbone

- Recyclage
    - 1 carte ressource visible parmi les métaux recyclables
    - Pas de malus
    - Ne contient pas de terres rares, ni de métaux rares

#### Cartes malus

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

## Disposition

![img](./img/disposition.jpg)

## Déroulement du jeu

### Qui commence ?
La personne ayant l'indice de réparabilité le plus haut sur son smartphone:
[Indice de reparabilité](https://www.indicereparabilite.fr/)

Si égalité le plus ancien l'emporte.

### Déroulement d’un tour de table

Les joueurs jouent chacun leur tour de jeu dans le sens horaire, en commençant par celui qui a été désigné (indice de réparabilité+age du smartphone).

A la fin de chaque tour de table (avant que le 1er joueur ne démarre le tour suivant) :  
- On tire une carte événement valable pour tous les joueurs et on fait éventuellement l'action écrite sur la carte
- Phase de négociation collective : échange de ressources et malus (ex: "je donne 1 ressource "Terre rare" avec 2 malus" ou "j'échange x ressources type1 contre Y ressources type2")

### Déroulement du tour de jeu d'un joueur

Une seule action possible parmi :  
- Pioche de cartes ressources dans une seule des 3 pioches au choix parmi les cartes visibles ou non-visibles (les cartes visibles ne sont repositionnées qu'à la fin de la phase de pioche).
  - Selon la pioche, le joueur pioche des cartes Malus.
  - Les cartes ressources sont cachées aux autres.
- Construction d’un composant ou du téléphone
- Dépoluer : on se débarasse de 2 cartes malus


## Fin de partie
2 conditions de fin de partie possible :  
- un joueur a construit son smartphone (tous les composants)
- la carte évenement "Fin de partie" est tirée la partie s'arrête

On termine le tour quand une des 2 conditions précédentes est atteinte.

## Le gagnant
On compte ensuite les points en fonction :  
- des composants du téléphone construit. Chaque composant rapporte un certain nombre de points.
- si son smartphone est terminé --> 10 points
- éventuellement soustraire des points pour les malus si c'est spécifié durant la partie
