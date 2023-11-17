# Pitch avec les règles du jeu

## Règles pour une partie en 45'
### Présentation du jeu
Dans ce jeu, vous incarnez un fabricant de smartphones et votre objectif
est de construire un smartphone tout en minimisant votre impact
environnemental. Vous aurez des choix à faire tout au long du jeu mais
attention, ces choix auront des conséquences.

Vous avez chacun un plateau smartphone composé de : l'écran tactile
(dalle et vitre), la batterie, la coque, la carte mère.

Chaque composant est constitué de ressources qui apparaissent sur la
carte. Ces ressources sont désignées par des types de ressources qui sont les
suivants dans le jeu :

-   **Métal précieux** mais aussi rare, stratégique donc cher comme l'Or, l'argent, le platine, le palladium...
    -> *représenté par un lingot d'Or*

-   **Métal rare** Non précieux mais peu fréquent dans le sol comme le Lithium, le tantale, l'indium...
    -> *représenté par une pierre précieuse bleu*

-   **Métal commun** L'extraction nécessite beaucoup de ressources et d'énergie comme l'Aluminium, le cuivre, le nickel...
    -> *représenté par un métal gris*

-   **Terre rare** (Pas si rare mais difficile à extraire) comme l'Yttrium, le néodyme, la gadolinium...
    -> *représenté par un tas de terre marron*

-   **Autre matière** (40 à 70% du poids du smartphone) comme le plastique, le verre, la céramique, les matières synthétiques...
    -> *représenté par une fibre violette*

Le but du jeu est de rassembler assez de ressources pour construire tous les composants de votre smartphone.

Cependant, l'acquisition des ressources peut s'accompagner de Malus qui auront des conséquences dans la suite du jeu.
Les textes des cartes Malus sont lues quand elles sont tirées, éventuellement une sur deux si c'est trop long.

[Detail du matériel si besoin](./Materiel.md)

## Déroulement du jeu

Le jeu se déroule en plusieurs étapes, vous jouez à tour de rôle dans le sens des aiguilles d'une montre.

A chaque tour, vous pouvez faire une seule de ces 3 actions suivantes :

- piocher des cartes ressources parmi un des trois fournisseur :

    - **PolluPlus** qui fait du minage classique polluant non responsable
    > ce qui vous permet d'obtenir 3 cartes ressources
    > mais par contre 2 malus

    - **PolluMoins** qui fait du minage avec des efforts
    > ce qui vous permet d'obtenir 2 cartes ressources
    > mais par contre 1 malus

    - **Recyclage** spécialisé dans le recyclage (comme son nom l'indique),
    > ce qui vous permet d'obtenir 1 carte ressource
    > Pas de malus mais à savoir que dans cette pioche il n'y a ni terres rares, ni métaux
    rares.

    Une fois que vous avez choisi votre fournisseur, vous pouvez prendre les
    cartes visibles ou dans la pioche.

- construire un seul des 4 composants de votre smartphone

- dépolluer en vous débarrassant de 2 cartes Malus -> ces cartes défaussées ne sont pas remises dans la pioche, elles sont mises de côté.

Vous pouvez en plus à votre tour de jeu proposer des échanges avec d'autres joueurs, avant ou après l'action (échanges de ressources et/ou de malus).

Vu que ça fait beaucoup d'informations d'un coup, on vous a fait un
récap cf. cartes aide de jeu.

![Recap des règles](img/AideDeJeu.jpeg){ width="300" }


**Qui commence ?**

<figure markdown>
  ![QRCode www.indicereparabilite.fr](img/qrcode_indiceReparabilite.png){ width="200" }
  <figcaption>Site indicereparabilite.fr pour calculer son indice de reparabilité</figcaption>
</figure>

Pour déterminer qui commence, il y a 2 possibilités, selon le type de joueurs et le temps qu'on a:
- soit on se base sur l'[Indice de reparabilité](https://www.indicereparabilite.fr/appareils/multimedia/smartphone/) du smartphone de chaque joueur; celui qui commence est celui qui a l'indice le plus élevé
- soit l'âge du smartphone de chaque joueur. Si un joueur à un smartphone reconditionnés ou a récupéré un vieux smartphone, c'est mieux. Celui ou celle qui n'a pas de smartphone commence !


Après **chaque tour de table** :

- on tire une carte événement valable pour tous les joueurs
- on lit la carte et on fait l'action écrite sur la carte
- le joueur suivant devient le premier joueur du tour suivant


**Conditions de fin de partie :** La partie se termine quand :

- un des joueurs a construit son smartphone en entier,
- la carte événement "Fin de partie" est tirée,
- il n'y a plus de cartes Malus. Dans ce cas, on ne peut plus acheter de cartes PolluPlus ou PolluMoins.

On termine le tour et on compte les points pour déclarer le vainqueur.

**Décompte des points**: le gagnant est celui qui a le plus de points. On compte les points en fonction :  

- des composants construits de votre téléphone. Chaque composant rapporte un certain nombre de points, inscrit sur le plateau de jeu.
- +2 points pour celui qui a le plus de cartes Recyclage, y compris celles posées sur le plateau [à tester: compter uniquement les cartes recyclées qui sont sur le plateau et pas dans la main]
- [à tester: -2 points pour celui qui a le plus de cartes Pollu+ dans sa main]
- Mais en ces temps incertains, les règles du jeu peuvent évoluer rapidement...

En cas d'égalité, le gagnant est celui qui a le plus de cartes recyclées, puis le moins de cartes PolluPlus, puis le moins de cartes PolluMoins.

## Adaptations des règles pour une partie en 20'                                                      
- On ne garde que les événements :
    - pour la V1 (cartes de la boite de jeu) : 1 ; 2 ; 8 ; 10 ; 15  ;
    - pour la V2 (cartes de la boite de jeu) : 2 ; 4 ; 6 ; 9 ; 15  ;
- Position des malus de type "événement" (uniquement pour la V1)
    - 3 ou 4 joueurs
        - 9e place pour la première alerte
        - 14e place pour la deuxième alerte
    - 5 joueurs
        - 12e place pour la première alerte
        - 17e place pour la deuxième alerte
- On ne lit les textes des malus que durant un tour
- Tour de jeu : l'action "échange entre joueurs est annulée"
