require 'squib'

images = []
cards_per_sheet = 8

images << 'data/images/recap/recyclage_recap.png'
images << 'data/images/recap/pollumoins_recap.png'
images << 'data/images/recap/polluplus_recap.png'

index = images.size

if index < cards_per_sheet
  remaining_cards = cards_per_sheet - index

  remaining_cards.times do
    images << 'data/images/back/empty.png'
  end

  index.times do
    images << 'data/images/recap/back.png'
  end
end

Squib::Deck.new cards: images.size, layout: ['layouts/common.yml'] do
  background color: 'white'

  png file: images, layout: 'background_pnp'

  save_pdf file: 'recap.pdf', dir: '_output/pnp', sprue: 'sprues/pnp.yml'
end