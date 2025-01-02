# 🚧 Sources des plateaux Smartphone

https://www.luckylight.cn/en/products/led-display/led-backlight/
https://www.oeko.de/fileadmin/oekodoc/Resource_Efficiency_ICT_LV.pdf
https://www.journaldugeek.com/2020/09/28/ecrans-amoled-ou-lcd-quels-sont-les-avantages-les-inconvenients-et-que-choisir-pour-votre-smartphone/
https://www.numerama.com/tech/701693-nitrure-de-gallium-tout-comprendre-a-ce-materiau-qui-veut-revolutionner-la-recharge.html
https://www.samsung.com/fr/guide-achat-mobile/caracteristiques/ecran-amoled-smartphone-galaxy/
https://www.servicesmobiles.fr/nouveau-materiau-conducteur-et-transparent-pour-nos-ecrans-78189
https://fr.wikipedia.org/wiki/Accumulateur_nickel-hydrure_m%C3%A9tallique
https://www.cadaoz.com/fr/blog/comprendre-la-batterie-de-votre-smartphone/

## Décomposition
Le plateau de jeu représente un smartphone composé de : 

- l'écran tactile (dalle et vitre)
- la batterie
- la coque (et ses connectiques)
- la carte mère. Par soucis de simplification, la carte mère désigne l'ensemble des composants électroniques associés : processeur, mémoire vive, disque dur, haut-parleur, microphone, caméras, antenne...

Ce choix de décomposition correspond à la réalité de la séparation des principaux composant lors du démontage d'un smartphone.

La composition en terme de catégorie d'éléments (Métal précieux, Métal rare, Métal commun, Terre rare, Autre matière) a été déterminé en tenant compte de plusieurs facteurs :

- la présence reputé ou non de ces types d'éléments dans les composants (ex: présence de terre rare dans l'écran tactile mais pas dans la batterie), en se basant sur les sources décrites plus bas, a permis de décider si la catégorie d'éléments serait nécessaire à la fabrication du composant
- la quantité de la catégorie d'éléments à rassembler pour fabriquer un composant (ex : 2 métaux commun et 1 métal rare pour la batterie) a été arbitrairement décidé à partir de plusieurs critères:
    - le nombre d'éléments appartenant à cette catégorie réputé présent dans le composant, à partir des sources bilbiographiques décrites plus bas
    - la masse relative de ces éléments réputés présents dans le composant, à partir des sources bilbiographiques décrites plus bas
    - les contraintes de game design et la jouabilité : un trop grand déséquilibre entre les composants aurait forcer certaines stratégies de construction, il apparaissait important de permettre différentes stratégies gagnantes en limitant les écarts de difficulté de construction entre les composants.

Les quantités de métaux nécessaires à la fabrication des composants sur les plateaux ne sont donc pas réellement représentatives, dans la vrai vie il ne faut pas la même quantité/diversité de métaux communs pour construire la carte mère (et tous les composants associés) et la batterie d'un smartphone. Néanmoins, le croisement de sources bibliographiques ont poussé les auteurs à considérer qu'il y avait un facteur d'échelle significatif entre la quantité/diversités de métaux communs nécessaires pour fabriquer la carte mère et l'écran tactile (ce qui explique le ratio arbitraire 2:1).

Le nombre de points attribués pour la construction de chaque partie provient du game design, il est lié à la difficulté en terme de jeu à rassembler les éléments constitutifs pour chacun des composants, en lien avec la rareté de chaque type de carte.

Pour plus d'information sur les catégorisations de métaux, voir le fichier Fiche_metaux.md

## Composition métallique des différents plateaux et références bibliographiques
La liste des compositions qui suit n'a pas vocation a être exhaustive, c'est une liste constituée à partir de la liste de 25 métaux considérés comme critiques et faisant l'objet d'une étude ADEME sur la criticité des métaux nécessaires à l'industrie du numérique (bientôt publiée à date 07/2024) : 

Dysprosium (Dy), Néodyme (Nd), Yttrium (Y), Indium (In), Praséodyme (Pr), Or (Au), Argent (Ag), Palladium (Pd), Platine (Pt), Ruthenium (Ru), Aluminium (Al ), Cuivre (Cu), Etain (Sn), Nickel (Ni), Zinc (Zn), Antimoine (Sb), Cobalt (Co), Lithium (Li), Magnesium (Mg), Tantale (Ta), Tungstène (W), Gallium (Ga), Germanium (Ge), Manganèse (Mn), Silicium (Si)

### Carte mère (et composants associés : disque dur, caméra, système audio...)
#### Terre Rare (x3)
- Dysprosium (Dy) : Aimants - haut parleurs, vibrateur, caméras . BRGM (2016), Fiche de criticité – Dysprosium
- Néodyme (Nd) : Aimants -  haut parleurs, vibrateur, caméras . Manhard, et al. (2016)
- Praséodyme (Pr) : Aimants -  haut parleurs, vibrateur, caméras . Manhard, et al. (2016)

#### Métaux Précieux (x5)
- Or (Au) : Finitions de circuits imprimés et de connecteurs. Manhard, et al. (2016)
- Argent (Ag) : Résistances Soudures. Manhard, et al. (2016)
- Palladium (Pd) : Finitions de circuits intégrés et de connecteurs, Condensateurs. Manhard, et al. (2016)
- Platine (Pt) : Finitions de circuits intégrés et de connecteurs. Bookhagen, et al. (2020)
- Ruthenium (Ru) : disque dur, puce mémoire, circuit intégré. Ericsson Research, 2018; Johnson Matthey, 2023

#### Métaux commun (x5)
- Aluminium (Al ) : Couche de fibre de verre. Manhard, et al. (2016)
- Cuivre (Cu) : Couche conductives,Circuits intégrés (traces),Soudures,Bobines d’acier inoxydable .Manhard, et al. (2016)
- Etain (Sn) : Soudures. Manhard, et al. (2016)
- Nickel (Ni) : Finitions de circuits imprimés, Bobine d’acier inoxydable. Bookhagen, et al. (2020)
- Zinc (Zn) :  Vis. Bookhagen, et al. (2020)

#### Autres Métaux (x5)
- Cobalt (Co) : Aimants, HDD et SDD, circuits intégrés (JRC, 2023)
- Tantale (Ta) : Condensateurs, Filtres. Manhard, et al. (2016)
- Tungstène (W) :  Vibrateur. Manhard, et al. (2016)
- Gallium (Ga) : Cartes électroniques. BRGM (2016), Fiche de criticité - Gallium
- Silicium (Si) : Circuits intégrés (Substrat, transistors Isolant). Bookhagen, et al. (2020)

### Ecran Tactile
#### Terre Rare (x1)
- Yttrium : LED, Rétro-éclairage d’écran LCD. Manhard, et al. (2016)

#### Métaux Précieux (x2)
- Argent (Ag) : The Silver Institute, 2023b . Abubakr & al. 2020
- Platine (Pt) : JRC, 2023

#### Métaux commun (x2)
- Aluminium (Al ) : Autres petites pièces. Manhard, et al. (2016)
- Etain (Sn) : Couches d’ITO (Indium Tin Oxide). Manhard, et al. (2016)

#### Autres Métaux (x3) 
- Gallium (Ga) : Rétro-éclairage d’écran LCD. (Manhard, Blepp, Fischer, & Graulich, Resource Efficiency in the ICT Sector, Final Report, 2016)
- Silicium (Si) : Rétro-éclairage Ecran LCD. Bookhagen, et al. (2020)
- Indium (In) : LED, couches ITO (Indium Tin Oxide). Sander, et al. (2019)

### Batterie
#### Terre Rare (x0)
#### Métaux Précieux (x0)
#### Métaux commun (x4)
- Aluminium (Al ) : Collecteur cathodique. Manhard, et al. (2016)
- Etain (Sn) : Couches d’ITO (Indium Tin Oxide). Manhard, et al. (2016)
- Nickel (Ni) : Batterie NiMH. COREPILE, 2023
- Cuivre (Cu) : Collecteur anodique. Manhard, et al. (2016)

#### Autres Métaux (x3)
- Cobalt (Co) : Cathode. Manhard, et al. (2016)
- Lithium (Li) : Cathode/Anode. IRIS, 2021
- Manganèse (Mn) : Bookhagen, et al. (2020)

### Coque (et connectiques)
#### Terre Rare (x0)
#### Métaux Précieux (x0)
#### Métaux commun (x5)
- Aluminium (Al ) : Autres petites pièces. Manhard, et al. (2016)
- Cuivre (Cu) : Conduite d’évacuation de la chaleur, Placages, Vis. Manhard, et al. (2016)
- Etain (Sn) : Soudures. Manhard, et al. (2016)
- Zinc (Zn) : Vis. Bookhagen, et al. (2020)
- Magnesium (Mg) : transfert et la dissipation de la chaleur, protection contre interférences electromagnetiques. International Magnesium Association, 2023

#### Autres Métaux (x1)
- Silicium (Si) : Adhésifs en caoutchouc. Bookhagen, et al. (2020)
- Antoine (Sb) : plastiques


## Références bibliographiques :
- ADEME (2024) Etude numérique et métaux - Impacts environnementaux du numérique et besoins en métaux, URL : https://librairie.ademe.fr/economie-circulaire-et-dechets/7713-etude-numerique-et-metaux.html
- BRGM (2016), Fiche de criticité – Dysprosium, URL : https://www.mineralinfo.fr/sites/default/files/2023-03/fiche_criticite_dysprosium_publique_160913.pdf 
- BRGM (2016), Fiche de criticité - Gallium, URL : https://www.mineralinfo.fr/sites/default/files/documents/2020-12/fichecriticitegallium-publique160912.pdf
- Ericsson Research (2018), A high-level estimate of the material, EPiC Series in Computing, pages 168-186, URL : https://easychair.org/publications/paper/XvgV 
- Manhard, Andreas, Markus Blepp, Corina Fischer, et Kathrin Graulich, 2016. Resource Efficiency in the ICT Sector, Final Report. Freiburg: institute of Applied Ecology, Oeko-Institut. https://www.oeko.de/fileadmin/oekodoc/Resource_Efficiency_ICT_LV.pdf
- Bookhagen, Bodo, Bastian D, P Buchholz, M Faulstich, C Opper, J Irrgeher, T Prohaska, et C Koeberl. 2020. «Metallic resources in smartphones.» Resources Policy 68. https://econpapers.repec.org/article/eeejrpoli/v_3a68_3ay_3a2020_3ai_3ac_3as0301420720301392.htm
- Johnson Matthey (2023), PGM market report, URL : https://matthey.com/documents/161599/404086/PGM+Market+Report+May23.pdf/2f048a72-74a8-8b23-f18e-c875000ed76b?t=1684144507321
- JRC (2023), Supply chain analysis and material demand forecast in strategic technologies and sectors in the EU – A foresight study, URL : https://publications.jrc.ec.europa.eu/repository/handle/JRC132889
- IRIS (2021), Géopolitique de l’innovation, 14 fiches pour découvrir les technologies des batteries, URL : https://www.iris-france.org/notes/geopolitique-de-linnovation-14-fiches-pour-decouvrir-les-technologies-des-batteries/ 
- International Magnesium Association (2023), Magnesium applications, URL : Magnesium Applications - International Magnesium Association (intlmag.org)
- The Silver Institute (2023b), Silver supply & demand, URL : https://www.silverinstitute.org/silver-supply-demand/
- Abubakr & al. 2020, Flexible Screens Using Silver Nanowire. https://www.researchgate.net/publication/340310325_Flexible_Screens_Using_Silver_Nanowire
=======
# Composition métallique des plateaux de jeu

## Décomposition
Le plateau de jeu représente un smartphone composé de : 

- l'écran tactile (dalle et vitre)
- la batterie
- la coque (et ses connectiques)
- la carte mère. Par soucis de simplification, la carte mère désigne l'ensemble des composants électroniques associés : processeur, mémoire vive, disque dur, haut-parleur, microphone, caméras, antenne...

Ce choix de décomposition correspond à la réalité de la séparation des principaux composant lors du démontage d'un smartphone.

La composition en terme de catégorie d'éléments (Métal précieux, Métal rare, Métal commun, Terre rare, Autre matière) a été déterminé en tenant compte de plusieurs facteurs :

- la présence reputé ou non de ces types d'éléments dans les composants (ex: présence de terre rare dans l'écran tactile mais pas dans la batterie), en se basant sur les sources décrites plus bas, a permis de décider si la catégorie d'éléments serait nécessaire à la fabrication du composant
- la quantité de la catégorie d'éléments à rassembler pour fabriquer un composant (ex : 2 métaux commun et 1 métal rare pour la batterie) a été arbitrairement décidé à partir de plusieurs critères:
    - le nombre d'éléments appartenant à cette catégorie réputé présent dans le composant, à partir des sources bilbiographiques décrites plus bas
    - la masse relative de ces éléments réputés présents dans le composant, à partir des sources bilbiographiques décrites plus bas
    - les contraintes de game design et la jouabilité : un trop grand déséquilibre entre les composants aurait forcer certaines stratégies de construction, il apparaissait important de permettre différentes stratégies gagnantes en limitant les écarts de difficulté de construction entre les composants.

Les quantités de métaux nécessaires à la fabrication des composants sur les plateaux ne sont donc pas réellement représentatives, dans la vrai vie il ne faut pas la même quantité/diversité de métaux communs pour construire la carte mère (et tous les composants associés) et la batterie d'un smartphone. Néanmoins, le croisement de sources bibliographiques ont poussé les auteurs à considérer qu'il y avait un facteur d'échelle significatif entre la quantité/diversités de métaux communs nécessaires pour fabriquer la carte mère et l'écran tactile (ce qui explique le ratio arbitraire 2:1).

Le nombre de points attribués pour la construction de chaque partie provient du game design, il est lié à la difficulté en terme de jeu à rassembler les éléments constitutifs pour chacun des composants, en lien avec la rareté de chaque type de carte.

Pour plus d'information sur les catégorisations de métaux, voir le fichier Fiche_metaux.md

## Composition dans le schéma de Systext

Carte mère : Ni, Pb, Sn, Bi, Au, Ag, W, Pt, Rh, Be, Cu, P, As, Ga, Ge, Si, Zr, Ru, Nd, Fe, B, Sm, Co, Pr, Cl, Dy, Ta, Nb, Pd
Boîtier : Mg, C, Sb, Br, Ni, Zn
Écran tactile : In, Sn, Si, Al, K, Eu, Tb, Y, Gd, Ce, Tm, La, B, Ba, S, Mg, Mo, Hg
Batterie : Li, Co, C, F, Mn, V, P, Al

Classification basée sur l'IFPEN (métaux de base et métaux précieux avec ajout du rhénium qui est un platinoïde) et sur Wikipedia (pour les terres rares).
* **Les métaux de base** : fer (Fe), aluminium (Al), titane (Ti), magnésium (Mg), manganèse (Mn), chrome (Cr), zinc (Zn), plomb (Pb), cuivre (Cu), nickel (Ni), étain (Sn)
* **Les métaux précieux** = or, argent + 7 platinoïdes : or (Au), argent (Ag), platine (Pt), palladium (Pd), iridium (Ir), osmium (Os), rhodium (Rh), ruthenium (Ru), rhénium (Re)
* **Les terres rares** = scandium, yttrium + les 15 lanthanides : scandium (Sc), yttrium (Y), lanthane (La), cérium (Ce), praséodyme (Pr), néodyme (Nd), prométhium (Pm), samarium (Sm), europium (Eu), gadolinium (Gd), terbium (Tb), dysprosium (Dy), holmium (Ho), erbium (Er), thulium (Tm), ytterbium (Yb), lutécium (Lu) 

Dans mon smartphone il y a 
* Métaux communs : Ni, Pb, Sn, Cu, Fe, Mg, Zn, Al, Mn
* Métaux précieux : Au, Ag, Pt, Rh, Ru, Pd
* Terres rares : Nd, Sm, Pr, Dy, Eu, Tb, Y, Gd, Ce, Tm, La
* Autres métaux et métalloïdes : Bi, W, Be, As, Ga, Ge, Si, Zr, B, Co, Ta, Nb, Sb, In, K, Ba, Mo, Hg, Li, V
* Autres éléments chimiques non métalliques : P, Cl, C, Br, S, F

## Composition métallique des différents plateaux et références bibliographiques
La liste des compositions qui suit n'a pas vocation a être exhaustive, c'est une liste constituée à partir de la liste de 25 métaux considérés comme critiques et faisant l'objet d'une étude ADEME sur la criticité des métaux nécessaires à l'industrie du numérique (bientôt publiée à date 07/2024) : 

Dysprosium (Dy), Néodyme (Nd), Yttrium (Y), Indium (In), Praséodyme (Pr), Or (Au), Argent (Ag), Palladium (Pd), Platine (Pt), Ruthenium (Ru), Aluminium (Al ), Cuivre (Cu), Etain (Sn), Nickel (Ni), Zinc (Zn), Antimoine (Sb), Cobalt (Co), Lithium (Li), Magnesium (Mg), Tantale (Ta), Tungstène (W), Gallium (Ga), Germanium (Ge), Manganèse (Mn), Silicium (Si)

### Carte mère (et composants associés : disque dur, caméra, système audio...)
#### Terre Rare (x3)
- Dysprosium (Dy) : Aimants - haut parleurs, vibrateur, caméras . BRGM (2016), Fiche de criticité – Dysprosium
- Néodyme (Nd) : Aimants -  haut parleurs, vibrateur, caméras . Manhard, et al. (2016)
- Praséodyme (Pr) : Aimants -  haut parleurs, vibrateur, caméras . Manhard, et al. (2016)

#### Métaux Précieux (x5)
- Or (Au) : Finitions de circuits imprimés et de connecteurs. Manhard, et al. (2016)
- Argent (Ag) : Résistances Soudures. Manhard, et al. (2016)
- Palladium (Pd) : Finitions de circuits intégrés et de connecteurs, Condensateurs. Manhard, et al. (2016)
- Platine (Pt) : Finitions de circuits intégrés et de connecteurs. Bookhagen, et al. (2020)
- Ruthenium (Ru) : disque dur, puce mémoire, circuit intégré. Ericsson Research, 2018; Johnson Matthey, 2023

#### Métaux commun (x5)
- Aluminium (Al ) : Couche de fibre de verre. Manhard, et al. (2016)
- Cuivre (Cu) : Couche conductives,Circuits intégrés (traces),Soudures,Bobines d’acier inoxydable .Manhard, et al. (2016)
- Etain (Sn) : Soudures. Manhard, et al. (2016)
- Nickel (Ni) : Finitions de circuits imprimés, Bobine d’acier inoxydable. Bookhagen, et al. (2020)
- Zinc (Zn) :  Vis. Bookhagen, et al. (2020)

#### Autres Métaux (x5)
- Cobalt (Co) : Aimants, HDD et SDD, circuits intégrés (JRC, 2023)
- Tantale (Ta) : Condensateurs, Filtres. Manhard, et al. (2016)
- Tungstène (W) :  Vibrateur. Manhard, et al. (2016)
- Gallium (Ga) : Cartes électroniques. BRGM (2016), Fiche de criticité - Gallium
- Silicium (Si) : Circuits intégrés (Substrat, transistors Isolant). Bookhagen, et al. (2020)

### Ecran Tactile
#### Terre Rare (x1)
- Yttrium : LED, Rétro-éclairage d’écran LCD. Manhard, et al. (2016)

#### Métaux Précieux (x2)
- Argent (Ag) : The Silver Institute, 2023b . Abubakr & al. 2020
- Platine (Pt) : JRC, 2023

#### Métaux commun (x2)
- Aluminium (Al ) : Autres petites pièces. Manhard, et al. (2016)
- Etain (Sn) : Couches d’ITO (Indium Tin Oxide). Manhard, et al. (2016)

#### Autres Métaux (x3) 
- Gallium (Ga) : Rétro-éclairage d’écran LCD. (Manhard, Blepp, Fischer, & Graulich, Resource Efficiency in the ICT Sector, Final Report, 2016)
- Silicium (Si) : Rétro-éclairage Ecran LCD. Bookhagen, et al. (2020)
- Indium (In) : LED, couches ITO (Indium Tin Oxide). Sander, et al. (2019)

### Batterie
#### Terre Rare (x0)
#### Métaux Précieux (x0)
#### Métaux commun (x4)
- Aluminium (Al ) : Collecteur cathodique. Manhard, et al. (2016)
- Etain (Sn) : Couches d’ITO (Indium Tin Oxide). Manhard, et al. (2016)
- Nickel (Ni) : Batterie NiMH. COREPILE, 2023
- Cuivre (Cu) : Collecteur anodique. Manhard, et al. (2016)

#### Autres Métaux (x3)
- Cobalt (Co) : Cathode. Manhard, et al. (2016)
- Lithium (Li) : Cathode/Anode. IRIS, 2021
- Manganèse (Mn) : Bookhagen, et al. (2020)

### Coque (et connectiques)
#### Terre Rare (x0)
#### Métaux Précieux (x0)
#### Métaux commun (x5)
- Aluminium (Al ) : Autres petites pièces. Manhard, et al. (2016)
- Cuivre (Cu) : Conduite d’évacuation de la chaleur, Placages, Vis. Manhard, et al. (2016)
- Etain (Sn) : Soudures. Manhard, et al. (2016)
- Zinc (Zn) : Vis. Bookhagen, et al. (2020)
- Magnesium (Mg) : transfert et la dissipation de la chaleur, protection contre interférences electromagnetiques. International Magnesium Association, 2023

#### Autres Métaux (x1)
- Silicium (Si) : Adhésifs en caoutchouc. Bookhagen, et al. (2020)
- Antoine (Sb) : plastiques


## Références bibliographiques :
- BRGM (2016), Fiche de criticité – Dysprosium, URL : https://www.mineralinfo.fr/sites/default/files/2023-03/fiche_criticite_dysprosium_publique_160913.pdf 
- BRGM (2016), Fiche de criticité - Gallium, URL : https://www.mineralinfo.fr/sites/default/files/documents/2020-12/fichecriticitegallium-publique160912.pdf
- Ericsson Research (2018), A high-level estimate of the material, EPiC Series in Computing, pages 168-186, URL : https://easychair.org/publications/paper/XvgV 
- Manhard, Andreas, Markus Blepp, Corina Fischer, et Kathrin Graulich, 2016. Resource Efficiency in the ICT Sector, Final Report. Freiburg: institute of Applied Ecology, Oeko-Institut. https://www.oeko.de/fileadmin/oekodoc/Resource_Efficiency_ICT_LV.pdf
- Bookhagen, Bodo, Bastian D, P Buchholz, M Faulstich, C Opper, J Irrgeher, T Prohaska, et C Koeberl. 2020. «Metallic resources in smartphones.» Resources Policy 68. https://econpapers.repec.org/article/eeejrpoli/v_3a68_3ay_3a2020_3ai_3ac_3as0301420720301392.htm
- Johnson Matthey (2023), PGM market report, URL : https://matthey.com/documents/161599/404086/PGM+Market+Report+May23.pdf/2f048a72-74a8-8b23-f18e-c875000ed76b?t=1684144507321
- JRC (2023), Supply chain analysis and material demand forecast in strategic technologies and sectors in the EU – A foresight study, URL : https://publications.jrc.ec.europa.eu/repository/handle/JRC132889
- IRIS (2021), Géopolitique de l’innovation, 14 fiches pour découvrir les technologies des batteries, URL : https://www.iris-france.org/notes/geopolitique-de-linnovation-14-fiches-pour-decouvrir-les-technologies-des-batteries/ 
- International Magnesium Association (2023), Magnesium applications, URL : Magnesium Applications - International Magnesium Association (intlmag.org)
- The Silver Institute (2023b), Silver supply & demand, URL : https://www.silverinstitute.org/silver-supply-demand/
- Abubakr & al. 2020, Flexible Screens Using Silver Nanowire. https://www.researchgate.net/publication/340310325_Flexible_Screens_Using_Silver_Nanowire
>>>>>>> Stashed changes
