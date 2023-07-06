require_relative 'common'

layouts = ['economy.yml', 'templates/event.yml']
color = '#0a4969'
events = [
    'Chaque joueur prend une carte à son voisin de droite commencant par celui qui a le moins de malus, sinon le plus de carte recyclées',
    'Chaque joueur prend une carte à ses voisins ayant plus de malus que lui',
    'Chaque joueur pioche une carte de son choix parmi celles visibles dans l\'ordre croissant de malus (recyclage si égalité)',
    'Chaque joueur prend une carte à son voisin de droite commencant par celui qui a le moins de malus, sinon le plus de carte recyclées',
    'Chaque joueur perd les ressources pour en avoir 2 maximums de chaque type en excluant les ressources recyclées',
    'Chaque joueur perd autant de cartes que de la moitié du nombre de ses malus (arrondi à l\'inférieur)',
    'Chaque joueur prend une carte à ses voisins ayant strictement plus de malus que lui',
    'Les malus des pioches sont doublés jusqu\'à la fin de la partie',
    'Chaque joueur pioche une carte de son choix parmi celles visibles dans l\'ordre croissant de malus',
    'Chaque joueur perd autant de cartes que de la moitié du nombre de ses malus',
    'Tous les joueurs ayant au moins 5 cartes recyclées (main + téléphone) piochent 2 cartes',
    'Chaque joueur prend une carte à ses voisins ayant plus de malus que lui',
    'Chaque joueur perd les ressources pour en avoir 2 maximums de chaque type en excluant les ressources recyclées',
    'Tous les joueurs ayant moins de 3 cartes recyclées défaussent 2 cartes',
    'FIN DE PARTIE'
]
types = [
    'Péripétie',
    'Duel',
    'Bonus',
    'Péripétie',
    'Taxe',
    'Taxe',
    'Duel',
    'Evolution',
    'Bonus',
    'Taxe',
    'Bonus',
    'Duel',
    'Péripétie',
    'Taxe',
    'Evolution'
]
events_number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
events_illu =  Array.new(15, 'event_illu')
puts "Create deck event of #{events.length()} cards"


# split into page of 9 cards
pages_events = events.each_slice(9).to_a
pages_types = types.each_slice(9).to_a
pages_events_number = events_number.each_slice(9).to_a
pages_events_illu = events_illu.each_slice(9).to_a

# for each page add back of cards
events = []
types = []
events_number = []
events_illu = []
cut = []
pages_events.each_with_index do |page, index|
    events = events + pages_events[index] + Array.new(9, '')
    types = types + pages_types[index] + Array.new(9, '')
    events_number = events_number + pages_events_number[index] + Array.new(9, '')
    events_illu = events_illu + pages_events_illu[index] + Array.new(9, 'event_back')
    cut = cut + Array.new(9, 10) + Array.new(9, 0)
end

Squib::Deck.new cards: events.length(), layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: color, stroke_width: cut, radius:16
    rect layout: 'safe', stroke_color: 'white'
    svg layout: events_illu, mask: color
    text str: events, layout: 'event_text', color: color
    text str: types, layout: 'event_type', color: color
    text str: events_number, layout: 'event_number', color: color
    save_pdf file: "event.pdf", width: 1800*1.5, height: 1800*297/210*1.5
end

