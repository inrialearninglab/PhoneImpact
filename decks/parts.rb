require_relative 'common'

layouts = ['economy.yml', 'templates/parts.yml']
color = '#ECBC36'
puts "Create deck phone parts of 4 cards"

Squib::Deck.new cards: 4, layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: color, stroke_width: 10, radius:16
    rect layout: 'safe', stroke_color: 'white'

    text str: ['Ecran tactile', 'Batterie', 'Coque', 'Carte Mère'], layout: 'part_title'

    text str: ['6pts','4pts','6pts','10pts'], layout: 'part_points'

    svg file: 'svg/molecule.svg', layout: 'ms_icon'
    text str: 'Matières synthétique', layout: 'ms_text'
    text str: [2,1,3,2], layout: 'ms'

    svg file: 'svg/stone-pile.svg', layout: 'mc_icon'
    text str: 'Métaux communs', layout: 'mc_text'
    text str: [1,1,1,2], layout: 'mc'

    svg file: 'svg/ore.svg', layout: 'mr_icon'
    text str: 'Métaux rares', layout: 'mr_text'
    text str: [1,2,1,2], layout: 'mr'

    svg file: 'svg/powder.svg', layout: 'tr_icon'
    text str: 'Terres rares', layout: 'tr_text'
    text str: [1,0,0,1], layout: 'tr'

    svg file: 'svg/gold-bar.svg', layout: 'mp_icon'
    text str: 'Métaux précieux', layout: 'mp_text'
    text str: [0,0,0,1], layout: 'mp'

    save_pdf file: "parts.pdf", width: 1800, height: 1800*297/210
end

