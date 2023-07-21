# PHONE IMPACT

Sous titre : Découvre l'impact des composants de ton smartphone

## Informations générales
Cible : le grand public, plus de 16 ans

Sujet : démontrer qu’un smartphone pollue à cause des matières premières (extraction et transformation) et de la fabrication des principaux composants

Parcours : Mooc Impact’Num (Module 2.3: Pourrons-nous continuer longtemps à fabriquer des équipements informatiques ?) + Epoc (formation sur mobile) “Le smartphone et la planète”

Durée : 30/40mn pour que le jeu puisse être utilisé en cours

Nombre de joueurs : de 3 à 5

Emotions : l’apprenant doit être étonné/surpris, scandalisé

Objectif pédagogique principal : découvrir l'impact environnemental des composants du smartphone

Objectifs pédagogiques (détail) :  
- Identifier les différents types d’éléments nécessaires à la fabrication d’un smartphone
  - Matière synthétique : plastique, fibre,… (30 à 50 % des matériaux)
  - Métal précieux (et rares) : or, argent, platine, palladium,...
  - Métal rare (hors précieux)/Autres métaux rares : indium, lithium, tantale,...
  - Métal commun (et non rares): aluminium, cuivre, nickel,... (nécessite beaucoup de ressources ou d'énergie)
  - Terre rare : yttrium, néodyme, gadolinium,... (pas rare mais difficile à extraire)
- Enoncer quels types de métaux sont nécessaires pour chaque partie du smartphone (systext.org, blog.recommerce.org)
- Réaliser que les réserves minières sont limitées
- Savoir qu’il existe des filières de minage plus ou moins polluantes : pas de minéraux de conflits ou de travail des enfants, méthodes d’extraction moins polluantes ? (à vérifier)
- Prendre conscience qu'utiliser des métaux issus du recyclage est moins polluant mais pas toujours possible (et la pollution pour le recyclage n’est pas nulle)
- Réaliser que la pollution passée a des répercussions sur le présent
- Réaliser qu'il est possible de modifier le comportement d'un constructeur en ajoutant des pénalités s'il pollue

## Instructions animateur

[Voir les instructions](./Animation.md)

## Instruction Print&Play

[Voir les instructions](./PNP.md)

## Règle du jeu

[Voir les règles](./RULES.md)


## Contributing

### Requirements

- Ruby 2.4+
- Rake

### Install

`gem install squib`

### Run

`rake`

Deck of cards are generated in `_output_`

## Docker environment

### Create image
```shell
docker build -t [image_name] .
```

### Run container
Execute this command inside the project folder and the result will be generated in `_output`
```shell
docker run -v .:/app [image_name]
```

## Generating cards
By default the cards you generate aren't added to the git repository, to add your cards please move the content of the _output file inside the pdf file by executing this command:
```shell
mv _output/*.pdf pdf/
```
