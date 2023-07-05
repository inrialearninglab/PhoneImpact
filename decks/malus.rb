require_relative 'common'

def makeCards(number)
    cut = Array.new(number, 10)
    # split into page of 16 cards
    pages_cut = cut.each_slice(16).to_a

    # for each page add back of cards
    cut = []
    pages_cut.each_with_index do |page, index|
        cut = cut + pages_cut[index] + Array.new(16, 0)
    end

    return cut
end

layouts = ['economy.yml', 'templates/resource.yml']
cards = makeCards(64)
puts "Create deck malus of #{cards.length()/2} cards"

Squib::Deck.new cards: cards.length(), layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: '#333', stroke_width: cards, radius:16
    rect layout: 'safe', stroke_color: 'white'
    text str:'Malus', x: 0, y: 700, width: 825, height: 50, font: 'Baloo 2 bold 30', align: 'center', color: '#333'
    svg layout: 'po', mask: '#333'
    save_pdf file: "malus.pdf", width: 3450, height: 3450*297/210 # perfect fit for 4x4 on A4
end

Squib::Deck.new cards: 2, layout: layouts do
    background color: 'white'
    rect layout: 'cut', stroke_color: '#333', stroke_width: cards, radius:16
    rect layout: 'safe', stroke_color: 'white'
    text str:'Malus', x: 0, y: 100, width: 825, height: 50, font: 'Baloo 2 bold 30', align: 'center', color: '#333'
    svg layout: 'po', mask: '#333'
    text str:['Attention, vous commencez à trop polluer', 'Alerte pollution, vos malus sont déduis de votre total de points'], x: 100, y: 700, width: 625, height: 400, font: 'Baloo 2 bold 12', align: 'center', valign: 'middle', color: '#333'
    save_pdf file: "malus-event.pdf", width: 3450, height: 3450*297/210 # perfect fit for 4x4 on A4
end

