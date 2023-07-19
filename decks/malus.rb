require_relative 'common'

def makeCards(number)
    cut = Array.new(number, 10)
    # split into page of 16 cards
    pages_cut = cut.each_slice(16).to_a

    # for each page add back of cards
    cut = []
    pages_cut.each_with_index do |page, index|
        cut = cut + pages_cut[index] + Array.new(16, 0)
    end

    return cut
end

malus = [
    "Le numérique représente à lui seul entre 6 à 10% de la consommation mondiale d'électricité [1]",
    "Le numérique représente aujourd'hui env. 4 % des émissions de gaz à effet de serre (GES) dans le monde [2]",
    "L'empreinte énergétique du numérique augmente chaque année de 6% ce qui veut dire un doublement tous les 12 ans [3]",
    "C’est la carte électronique du smartphone qui émet la majorité des gaz à effet de serre [4]",
    "Les phases de production et de fin de vie concentrent la majorité des impacts environnementaux (hors GES) [5]",
    "L'extraction des métaux génère d'importants impacts malgré des normes environnementales plus strictes mais inégalement appliquées [6]",
    "Dans le monde, 83% des équipements électroniques ne sont pas recyclés dans la bonne filière, entraînant une dispersion et une perte des métaux non recyclés [7]",
    "L'extraction des métaux requiert des quantités importantes d'eau, d'autant plus que la concentration de métaux dans les minerais est généralement faible (sauf exceptions) [8]",
    "Des produits + ou – toxiques sont issus des déchets miniers, dont le stockage plus ou moins sécurisé sous forme liquide comporte un risque d’épanchement dans la nature, mais aussi des déchets électroniques qui se retrouvent encore trop souvent dans des décharges à ciel ouvert [9]",
    "1,4 milliard de smartphones ont été vendus dans le monde en 2019 [10]",
    "La durée d’utilisation moyenne d’un smartphone en France se situe entre 20 et 24 mois [11]",
    "Le nombre de smartphones en usage dans le monde est de l’ordre de 4 milliards, plus un très grand nombre qui attendent dans des tiroirs [12]",
    "le Néodyme et le Praséodyme sont utilisés pour produire les vibrations du téléphone [13]",
    "Certains métaux abondants exigent une grande quantité d’énergie pour être extraits et raffinés (ex: Aluminium) [14]",
    "Certains métaux sont précieux et stratégiques dans les nouvelles technologies comme l’Or, l’Argent ou le Palladium [15]",
    "Certains métaux sont abondants mais dont l’extraction génère des déchets radioactifs difficiles à gérer (ex: les terres rares) [16]",
    "L'or présent dans les déchets électroniques constitue la principale source de valeur de ces déchets, avec près de 19 milliards d’euros pour seulement 500 tonnes de matière [17]",
    "l’or est utilisé principalement pour les propriétés anti-oxydantes (ne rouille pas), de conductibilité de l’électricité sur les cartes électroniques et parce qu’il est très facile à travailler (on dit qu’il est ductile) [18]",
    "Acheter un smartphone reconditionné réduit son impact environnemental de près de 77 à 91 % par rapport à l'achat d'un produit neuf [19]",
    "On parle de 'mines urbaines' pour désigner ces stocks de déchets de cartes électroniques [20]",
    "La soudaine demande de tantale liée à la miniaturisation de nos smartphones que l’on souhaite suffisamment plats pour les glisser dans nos poches, a fait exploser le nombre de mines artisanales et les conflits armés autour de ces ressources [21]",
    "Le tantale (métal rare) est employé pour faciliter la miniaturisation et pour sa nature réfractaire [22]",
    "On trouve l’indium (métal rare) dans le film transparent qui recouvre l’écran d’un smartphone [23]",
    "les réserves d'indium s’épuisent très vite alors que le recyclage n’est pas encore au rendez-vous [24]",
    "Il y a en circulation dans le monde des milliards de smartphones, qui concentrent de grandes quantités de métaux (de l’ordre de 40 tonnes d’or, entre 1 et 2 tonnes d’Indium et de Tantale) [25]",
    "Le smartphone d'aujourd'hui contient plus de 50 métaux : une condition pour avoir toutes les fonctionnalités de nos équipements [26]",
    "De l'Indium et de l'étain sont nécessaires à la fabrication de nos écrans pour transformer l'effleurement de notre index en « clic » [27]",
    "Les LED contiennent de base un composé de gallium (extrait du minerai d'aluminium) et au moins un autre atome, qui va déterminer la couleur « de base » de la LED (arsenic + phosphore pour le rouge orangé) [28]",
    "Les méthodes d'extraction et de séparation des terres rares font appel à des procédés complexes et très polluants : rejets d'acides, de bases, de solvants, de métaux lourds ou de déchets radioactifs [29]",
    "Les processus d'extraction et de séparation des terres rares requièrent de grandes quantités d'eau [30]",
    "Les plastiques et les matières synthétiques représentent 30 à 50 % des matériaux nécessaires aux smartphones [31]",
    "le verre et la céramique représentent 10 à 20 % des matériaux nécessaires aux smartphones [32]",
    "les métaux représentent 40 à 60 % des matériaux dans la composition d'un smartphone [33]",
    "Sur quantité de métaux d'un smartphone, 80 à 85 % sont des matériaux ferreux et non ferreux comme le cuivre, l'aluminium, le zinc, l'étain, le chrome ou le nickel.. [34]",
    "Sur quantité de métaux d'un smartphone, 0,5 % sont des métaux précieux : l'or, l'argent, le platine, le palladium.. [35]",
    "Sur quantité de métaux d'un smartphone,  0,1 % de terres rares et métaux spéciaux : europium, yttrium, terbium, gallium, tungstène,... [36]",
    "Le taux de recyclage des métaux des TIC est bas voire extrêmement bas (inférieur à 50% pour plus de la moitié d'entre eux, pour certains inférieur à 1%) et ne permet donc pas de couvrir 100% de nos besoins en matières premières [37]",
    "Le prix de certains métaux recyclés sur le marché peut être plus élevé que les métaux primaires, n'incitant donc pas au développement des filières de recyclage [38]",
    "84% des Français possèdent un smartphone [39]",
    "63% des smartphones utilisés ont moins de 2 ans [40]",
    "Un smartphone fait 4 fois le tour du monde de la conception à la vente [41]",
    "1,43 milliards de smartphones ont été vendus dans le monde en 2021 [42]",
    "3/4 des impacts d'un téléphone sont dus à sa fabrication [43]",
    "La France a été le premier pays au monde à interdire la pratique de l'obsolescence programmée en 2015 [44]",
    "Un téléphone portable contient en moyenne plus de 50 matériaux différents [45]",
    "Depuis 2021, le reglement 3TG (étain, tentale, tungtène et or) permet de réguler les chaines d'approvisionnement et forcer la transparence des differents acteurs [46]",
    "80% des impacts environnementaux associés à un smartphone ont lieu lors de sa fabrication [47]",
    "Le trafic de données mobiles devrait atteindre 131 exaoctets par mois d'ici 2025, soit une augmentation spectaculaire par rapport aux 35 exaoctets mensuels, en 2021 [48]",
    "Environ 63 % des utilisateurs d'Internet dans le monde se connectent via un smartphone [49]",
    "La nomophobie décrit la peur excessive à l’idée de perdre ou d’être séparé de son smartphone [50]",
]

layouts = ['economy.yml', 'templates/resource.yml']
cards = makeCards(50)
puts "Create deck malus of #{cards.length()/2} cards"

Squib::Deck.new cards: malus.length(), layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: '#333', stroke_width: cards, radius:16
    rect layout: 'safe', stroke_color: 'white'
    text str:'Malus', x: 0, y: 100, width: 825, height: 50, font: 'Baloo 2 bold 30', align: 'center', color: '#333'
    svg layout: 'po', mask: '#333'
    text str: malus, x: 75, y: 600, width: 650, height: 500, font: 'Baloo 2 bold 12', align: 'center', valign: 'middle', color: '#333'
    save_pdf file: "malus.pdf", width: 3450, height: 3450*297/210 # perfect fit for 4x4 on A4
end

Squib::Deck.new cards: 2, layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: '#333', stroke_width: cards, radius:16
    rect layout: 'safe', stroke_color: 'white'
    text str:'Malus', x: 0, y: 100, width: 825, height: 50, font: 'Baloo 2 bold 30', align: 'center', color: '#e00000'
    svg layout: 'po', mask: '#e00000'
    text str:['Attention, vous commencez à trop polluer', 'Alerte pollution, vos malus sont déduis de votre total de points'], x: 100, y: 600, width: 625, height: 400, font: 'Baloo 2 bold 12', align: 'center', valign: 'middle', color: '#333'
    save_pdf file: "malus-event.pdf", width: 3450, height: 3450*297/210 # perfect fit for 4x4 on A4
end
