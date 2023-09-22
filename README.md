# Jeu sérieux Phone Impact

Sous titre : Découvrir l'impact des composants du smartphone avec le jeu

## Informations générales

- Sujet : démontrer qu’un smartphone pollue à cause des matières premières (extraction et transformation) et de la fabrication des principaux composants

- Joueurs : 3 à 5
- Âge : Dès 12 ans
- Durée : 40 min

Objectif pédagogique principal : découvrir l'impact environnemental des composants du smartphone

Objectifs pédagogiques secondaires :  
- Identifier les différents types d’éléments nécessaires à la fabrication d’un smartphone
- Citer quels types de métaux sont nécessaires pour chaque partie du smartphone (systext.org, blog.recommerce.org)
- "Réaliser" que les réserves minières sont limitées
- Identifier qu’il existe des filières de minage plus ou moins polluantes
- Reconnaître qu'utiliser des métaux issus du recyclage est moins polluant mais pas toujours possible (et la pollution pour le recyclage n’est pas nulle)
- S'interroger sur le fait que la pollution passée a des répercussions sur le présent
- Déduire qu'il est possible de modifier le comportement d'un constructeur en ajoutant des pénalités s'il pollue

Ce jeu s'inscrit dans un parcours pédagogique :
- [Mooc "Impact environnementaux du numérique"](https://www.fun-mooc.fr/fr/cours/impacts-environnementaux-du-numerique/)
- [ePoc "Smartphone et planète"](https://epoc.inria.fr/epocs/E007MM/)

## Règles du jeu et matériel

[Voir les règles](supports/regles.md)

## Instructions pour l'animateur

[Instructions pour animer le jeu](supports/InstructionsAnimateur.md)

## Instruction Print&Play

[Voir les instructions](./PNP.md)


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
