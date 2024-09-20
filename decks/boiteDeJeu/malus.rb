require 'squib'

cards = {
  'type' => [],
  'text' => [],
  'color' => [],
  'image' => [],
  'illu' => [],
  'nb_players' => [],
  'index' => []
}

red = '#E2351B'
black = '#000000'

CSV.foreach('data/csv/malus.csv', headers: true) do |row|

    ordered_cards = 6

    if row['index'] == 'nil'
        nb_players = ''
    elsif row['index'].to_i <= ordered_cards
        nb_players = row['index'] + '/' + ordered_cards.to_s
    elsif row['index'].to_i <= 36
        nb_players = '3+'
    elsif row['index'].to_i <= 48
        nb_players = '4+'
    else
        nb_players = '5+'
    end

    id = row['index'] != 'nil' ? row['index'] : ''

    cards['type'] << row['type']
    cards['text'] << row['text'].gsub('\n', "\n")
    cards['image'] << 'data/images/border/malus_border.png'
    cards['color'] << black
    cards['illu'] << 'data/images/malus_img/' + row['image'] + '.png'
    cards['nb_players'] << nb_players
    cards['index'] << id

    cards['type'] << ''
    cards['text'] << ''
    cards['image'] << 'data/images/back/malus_back.png'
    cards['color'] << black
    cards['illu'] << 'data/images/malus_img/empty.png'
    cards['nb_players'] << ''
    cards['index'] << ''
end


Squib::Deck.new cards: cards['text'].size, layout: ['layouts/malus.yml', 'layouts/common.yml'] do
    background color: 'white'

    # rect layout: 'cut'
    # rect layout: 'safe'

    png file: cards['image'], layout: 'background'

    text str: cards['type'], layout: 'malus_type_print'
    text str: cards['text'], layout: 'malus_text_print'

    png file: cards['illu'], layout: 'malus_illu_print'

    text str: cards['nb_players'], layout: 'malus_nb_players_print'
    text str: cards['index'], layout: 'malus_index_print'

    save_pdf file: 'malus.pdf', dir: '_output/boiteDeJeu', sprue: 'sprues/boiteDeJeu.yml'
end
