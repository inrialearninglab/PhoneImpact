# SMARTPHONE fort minable (FORage MINage durABLE)

## Informations générales
Cible : le grand public, plus de 16 ans

Sujet : démontrer qu’un smartphone pollue à cause des matières premières (extraction et transformation) et de la fabrication des principaux composants

Parcours : Mooc Impact’Num (Module 2.3: Pourrons-nous continuer longtemps à fabriquer des équipements informatiques ?) + Epoc (formation sur mobile) “Le smartphone et la planète”

Durée : 30/40mn pour que le jeu puisse être utilisé en cours

Emotions : l’apprenant doit être étonné/surpris, scandalisé

Objectifs pédagogiques :  
- Identifier les différents types d’éléments nécessaires à la fabrication d’un smartphone
  - Matières synthétiques : plastique, fibre… (30 à 50 % des matériaux)
  - Métaux précieux (et rares) : or, argent, le platine, le palladium (fiche concept 2.3.1)
  - Métaux rares (hors précieux)/Autres métaux rares : indium, lithium, cobalt, tantale
  - Métaux mineurs (et non rares): aluminium, cuivre, Nickel
  - Terres rares : pas rare mais difficile à extraire : néodyme, praséodyme, terbium et dysprosium
- Savoir quels types de métaux sont nécessaires pour chaque partie du smartphone (systext.org, blog.recommerce.org)
- Réaliser que les réserves minières sont limitées
- Réaliser que les méthodes d’extraction et de séparation de ces métaux font appel à des procédés très polluants
- Savoir qu’il existe des filiaires plus durables/moins polluantes : pas de minéraux de conflits ou de travail des enfants, méthodes d’extraction moins polluantes ? (à vérifier)
- Utiliser des métaux issus du recyclage est moins polluant mais pas toujours possible (et la pollution pour le recyclage n’est pas nulle)
- Les métaux majeurs (cuivre, plomb, fer, aluminium…) et les métaux précieux (or, argent, platine…) sont recyclés à plus de 50%.
- En revanche, les métaux mineurs (dont les terres rares) ne sont quasiment pas recyclés : moins de 1% par exemple pour l’indium, le néodyme, le tantale, le gallium et le germanium, et aucun recyclage pour d’autres métaux mineurs

## Cible et instructions animateur

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

### Image
[Docker image](https://hub.docker.com/r/viaudnathan/smartphone-deck)

### Run container
Execute this command and fill the local path for the generated cards
```shell
docker run -it -d -v path/to/generated_decks:/app/_output viaudnathan/smartphone-deck
```

### Instruction
Everything is included inside the container so you can change and commit your changes;

## Generating cards
By default the cards you generate aren't added to the git repository, to add your cards please move the content of the _output file inside the pdf file by executing this command:
```shell
mv _output/*.pdf pdf/
```
