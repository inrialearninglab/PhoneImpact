require 'squib'

cards = {
  'text' => [],
  'color' => [],
  'image' => [],
}

red = '#E2351B'
black = '#000000'

CSV.foreach('data/csv/malus.csv', headers: true) do |row|
    cards['text'] << row['text'].gsub('\n', "\n")
    cards['image'] << 'data/images/border/malus_border.png'
    cards['color'] << black

    cards['text'] << ''
    cards['image'] << 'data/images/back/malus_back.png'
    cards['color'] << black
end

CSV.foreach('data/csv/malus_events.csv', headers: true) do |row|
    cards['text'] << row['text'].gsub('\n', "\n")
    cards['image'] << 'data/images/border/malus_event_border.png'
    cards['color'] << red

    cards['text'] << ''
    cards['image'] << 'data/images/back/malus_back.png'
    cards['color'] << black
end

Squib::Deck.new cards: cards['text'].size, layout: ['layouts/malus.yml', 'layouts/common.yml'] do
    background color: 'white'
    png file: cards['image'], layout: 'background'

    text str: cards['text'], layout: 'malus_text', color: cards['color']
    save_pdf file: 'malus.pdf', dir: '_output/europrint', sprue: 'sprues/europrint.yml'
end
