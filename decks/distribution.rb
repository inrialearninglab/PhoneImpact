# -------------------- Composition smartphone --------------------
# Ecran tactile: 2 Plastique, 1 Métal rare, 1 Terre rare, 1 Métal commun
# Batterie: 1 Plastique, 2 Métal rare, 1 Métal commun
# Coque: 3 Plastique, 1 Métal rare, 1 Métal commun
# Carte Mère: 2 Plastique, 2 Métal rare, 2 Métal commun, 1 Terre rare, 1 Métal précieux


# -------------------- Cartes nécessaire par smartphone --------------------
# Plastique: 8
# Métal commun: 5
# Métal rare: 6
# Terre rare: 2
# Métal précieux: 1

# -------------------- * 1.5 --------------------

# -------------------- Cartes par joueur --------------------
# Plastique: 12
# Métal commun: 7.5
# Métal rare: 9
# Terre rare: 3
# Métal précieux: 1.5


def defineDecks()
    cards = {}
    # cards['recyclage'] = {}
    # cards['polluant_moins'] = {}
    # cards['polluant_plus'] = {}

    cards['recyclage'] = {
        'matiereSynthetique' => 9,
        'metalCommun' => 6,
        'metalPrecieux' => 2
    }

    cards['polluant_moins'] = {
        'matiereSynthetique' => 17,
        'metalCommun' => 10,
        'metalRare' => 15,
        'terreRare' => 5,
        'metalPrecieux' => 2
    }

    cards['polluant_plus'] = {
        'matiereSynthetique' => 34,
        'metalCommun' => 21,
        'metalRare' => 30,
        'terreRare' => 10,
        'metalPrecieux' => 4
    }

    return cards
end

# Compositions de toutes les pioches
def getComposition()
    decks = defineDecks()
    composition = {}

    composition['matiereSynthetique'] = [
        decks['polluant_plus']['matiereSynthetique'],
        decks['polluant_moins']['matiereSynthetique'],
        decks['recyclage']['matiereSynthetique'],
    ]

    composition['metalCommun'] = [
        decks['polluant_plus']['metalCommun'],
        decks['polluant_moins']['metalCommun'],
        decks['recyclage']['metalCommun'],
    ]

    composition['metalRare'] = [
        decks['polluant_plus']['metalRare'],
        decks['polluant_moins']['metalRare'],
        decks['recyclage']['metalRare'],
    ]

    composition['terreRare'] = [
        decks['polluant_plus']['terreRare'],
        decks['polluant_moins']['terreRare'],
        decks['recyclage']['terreRare'],
    ]

    composition['metalPrecieux'] = [
        decks['polluant_plus']['metalPrecieux'],
        decks['polluant_moins']['metalPrecieux'],
        decks['recyclage']['metalPrecieux'],
    ]

    return composition
end


def printCards(cards)
    puts "Composition des différentes pioches :"
    puts "Recyclage: #{cards['recyclage']}"
    puts "Polluant moins: #{cards['polluant_moins']}"
    puts "Polluant plus: #{cards['polluant_plus']}"
end


require_relative 'common'

layouts = ['economy.yml', 'templates/decks-distribution.yml']
colors = ['#704530', '#E1824A', '#06848d']
puts "Create deck of decks distribution"


Squib::Deck.new cards: 3, layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: colors, stroke_width: 10, radius:16
    rect layout: 'safe', stroke_color: 'white'


    svg layout: ['pp', 'pm', 're'], mask: colors


    composition = getComposition()
    deckName = ['PolluPlus', 'PolluMoins', 'Recyclage']
    malusPioche = ['3 cartes, 2 malus'] + ['2 cartes, 1 malus'] + ['1 carte, 1 malus']

    text str: deckName, layout: 'deck_title'
    text str: malusPioche, layout: 'deck_subtitle'

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
