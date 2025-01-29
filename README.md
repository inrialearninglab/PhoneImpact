# Jeu sérieux Phone Impact

[Portail du jeu avec tous les documents nécessaires](https://learninglab.gitlabpages.inria.fr/serious-game/smartphone/index.html)

Sommaire:

- [Génération automatique des cartes en local](#génération_automatique_des_cartes_en_local)
- [Déploiement en local du portail de ressources](#déploiement_en_local_du_portail_de_ressources)

## Génération automatique des cartes en local
### Environment Docker  

#### Create image
```shell
docker build -t phone-impact .
```

#### Run container
Execute this command inside the project folder and the result will be generated in `_output`
```shell
docker run -v .:/app phone-impact
```

#### Enter container
```shell
docker run -v .:/app --entrypoint sh -it phone-impact  
```
#### Generate the event cards 
```shell
ruby decks/pnp/events.rb
```
The file `_output_/events.pdf` is generated. Copy it in docs/PrintAndPlay/pnp/events.pdf if it's ok.

#### Generate the malus cards
```shell
ruby decks/pnp/malus.rb
```
The file `_output_/malus.pdf` is generated. Copy it in docs/PrintAndPlay/pnp/malus.pdf if it's ok.

[//]: # (## Generating cards)

[//]: # (By default the cards you generate aren't added to the git repository, to add your cards please move the content of the _output file inside the pdf file by executing this command:)

[//]: # (```shell)

[//]: # (mv _output/*.pdf PrintAndPlay/)

[//]: # (```)


## Déploiement en local du portail de ressources
Attention, partie assez technique !

Afin de visualiser vos modifications au fil de l'eau, vous pouvez déployer le portail localement sur votre ordinateur.

### Installation
- Installer Miniconda : https://docs.conda.io/en/latest/miniconda.html
- Installer les dépendances :
  ```shell
  pip install -r requirements.txt
  ```

### Visualisation du portail en local

```shell
mkdocs serve
```

Après quelques secondes, le site devrait être visible ici : http://localhost:8000
