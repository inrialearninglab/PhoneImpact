require_relative 'common'

layouts = ['economy.yml', 'templates/resource.yml']
puts "Create deck po of 64 cards"

Squib::Deck.new cards: 64, layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: '#333', stroke_width: 10, radius:16
    rect layout: 'safe', stroke_color: 'white'
    text str:'Malus', x: 0, y: 700, width: 825, height: 50, font: 'Baloo 2 bold 30', align: 'center', color: '#333'
    svg layout: 'po', mask: '#333'
    save_pdf file: "po.pdf", width: 3450, height: 3450*297/210 # perfect fit for 4x4 on A4
end

