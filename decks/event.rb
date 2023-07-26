require_relative 'common'

layouts = ['economy.yml', 'templates/event.yml']
color = '#0a4969'
events = [
  "Entretenez votre smartphone pour éviter jusqu\'à 40% des pannes.\nTous les joueurs ayant 1 carte recyclée piochent 1 carte visible", #0
    'Volez une carte à votre voisin de droite commençant par celui qui a le moins de malus, sinon le plus de cartes recyclées', #1
    'Volez une carte à vos voisins ayant strictement plus de malus que vous', #2
    "Appliquez les R : Refuser, Réduire, Réparer, Recycler, Rendre à la terre.\nPiochez une carte parmi celles visibles dans l\'ordre croissant de malus", #3
    "Loi anti-gaspillage, 2021: indice de réparabilité obligatoire sur les smartphones. Ne gardez que 2 ressources max de chaque type hors recyclées", #4
    "Loi REEN, 2021 qui incite les entreprises à adopter des pratiques éco-responsables. Perdez nb cartes = nb malus/2 (arrondi inférieur)", #5
    'Volez une carte à vos voisins ayant strictement plus de malus que vous', #6
    'Les malus des pioches sont doublés jusqu\'à la fin de la partie', #7
    "Réparez votre smartphone avant d\'en acheter un nouveau.\nChaque joueur pioche une carte parmi celles visibles (ordre croissant de malus)", #8
    "France, 2015: l'obsolescence programmée constitue un délit avec condamnations. Perdez nb malus/2 ressources (arrondi inférieur)", #9
    'Volez une carte à votre voisin de gauche commençant par celui qui a le moins de malus, sinon le plus de cartes recyclées', #11
    'Volez une carte à vos voisins ayant strictement plus de malus que vous', #12
    "Union européenne, 2017: règlement sur l’importation de minerais provenant des zones de conflit. Perdez 2 ressources si vous avez moins de 3 cartes recyclées", #13
    'Ne gardez que 2 ressources maximum de chaque type en excluant les ressources recyclées', #14
    'FIN DE LA PARTIE', #15
    'Carte supplémentaire','Carte supplémentaire'

]
types = [
  'Bonus', #0
    'Pillage', #1
    'Pillage', #2
    'Bonus', #3
    'Règlementation', #4
    'Règlementation', #5
    'Pillage', #6
    'Événement majeur', #7
    'Bonus', #8
    'Règlementation', #9
    'Pillage', #11
    'Pillage', #12
    'Règlementation', #13
    'Pillage', #14
    'Événement majeur', #15
    'Carte supplémentaire','Carte supplémentaire'
]
events_number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17];
events_illu =  Array.new(17, 'event_illu')
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
