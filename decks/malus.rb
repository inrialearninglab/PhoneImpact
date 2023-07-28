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
    "Le numérique représente aujourd'hui env. 4 % des émissions de gaz à effet de serre (GES) dans le monde [1]",
    "La consommation d’électricité due au numérique aura augmenté de 30% en 2030 [2]",
    "83% des équipements électroniques mondiaux ne sont pas correctement recyclés, provoquant la dispersion et la perte de métaux précieux [3]",
    "D’importantes quantités d’eau sont nécessaires pour l’extraction des métaux [3]",
    "Certains métaux abondants exigent une grande quantité d’énergie pour être extraits et raffinés (ex: Aluminium) [4]",
    "Certains métaux sont abondants mais leur extraction génère des déchets radioactifs difficiles à gérer [4]",
    "Des milliards de smartphones en circulation dans le monde contiennent des quantités importantes de métaux précieux (40 tonnes d'or, 1 à 2 tonnes d'indium et de tantale)[4]",
    "Le smartphone d’aujourd’hui contient plus de 50 métaux : une condition pour avoir toutes les fonctionnalités de nos équipements [5]",
    "84% des Français possèdent un smartphone [6]",
    "Un smartphone fait 4 fois le tour du monde de la conception à la vente [6]",
    "1,43 milliards de smartphones ont été vendus dans le monde en 2021 [6]",
    "3/4 des impacts d’un téléphone sont dus à sa fabrication [6]",
    "“Nomophobie” : la peur excessive de perdre ou d’être séparé de son téléphone portable [7]",
    "En 2020, le nombre d’utilisateurs de smartphones dans le monde était estimé à plus de 3,8 milliards [8]",
    "1 tonne de matériau/personne/année pour nos usages numériques [9]",
    "1 français génère 300kg/an de déchets pour ses seuls usages numérique [9]",
    "De 1932 à 1966 (JPN) :  l'usine pétrochimique Shin Nippon Chisso a rejeté du mercure dans la baie de Minamata, contaminant les poissons consommés par les habitants [10]",
    "Selon le World Resources Institute, d’ici 2040, la plupart des pays n’auront plus assez de ressources pour répondre à leur demande en eau [11]",
    "Le réchauffement climatique aggrave la crise hydrique au Maghreb, menaçant des coupures d’eau voire jours zéro[12]",
    "Près de 90 % des ressources en cuivre connues aujourd’hui seraient extraites d’ici 2050 dans un scénario 2°C [13]",
    "Catastrophe d’Aberfan (UK, 1966) : un glissement de terrain d’un tas de déchets engloutit une école et un bout de la ville, 144 victimes, dont 116 écoliers [14]",
    "En 2020, des niveaux de plomb anormalement élevés ont été détectés dans le sang des enfants d’Hoboken, en Belgique [15]",
    "Les terres rares rejettent au moment de leur exploitation et de leur raffinage, des métaux lourds (ex: mercure), de l’acide sulfurique et de l’uranium [16]",
    "Dans les zones d'exploitation des terres rares, les mines émettent de la radioactivité : problèmes pour les systèmes industriels et les relations avec les populations [16]",
    "La Chine produit à elle seule 85 % des terres rares consommées et a aussi le quasi monopole sur d’autres métaux rares d’où des enjeux géopolitiques importants [16]",
    "Groenland (1956-1963) : une étude sur les impacts d’une mine de plomb et de zinc, offre un aperçu des conséquences à long terme sur l’environnement [17]",
    "Papouasie-Nouvelle-Guinée, 2022 : La mine de Panguna, au cœur du conflit sanglant de Bougainville, va rouvrir après 30 ans d’existence [18]",
    "Guatemala, 2019 : Gisement de nickel Fenix à El Estor accusé de pollution terrestre et aquatique [19]",
    "RDC: Le tantale, métal rare, est exploité dans des mines artisanales : problèmes liés aux conditions d’extraction, aux conflits armés et au travail des enfants [4]",
    "Bolivie, 2014 : exploitation des réserves de lithium du Salar d’Uyuni : tensions politiques et sociales concernant la propriété et les avantages économiques de cette ressource [20]",
    "Afrique de l'Ouest : exploitation des ressources minérales (or, diamant, coltan,...) : tensions, conflits, rivalités entre les acteurs locaux et étrangers [21]",
    "Le rapport Mine Tailings Storage: inquiétudes croissantes sur la sécurité et les impacts du stockage des déchets miniers car risques environnementaux, sociaux et économiques [22]",
    "Accord pour réouverture mine Aznalcollar, riche en cuivre, plomb et zinc, malgré catastrophe 1998 et inquiétudes écologiques [23]",
    "Catastrophe Baia Mare (2000) : déversement cyanure, désastre écologique en Europe de l'Est, faune aquatique touchée [24]",
    "Accident usine d'aluminium Ajka (Hongrie, 2010) = rupture digue, boues rouges toxiques, décès, blessures, pollution sols et eaux.. [25]",
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
