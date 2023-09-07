require 'squib'

resources_text = []
CSV.foreach('data/csv/resources_text.csv', headers: true) do |row|
  resources_text << { 'type' => row['type'], 'name' => row['name'], 'description' => row['description'] }
end

resources = {
  'deck' => [],
  'type' => [],
  'name' => [],
  'description' => [],
  'image' => [],
  'icon' => [],
}

CSV.foreach('data/csv/resources_distribution.csv', headers: true) do |row|
  type = row['type']
  deck = row['deck']
  quantity = row['quantity'].to_i

  name = resources_text.find { |d| d['type'] == type }['name']
  description = resources_text.find { |d| d['type'] == type }['description']

  quantity.times do
    resources['deck'] << deck
    resources['type'] << type
    resources['name'] << name
    resources['description'] << description.gsub('\n', "\n")
    resources['image'] << "data/images/border/#{deck}_border.png"
    resources['icon'] << "data/images/icons/#{type}.png"


    resources['deck'] << ''
    resources['type'] << ''
    resources['name'] << ''
    resources['description'] << ''
    resources['image'] << "data/images/back/#{deck}_back.png"
    resources['icon'] << 'data/images/icons/empty.png'
  end
end

Squib::Deck.new(cards: resources['name'].size, layout: ['layouts/resources.yml', 'layouts/common.yml']) do
  background color: :white

  png file: resources['image'], layout: 'background'

  png file: resources['icon'], layout: 'illustration'

  text str: resources['name'], layout: 'title'
  text str: resources['description'], layout: 'description'

  save_pdf file: 'resources.pdf', sprue: 'sprues/europrint.yml'
end