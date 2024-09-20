require 'squib'
require_relative '../utils/pos_map'

resources_text = []
CSV.foreach('data/csv/resources_text.csv', headers: true) do |row|
  resources_text << { 'type' => row['type'], 'name' => row['name'], 'examples' => row['examples'] }
end

polluplus = {
  'type' => [],
  'name' => [],
  'examples' => [],
  'image' => [],
  'icon' => [],
}

index = 0
cards_per_sheet = 8

CSV.foreach('data/csv/resources_distribution.csv', headers: true) do |row|
  type = row['type']
  deck = row['deck']
  quantity = row['quantity'].to_i

  if deck != "polluplus" then next end

  name = resources_text.find { |d| d['type'] == type }['name']
  examples = resources_text.find { |d| d['type'] == type }['examples']
  tmp_examples = examples

  quantity.times do
    if index == cards_per_sheet
      cards_per_sheet.times do
        polluplus['type'] << ''
        polluplus['name'] << ''
        polluplus['examples'] << ''
        polluplus['image'] << 'data/images/back/polluplus_back.png'
        polluplus['icon'] << 'data/images/icons/empty.png'
      end

      index = 0
    end

    polluplus['type'] << type
    polluplus['name'] << name
    polluplus['examples'] << (-> {
      if tmp_examples == '' then tmp_examples = examples end

      res = tmp_examples.split(',').shift

      # search & remove res from tmp_examples
      tmp_examples = tmp_examples.split(',').reject { |e| e == res }.join(',')

      res
    }).call
    polluplus['image'] << "data/images/border/#{deck}_border.png"
    polluplus['icon'] << "data/images/icons/#{type}.png"

    index += 1
  end

end

if index > 0
  remaining_cards = cards_per_sheet - index

  remaining_cards.times do
    polluplus['type'] << ''
    polluplus['name'] << ''
    polluplus['examples'] << ''
    polluplus['image'] << 'data/images/back/empty.png'
    polluplus['icon'] << 'data/images/icons/empty.png'
  end

  (1..cards_per_sheet).each { |i|
    polluplus['type'] << ''
    polluplus['name'] << ''
    polluplus['examples'] << ''
    polluplus['icon'] << 'data/images/icons/empty.png'

    if PosMap.map[i] > index
      polluplus['image'] << 'data/images/back/empty.png'
    else
      polluplus['image'] << 'data/images/back/polluplus_back.png'
    end
  }
end

Squib::Deck.new(cards: polluplus['name'].size, layout: ['layouts/resources.yml', 'layouts/common.yml']) do
  background color: :white

  png file: polluplus['image'], layout: 'background_pnp'

  png file: polluplus['icon'], layout: 'illustration'

  text str: polluplus['name'], layout: 'title'
  text str: polluplus['examples'], layout: 'examples'

  save_pdf file: 'polluplus.pdf', dir: '_output/pnp', sprue: 'sprues/pnp.yml'
end