require_relative 'common'

layouts = ['economy.yml', 'templates/chance.yml']
color = '#0a4969'
chances = [
    'Chaque joueur prend une carte à son voisin de droite',
    'Chaque joueur prend une carte à ses voisins ayant plus de malus que lui',
    'Chaque joueur pioche une carte de son choix parmis celles visibles dans l\'ordre croissant de malus',
    'Chaque joueur prend une carte à son voisin de droite',
    'Chaque joueur perd les ressources pour en avoir 2 maximums de chaque type en excluant les ressources recyclées',
    'Chaque joueur perd autant de cartes que de la moitié du nombre de ses malus',
    'Chaque joueur prend une carte à ses voisins ayant plus de malus que lui',
    'Les malus des pioches sont doublés jusqu\'à la fin de la partie',
    'Chaque joueur pioche une carte de son choix parmis celles visibles dans l\'ordre croissant de malus',
    'Chaque joueur perd autant de cartes que de la moitié du nombre de ses malus',
    'A DEFINIR',
    'A DEFINIR',
    'A DEFINIR',
    'A DEFINIR',
    'FIN DE PARTIE'
]
chances_number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
chances_illu =  Array.new(15, 'chance_illu')
puts "Create deck chance of #{chances.length()} cards"


# split into page of 9 cards
pages_chances = chances.each_slice(9).to_a
pages_chances_number = chances_number.each_slice(9).to_a
pages_chances_illu = chances_illu.each_slice(9).to_a

# for each page add back of cards
chances = []
chances_number = []
chances_illu = []
cut = []
pages_chances.each_with_index do |page, index|
    chances = chances + pages_chances[index] + Array.new(9, '')
    chances_number = chances_number + pages_chances_number[index] + Array.new(9, '')
    chances_illu = chances_illu + pages_chances_illu[index] + Array.new(9, 'chance_back')
    cut = cut + Array.new(9, 10) + Array.new(9, 0)
end

Squib::Deck.new cards: chances.length(), layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: color, stroke_width: cut, radius:16
    rect layout: 'safe', stroke_color: 'white'
    svg layout: chances_illu, mask: color
    text str: chances, layout: 'chance_text', color: color
    text str: chances_number, layout: 'chance_number', color: color
    save_pdf file: "chance.pdf", width: 1800*1.5, height: 1800*297/210*1.5
end

