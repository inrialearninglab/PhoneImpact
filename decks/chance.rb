require_relative 'common'

layouts = ['economy.yml', 'templates/chance.yml']
color = '#0a4969'
chances = [
    'Chaque joueur prend une carte à son voisin de droite',
    'Chaque joueur prend une carte à son voisin de droite',
    'Chaque joueur perd autant de cartes que de la moitié du nombre de ses malus',
    'Chaque joueur pioche une carte de son choix',
    'Chaque joueur pioche une carte de son choix',
    'Les joueurs ayant plus de 10 malus perdent 1 métal precieux',
    'Chaque joueur prend une carte à ses voisins ayant plus de malus que lui',
    'Chaque joueur prend une carte à ses voisins ayant plus de malus que lui',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
]
puts "Create deck chance of #{chances.length()} cards"


# split into page of 9 cards
pages_chances = chances.each_slice(9).to_a

# for each page add back of cards
chances = []
cut = []
pages_chances.each_with_index do |page, index|
    chances = chances + pages_chances[index] + Array.new(9, '')
    cut = cut + Array.new(9, 10) + Array.new(9, 0)
end

Squib::Deck.new cards: chances.length(), layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: color, stroke_width: cut, radius:16
    rect layout: 'safe', stroke_color: 'white'
    text str: chances, layout: 'chance_text', color: color

    save_pdf file: "chance.pdf", width: 1800*1.5, height: 1800*297/210*1.5
end

