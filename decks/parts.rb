require_relative 'common'

layouts = ['economy.yml', 'templates/parts.yml']
color = '#ECBC36'
puts "Create deck phone parts of 5 cards"

Squib::Deck.new cards: 5, layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: color, stroke_width: 10, radius:16
    rect layout: 'safe', stroke_color: 'white'

    text str: ['Ecran', 'Batterie', 'Coque', 'Dalle Tactile', 'Carte Mère'], layout: 'part_title'

    svg file: 'svg/molecule.svg', layout: 'ms_icon'
    text str: [1,1,3,1,2], layout: 'ms'

    svg file: 'svg/stone-pile.svg', layout: 'mc_icon'
    text str: [0,1,1,1,2], layout: 'mc'

    svg file: 'svg/metal-bar.svg', layout: 'mr_icon'
    text str: [0,1,1,1,2], layout: 'mr'

    svg file: 'svg/minerals.svg', layout: 'tr_icon'
    text str: [1,0,0,0,1], layout: 'tr'

    svg file: 'svg/cut-diamond.svg', layout: 'mp_icon'
    text str: [0,0,0,0,1], layout: 'mp'

    save_pdf file: "parts.pdf", width: 1800, height: 1800*297/210
end

