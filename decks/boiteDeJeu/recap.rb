require 'squib'

images = []
images << 'data/images/recap/recyclage_recap.png'
images << 'data/images/recap/back.png'
images << 'data/images/recap/pollumoins_recap.png'
images << 'data/images/recap/back.png'
images << 'data/images/recap/polluplus_recap.png'
images << 'data/images/recap/back.png'

Squib::Deck.new cards: images.size, layout: ['layouts/common.yml'] do
  background color: 'white'

  png file: images, layout: 'background'

  save_pdf file: 'recap.pdf', dir: '_output/boiteDeJeu', sprue: 'sprues/boiteDeJeu.yml'
end
