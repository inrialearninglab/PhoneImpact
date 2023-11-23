# Jeu sérieux Phone Impact

[Site du jeu avec tous les documents nécessaires](https://learninglab.gitlabpages.inria.fr/serious-game/smartphone/index.html)

Sous titre : Découvrir l'impact des composants du smartphone avec le jeu



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
docker build -t phone-impact .
```

### Run container
Execute this command inside the project folder and the result will be generated in `_output`
```shell
docker run -v .:/app phone-impact
```

## Generating cards
By default the cards you generate aren't added to the git repository, to add your cards please move the content of the _output file inside the pdf file by executing this command:
```shell
mv _output/*.pdf pdf/
```
