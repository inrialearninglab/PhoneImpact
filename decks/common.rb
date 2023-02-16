require 'squib'

class MyDeck

    def self.create(prefix, color, compo)
        layouts = ['economy.yml', 'templates/resource.yml']
        cards = self.compo(compo)
        size = compo.sum {|h| h['count'] }
        puts "Create deck #{prefix} of #{size} cards"

        Squib::Deck.new cards: size, layout: layouts do
            background color: 'white'
            rect layout: 'cut', stroke_color: 'white'
            rect layout: 'safe', stroke_color: color, stroke_width: 10, dash: ''
            text str: cards['title'], layout: 'title'
            text str: cards['desc'], layout: 'description', font_size: 10
            svg layout: prefix, mask: color
            svg file: cards['icon'], layout: 'illustration'
            save_pdf file: " #{prefix}.pdf", trim: 37.5, width: 2100*1.55, height: 2970*1.55 # 16 cards / page
        end
    end

    def self.compo(compo)
        title = []
        icon = []
        desc = []
        compo.each do |cardType|
            title = title + Array.new(cardType['count'], cardType['title'])
            icon = icon + Array.new(cardType['count'], cardType['icon'])
            desc = desc + Array.new(cardType['count'], cardType['desc'])
        end
        return {
            'title' => title,
            'icon' => icon,
            'desc' => desc
        }
    end
  end