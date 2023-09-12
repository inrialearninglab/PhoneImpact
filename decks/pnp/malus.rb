require 'squib'

cards = {
  'text' => [],
  'image' => [],
  'color' => [],
}

index = 0
cards_per_sheet = 8

red = '#E2351B'
black = '#000000'

CSV.foreach('data/csv/malus.csv', headers: true) do |row|
  if index == cards_per_sheet
    cards_per_sheet.times do
      cards['text'] << ''
      cards['image'] << 'data/images/back/malus_back.png'
      cards['color'] << black
    end

    index = 0
  end

  cards['text'] << row['text'].gsub('\n', "\n")
  cards['image'] << 'data/images/border/malus_border.png'
  cards['color'] << black

  index += 1
end

CSV.foreach('data/csv/malus_events.csv', headers: true) do |row|
  if index == cards_per_sheet
    cards_per_sheet.times do
      cards['text'] << ''
      cards['image'] << 'data/images/back/malus_back.png'
      cards['color'] << black
    end

    index = 0
  end

  cards['text'] << row['text'].gsub('\n', "\n")
  cards['image'] << 'data/images/border/malus_event_border.png'
  cards['color'] << red

  index += 1
end

if index > 0
  remaining_cards = cards_per_sheet - index

  remaining_cards.times do
    cards['text'] << ''
    cards['image'] << 'data/images/back/empty.png'
  end

  index.times do
    cards['text'] << ''
    cards['image'] << 'data/images/back/malus_back.png'
  end
end

Squib::Deck.new cards: cards['text'].size, layout: ['layouts/malus.yml', 'layouts/common.yml'] do
  background color: 'white'

  png file: cards['image'], layout: 'background_pnp'

  text str: cards['text'], layout: 'malus_text'
  save_pdf file: 'malus.pdf', dir: '_output/pnp', sprue: 'sprues/pnp.yml'
end