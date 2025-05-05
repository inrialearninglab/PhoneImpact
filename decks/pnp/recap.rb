require 'squib'
require_relative '../utils/pos_map'

module Recap
  def self.run(lang = nil)
    images = []
    cards_per_sheet = 8

    images << (lang ? "data/images/recap/recyclage_recap.#{lang}.png" : 'data/images/recap/recyclage_recap.png')
    images << (lang ? "data/images/recap/pollumoins_recap.#{lang}.png" : 'data/images/recap/pollumoins_recap.png')
    images << (lang ? "data/images/recap/polluplus_recap.#{lang}.png" : 'data/images/recap/polluplus_recap.png')

    index = images.size

    if index < cards_per_sheet
      remaining_cards = cards_per_sheet - index

      remaining_cards.times do
        images << 'data/images/back/empty.png'
      end

      (1..cards_per_sheet).each { |i|
        if PosMap.map[i] > index
          images << 'data/images/back/empty.png'
        else
          images << 'data/images/recap/back.png'
        end
      }
    end

    filename = lang ? "recap.#{lang}.pdf" : 'recap.pdf'
    Squib::Deck.new cards: images.size, layout: ['layouts/common.yml'] do
      background color: 'white'

      png file: images, layout: 'background_pnp'
      text(str: ['', '', ''], layout: 'recap_text') do |embed|
        embed.png key: ':logo:', file: 'data/images/icons/logo.png', width: 600, height: 450
      end

      save_pdf file: filename, dir: '_output/pnp', sprue: 'sprues/pnp.yml'
    end
  end
end
