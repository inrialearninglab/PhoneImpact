# -------------------- Composition smartphone --------------------
# Ecran tactile: 2 Plastique, 1 Métal rare, 1 Terre rare, 1 Métal commun
# Batterie: 1 Plastique, 2 Métal rare, 1 Métal commun
# Coque: 3 Plastique, 1 Métal rare, 1 Métal commun
# Carte Mère: 2 Plastique, 2 Métal rare, 2 Métal commun, 1 Terre rare, 1 Métal précieux


# -------------------- Répartition des pioches --------------------
# Recyclables: 20%          => 6.56 cartes par joueur
# Moins polluantes: 40%     => 13.12 cartes par joueur
# Plus polluantes: 40%      => 13.12 cartes par joueur


# -------------------- Cartes nécessaire par smartphone --------------------
# Plastique: 8
# Métal commun: 5
# Métal rare: 6
# Terre rare: 2
# Métal précieux: 1


# -------------------- Cartes par joueur --------------------
# Plastique: 12.4           => surplus de 55% par rapport à la cible
# Métal commun: 7.8         => surplus de 56% par rapport à la cible
# Métal rare: 8.2           => surplus de 36% par rapport à la cible
# Terre rare: 2.8           => surplus de 40% par rapport à la cible
# Métal précieux: 1.6       => surplus de 60% par rapport à la cible
# Total: 32.8 cartes


def defineDecks(nbPlayers)
    cards = {}
    cards['recyclage'] = {}
    cards['polluant_moins'] = {}
    cards['polluant_plus'] = {}

    # Cartes par joueur
    plastique = 12.4
    metalCommun = 7.8
    metalRare = 8.2
    terreRare = 2.8
    metalPrecieux = 1.6

    # Recyclage: 20% des cartes totales, contient: Matière synthétique, Métal commun et Métal précieux
    cards['recyclage']['matiereSynthetique'] = (plastique * nbPlayers * 0.2).round
    cards['recyclage']['metalCommun'] = (metalCommun * nbPlayers * 0.2).round
    # Peut être faire un surplus pour les métaux précieux ici
    cards['recyclage']['metalPrecieux'] = (metalPrecieux * nbPlayers * 0.4).round

    # Restant:
    # Plastique: 80% des cartes totales
    # Métal commun: 80% des cartes totales
    # Métal rare: 100% des cartes totales
    # Terre rare: 100% des cartes totales
    # Métal précieux: 80% des cartes totales

    # Polluant moins: 40% des cartes totales, contient: Matière synthétique, Métal commun, Métal rare, Terres rares et Métaux précieux
    cards['polluant_moins']['matiereSynthetique'] = (plastique * nbPlayers * 0.4).round
    cards['polluant_moins']['metalCommun'] = (metalCommun * nbPlayers * 0.4).round
    cards['polluant_moins']['metalRare'] = (metalRare * nbPlayers * 0.5).round
    cards['polluant_moins']['terreRare'] = (terreRare * nbPlayers * 0.4).round
    cards['polluant_moins']['metalPrecieux'] = (metalPrecieux * nbPlayers * 0.3).round

    # Restant:
    # Plastique: 40% des cartes totales
    # Métal commun: 40% des cartes totales
    # Métal rare: 50% des cartes totales
    # Terre rare: 60% des cartes totales
    # Métal précieux: 40% des cartes totales

    # Polluant plus: 40% des cartes totales, contient: Matière synthétique, Métal commun, Métal rare, Terres rares et Métaux précieux
    cards['polluant_plus']['matiereSynthetique'] = (plastique * nbPlayers * 0.4).round
    cards['polluant_plus']['metalCommun'] = (metalCommun * nbPlayers * 0.4).round
    cards['polluant_plus']['metalRare'] = (metalRare * nbPlayers * 0.5).round
    cards['polluant_plus']['terreRare'] = (terreRare * nbPlayers * 0.6).round
    cards['polluant_plus']['metalPrecieux'] = (metalPrecieux * nbPlayers * 0.3).round

    return cards
end

# Compositions de toutes les pioches
def getComposition()
    decks5Players = defineDecks(5)
    decks4Players = defineDecks(4)
    decks3Players = defineDecks(3)
    composition = {}

    composition['matiereSynthetique'] = [
        decks5Players['polluant_plus']['matiereSynthetique'],
        decks5Players['polluant_moins']['matiereSynthetique'],
        decks5Players['recyclage']['matiereSynthetique'],

        decks4Players['polluant_plus']['matiereSynthetique'],
        decks4Players['polluant_moins']['matiereSynthetique'],
        decks4Players['recyclage']['matiereSynthetique'],

        decks3Players['polluant_plus']['matiereSynthetique'],
        decks3Players['polluant_moins']['matiereSynthetique'],
        decks3Players['recyclage']['matiereSynthetique'],
    ]
    
    composition['metalCommun'] = [
        decks5Players['polluant_plus']['metalCommun'],
        decks5Players['polluant_moins']['metalCommun'],
        decks5Players['recyclage']['metalCommun'],

        decks4Players['polluant_plus']['metalCommun'],
        decks4Players['polluant_moins']['metalCommun'],
        decks4Players['recyclage']['metalCommun'],

        decks3Players['polluant_plus']['metalCommun'],
        decks3Players['polluant_moins']['metalCommun'],
        decks3Players['recyclage']['metalCommun'],
    ]

    composition['metalRare'] = [
        decks5Players['polluant_plus']['metalRare'],
        decks5Players['polluant_moins']['metalRare'],
        decks5Players['recyclage']['metalRare'] || 0,

        decks4Players['polluant_plus']['metalRare'],
        decks4Players['polluant_moins']['metalRare'],
        decks4Players['recyclage']['metalRare'] || 0,

        decks3Players['polluant_plus']['metalRare'],
        decks3Players['polluant_moins']['metalRare'],
        decks3Players['recyclage']['metalRare'] || 0,
    ]

    composition['terreRare'] = [
        decks5Players['polluant_plus']['terreRare'],
        decks5Players['polluant_moins']['terreRare'],
        decks5Players['recyclage']['terreRare'] || 0,

        decks4Players['polluant_plus']['terreRare'],
        decks4Players['polluant_moins']['terreRare'],
        decks4Players['recyclage']['terreRare'] || 0,

        decks3Players['polluant_plus']['terreRare'],
        decks3Players['polluant_moins']['terreRare'],
        decks3Players['recyclage']['terreRare'] || 0,
    ]
    
    composition['metalPrecieux'] = [
        decks5Players['polluant_plus']['metalPrecieux'],
        decks5Players['polluant_moins']['metalPrecieux'],
        decks5Players['recyclage']['metalPrecieux'],

        decks4Players['polluant_plus']['metalPrecieux'],
        decks4Players['polluant_moins']['metalPrecieux'],
        decks4Players['recyclage']['metalPrecieux'],

        decks3Players['polluant_plus']['metalPrecieux'],
        decks3Players['polluant_moins']['metalPrecieux'],
        decks3Players['recyclage']['metalPrecieux'],
    ]
    
    return composition
end

def printCards(cards)
    puts "Distribution des cartes pour 5 joueurs:"
    puts "Recyclage: #{cards['recyclage']}"
    puts "Polluant moins: #{cards['polluant_moins']}"
    puts "Polluant plus: #{cards['polluant_plus']}"
end


require_relative 'common'

layouts = ['economy.yml', 'templates/decks-distribution.yml']
colors = ['#704530', '#E1824A', '#06848d']*3
puts "Create deck of decks distribution"


Squib::Deck.new cards: 9, layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: colors, stroke_width: 10, radius:16
    rect layout: 'safe', stroke_color: 'white'
    

    svg layout: ['pp', 'pm', 're']*3, mask: colors

    
    composition = getComposition()
    deckName = ['Polluant +', 'Polluant -', 'Recyclage']*3
    nbPlayers = ['5 Joueurs']*3 + ['4 Joueurs']*3 + ['3 Joueurs']*3
        
    text str: deckName, layout: 'deck_title'
    text str: nbPlayers, layout: 'deck_subtitle'
    
    svg file: 'svg/molecule.svg', layout: 'ms_icon'
    text str: 'Matières synthétique', layout: 'ms_text'
    text str: composition['matiereSynthetique'], layout: 'ms'

    svg file: 'svg/stone-pile.svg', layout: 'mc_icon'
    text str: 'Métaux communs', layout: 'mc_text'
    text str: composition['metalCommun'], layout: 'mc'

    svg file: 'svg/ore.svg', layout: 'mr_icon'
    text str: 'Métaux rares', layout: 'mr_text'
    text str: composition['metalRare'], layout: 'mr'

    svg file: 'svg/powder.svg', layout: 'tr_icon'
    text str: 'Terres rares', layout: 'tr_text'
    text str: composition['terreRare'], layout: 'tr'

    svg file: 'svg/gold-bar.svg', layout: 'mp_icon'
    text str: 'Métaux précieux', layout: 'mp_text'
    text str: composition['metalPrecieux'], layout: 'mp'

    save_pdf file: "distribution.pdf", width: 1800*1.5, height: 1800*297/210*1.5
end