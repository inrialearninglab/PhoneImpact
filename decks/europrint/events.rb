require 'squib'

cards = {
  'number' => [],
  'type' => [],
  'text' => [],
  'image' => [],
}

CSV.foreach('data/csv/events.csv', headers: true) do |row|
    cards['number'] << row['number']
    cards['type'] << row['type']
    cards['text'] << row['text'].gsub('\n', "\n")
    cards['image'] << 'data/images/border/event_border.png'

    cards['number'] << ''
    cards['type'] << ''
    cards['text'] << ''
    cards['image'] << 'data/images/back/event_back.png'
end

Squib::Deck.new cards: cards['number'].size, layout: ['layouts/events.yml', 'layouts/common.yml'] do
  background color: 'white'

  png file: cards['image'], layout: 'background'

  text str: cards['number'], layout: 'event_number'
  text str: cards['type'], layout: 'event_type'
  text str: cards['text'], layout: 'event_text'

  save_pdf file: 'events.pdf', dir:'_output/europrint', sprue: 'sprues/europrint.yml'
end