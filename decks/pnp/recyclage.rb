require 'squib'

resources_text = []
CSV.foreach('data/csv/resources_text.csv', headers: true) do |row|
  resources_text << { 'type' => row['type'], 'name' => row['name'], 'examples' => row['examples'] }
end

recyclage = {
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

  if deck != "recyclage" then next end

  name = resources_text.find { |d| d['type'] == type }['name']
  examples = resources_text.find { |d| d['type'] == type }['examples']

  quantity.times do
    if index == cards_per_sheet
      cards_per_sheet.times do
        recyclage['type'] << ''
        recyclage['name'] << ''
        recyclage['examples'] << ''
        recyclage['image'] << 'data/images/back/recyclage_back.png'
        recyclage['icon'] << 'data/images/icons/empty.png'
      end

      index = 0
    end

    recyclage['type'] << type
    recyclage['name'] << name
    recyclage['examples'] << get_example(examples)
    recyclage['image'] << "data/images/border/#{deck}_border.png"
    recyclage['icon'] << "data/images/icons/#{type}.png"

    index += 1
  end

end

if index > 0
  remaining_cards = cards_per_sheet - index

  remaining_cards.times do
    recyclage['type'] << ''
    recyclage['name'] << ''
    recyclage['examples'] << ''
    recyclage['image'] << 'data/images/back/empty.png'
    recyclage['icon'] << 'data/images/icons/empty.png'
  end

  index.times do
    recyclage['type'] << ''
    recyclage['name'] << ''
    recyclage['examples'] << ''
    recyclage['image'] << 'data/images/back/recyclage_back.png'
    recyclage['icon'] << 'data/images/icons/empty.png'
  end
end

Squib::Deck.new(cards: recyclage['name'].size, layout: ['layouts/resources.yml', 'layouts/common.yml']) do
  background color: :white

  png file: recyclage['image'], layout: 'background_pnp'

  png file: recyclage['icon'], layout: 'illustration'

  text str: recyclage['name'], layout: 'title'
  text str: recyclage['examples'], layout: 'examples'

  save_pdf file: 'recyclage.pdf', dir: '_output/pnp', sprue: 'sprues/pnp.yml'
end