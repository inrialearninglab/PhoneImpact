require 'squib'

resources_text = []
CSV.foreach('data/csv/resources_text.csv', headers: true) do |row|
  resources_text << { 'type' => row['type'], 'name' => row['name'], 'examples' => row['examples'] }
end

resources = {
  'deck' => [],
  'type' => [],
  'name' => [],
  'examples' => [],
  'image' => [],
  'icon' => [],
}

CSV.foreach('data/csv/resources_distribution.csv', headers: true) do |row|
  type = row['type']
  deck = row['deck']
  quantity = row['quantity'].to_i

  name = resources_text.find { |d| d['type'] == type }['name']
  examples = resources_text.find { |d| d['type'] == type }['examples']
  tmp_examples = examples

  quantity.times do
    resources['deck'] << deck
    resources['type'] << type
    resources['name'] << name
    resources['examples'] << (-> {
      if tmp_examples == '' then tmp_examples = examples end

      res = tmp_examples.split(',').sample

      # search & remove res from tmp_examples
      tmp_examples = tmp_examples.split(',').reject { |e| e == res }.join(',')

      res
    }).call
    resources['image'] << "data/images/border/#{deck}_border.png"
    resources['icon'] << "data/images/icons/#{type}.png"


    resources['deck'] << ''
    resources['type'] << ''
    resources['name'] << ''
    resources['examples'] << ''
    resources['image'] << "data/images/back/#{deck}_back.png"
    resources['icon'] << 'data/images/icons/empty.png'
  end
end

Squib::Deck.new(cards: resources['name'].size, layout: ['layouts/resources.yml', 'layouts/common.yml']) do
  background color: :white

  png file: resources['image'], layout: 'background'

  png file: resources['icon'], layout: 'illustration'

  text str: resources['name'], layout: 'title'
  text str: resources['examples'], layout: 'examples'

  save_pdf file: 'resources.pdf', dir: '_output/europrint', sprue: 'sprues/europrint.yml'
end