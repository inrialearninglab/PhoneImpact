require 'squib'

cards = {
  'type' => [],
  'text' => [],
  'image' => [],
  'color' => [],
  'illu' => [],
  'nb_players' => [],
}

index = 0
cards_per_sheet = 8

red = '#E2351B'
black = '#000000'

CSV.foreach('data/csv/malus.csv', headers: true) do |row|
  if index == cards_per_sheet
    cards_per_sheet.times do
      cards['type'] << ''
      cards['text'] << ''
      cards['image'] << 'data/images/back/malus_back.png'
      cards['color'] << black
      cards['illu'] << 'data/images/malus_img/empty.png'
      cards['nb_players'] << ''
    end

    index = 0
  end

  # Number of ordered cards at the top of the malus deck
  ordered_cards = 6

  if row['index'] == 'nil'
    nb_players = ''
  elsif row['index'].to_i <= ordered_cards
    nb_players = row['index'].concat('/').concat(ordered_cards.to_s)
  elsif row['index'].to_i <= 36
    nb_players = '3+'
  elsif row['index'].to_i <= 48
    nb_players = '4+'
  else
    nb_players = '5+'
  end



  cards['type'] << row['type']
  cards['text'] << row['text'].gsub('\n', "\n")
  cards['image'] << 'data/images/border/malus_border.png'
  cards['color'] << black
  cards['illu'] << 'data/images/malus_img/' + row['image'] + '.png'
  cards['nb_players'] << nb_players

  index += 1
end


if index > 0
  remaining_cards = cards_per_sheet - index

  remaining_cards.times do
    cards['text'] << ''
    cards['image'] << 'data/images/back/empty.png'
    cards['illu'] << 'data/images/malus_img/empty.png'
    cards['nb_players'] << ''
  end

  index.times do
    cards['text'] << ''
    cards['image'] << 'data/images/back/malus_back.png'
    cards['illu'] << 'data/images/malus_img/empty.png'
    cards['nb_players'] << ''
  end
end

Squib::Deck.new cards: cards['text'].size, layout: ['layouts/malus.yml', 'layouts/common.yml'] do
  background color: 'white'

  png file: cards['image'], layout: 'background_pnp'

  text str: cards['type'], layout: 'malus_type'
  text str: cards['text'], layout: 'malus_text'

  png file: cards['illu'], layout: 'malus_illu'

  text str: cards['nb_players'], layout: 'malus_nb_players'

  save_pdf file: 'malus.pdf', dir: '_output/pnp', sprue: 'sprues/pnp.yml'
end