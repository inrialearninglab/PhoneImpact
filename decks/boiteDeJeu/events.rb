require 'squib'

cards = {
  'type' => [],
  'text' => [],
  'image' => [],
  'illu' => [],
}

CSV.foreach('data/csv/events.csv', headers: true) do |row|
  type = row['number'] + '. ' + row['type']

  cards['type'] << type
  cards['text'] << row['text'].gsub('\n', "\n")
  cards['image'] << 'data/images/border/event_border.png'

  if row['number'] == '14'
    cards['illu'] << 'data/images/icons/QR.png'
  else
    cards['illu'] << 'data/images/icons/empty.png'
  end

  cards['type'] << ''
  cards['text'] << ''
  cards['image'] << 'data/images/back/event_back.png'
  cards['illu'] << 'data/images/icons/empty.png'
end

Squib::Deck.new cards: cards['type'].size, layout: ['layouts/events.yml', 'layouts/common.yml'] do
  background color: 'white'

  png file: cards['image'], layout: 'background'

  # rect layout: 'cut'
  # rect layout: 'safe'

  text str: cards['type'], layout: 'event_type_print'
  text str: cards['text'], layout: 'event_text_print'

  save_pdf file: 'events.pdf', dir: '_output/boiteDeJeu', sprue: 'sprues/boiteDeJeu.yml'
end
