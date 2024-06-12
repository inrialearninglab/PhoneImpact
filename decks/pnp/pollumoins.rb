require 'squib'
require_relative '../utils/pos_map'

resources_text = []
CSV.foreach('data/csv/resources_text.csv', headers: true) do |row|
  resources_text << { 'type' => row['type'], 'name' => row['name'], 'examples' => row['examples'] }
end

pollumoins = {
  'type' => [],
  'name' => [],
  'examples' => [],
  'image' => [],
  'icon' => [],
}

index = 0
cards_per_sheet = 8

# Return a random example from the list
def get_example(examples)
  examples.split(',').sample
end

CSV.foreach('data/csv/resources_distribution.csv', headers: true) do |row|
  type = row['type']
  deck = row['deck']
  quantity = row['quantity'].to_i

  if deck != "pollumoins" then next end

  name = resources_text.find { |d| d['type'] == type }['name']
  examples = resources_text.find { |d| d['type'] == type }['examples']
  tmp_examples = examples

  quantity.times do
    if index == cards_per_sheet
      cards_per_sheet.times do
        pollumoins['type'] << ''
        pollumoins['name'] << ''
        pollumoins['examples'] << ''
        pollumoins['image'] << 'data/images/back/pollumoins_back.png'
        pollumoins['icon'] << 'data/images/icons/empty.png'
      end

      index = 0
    end

    pollumoins['type'] << type
    pollumoins['name'] << name
    pollumoins['examples'] << (-> {
      if tmp_examples == '' then tmp_examples = examples end

      res = get_example(tmp_examples)

      # search & remove res from tmp_examples
      tmp_examples = tmp_examples.split(',').reject { |e| e == res }.join(',')

      res
    }).call
    pollumoins['image'] << "data/images/border/#{deck}_border.png"
    pollumoins['icon'] << "data/images/icons/#{type}.png"

    index += 1
  end

end

if index > 0
  remaining_cards = cards_per_sheet - index

  remaining_cards.times do
    pollumoins['type'] << ''
    pollumoins['name'] << ''
    pollumoins['examples'] << ''
    pollumoins['image'] << 'data/images/back/empty.png'
    pollumoins['icon'] << 'data/images/icons/empty.png'
  end

  (1..cards_per_sheet).each { |i|
    pollumoins['type'] << ''
    pollumoins['name'] << ''
    pollumoins['examples'] << ''
    pollumoins['icon'] << 'data/images/icons/empty.png'

    if PosMap.map[i] > index
      pollumoins['image'] << 'data/images/back/empty.png'
    else
      pollumoins['image'] << 'data/images/back/pollumoins_back.png'
    end
  }
end

Squib::Deck.new(cards: pollumoins['name'].size, layout: ['layouts/resources.yml', 'layouts/common.yml']) do
  background color: :white

  png file: pollumoins['image'], layout: 'background_pnp'

  png file: pollumoins['icon'], layout: 'illustration'

  text str: pollumoins['name'], layout: 'title'
  text str: pollumoins['examples'], layout: 'examples'

  save_pdf file: 'pollumoins.pdf', dir: '_output/pnp', sprue: 'sprues/pnp.yml'
end
