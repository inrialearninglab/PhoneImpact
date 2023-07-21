require_relative 'common'

layouts = ['economy.yml', 'templates/event.yml']
color = '#0a4969'
events = [
    'Chaque joueur vole une carte à son voisin de droite commençant par celui qui a le moins de malus, sinon le plus de cartes recyclées', #1
    'Chaque joueur vole une carte à ses voisins ayant strictement plus de malus que lui', #2
    'Chaque joueur pioche une carte de son choix parmi celles visibles dans l\'ordre croissant de malus (recyclage si égalité)', #3
    'Chaque joueur perd les ressources pour en avoir 2 maximums de chaque type en excluant les ressources recyclées', #4
    'Chaque joueur perd autant de cartes que de la moitié du nombre de ses malus (arrondi à l\'inférieur)', #5
    'Chaque joueur vole une carte à ses voisins ayant strictement plus de malus que lui', #6
    'Les malus des pioches sont doublés jusqu\'à la fin de la partie', #7
    'Chaque joueur pioche une carte de son choix parmi celles visibles dans l\'ordre croissant de malus', #8
    'Chaque joueur perd autant de cartes que de la moitié du nombre de ses malus', #9
    'Tous les joueurs ayant au moins 4 cartes recyclées (main + téléphone) piochent 2 cartes', #10
    'Chaque joueur vole une carte à son voisin de gauche commençant par celui qui a le moins de malus, sinon le plus de cartes recyclées', #11
    'Chaque joueur vole une carte à ses voisins ayant plus de malus que lui', #12
    'Tous les joueurs ayant moins de 3 cartes recyclées défaussent 2 cartes', #13
    'Chaque joueur perd les ressources pour en avoir 2 maximums de chaque type en excluant les ressources recyclées', #14
    'FIN DE LA PARTIE' #15
]
types = [
    'Pillage', #1
    'Pillage', #2
    'Bonus', #3
    'Règlementation', #4
    'Règlementation', #5
    'Pillage', #6
    'Événement majeur', #7
    'Bonus', #8
    'Règlementation', #9
    'Bonus', #10
    'Pillage', #11
    'Pillage', #12
    'Règlementation', #13
    'Pillage', #14
    'Événement majeur' #15
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
