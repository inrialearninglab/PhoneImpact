require 'squib'

cards = {
  'type' => [],
  'text' => [],
  'image' => [],
}

index = 0
cards_per_sheet = 8

CSV.foreach('data/csv/events.csv', headers: true) do |row|
  if index == cards_per_sheet
    cards_per_sheet.times do
      cards['type'] << ''
      cards['text'] << ''
      cards['image'] << 'data/images/back/event_back.png'
    end

    index = 0
  end

  type = row['number'].concat('. ').concat(row['type'])

  cards['type'] << type
  cards['text'] << row['text'].gsub('\n', "\n")
  cards['image'] << 'data/images/border/event_border.png'

  index+= 1
end

if index > 0
  remaining_cards = cards_per_sheet - index

  remaining_cards.times do
    cards['type'] << ''
    cards['text'] << ''
    cards['image'] << 'data/images/back/empty.png'
  end

  index.times do
    cards['type'] << ''
    cards['text'] << ''
    cards['image'] << 'data/images/back/event_back.png'
  end
end

Squib::Deck.new cards: cards['type'].size, layout: ['layouts/events.yml', 'layouts/common.yml'] do
  background color: 'white'

  png file: cards['image'], layout: 'background_pnp'

  text str: cards['type'], layout: 'event_type'
  text str: cards['text'], layout: 'event_text'

  save_pdf file: 'events.pdf', dir: '_output/pnp', sprue: 'sprues/pnp.yml'
end