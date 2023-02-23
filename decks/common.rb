require 'squib'

class MyDeck

    def self.create(prefix, color, compo, back)
        layouts = ['economy.yml', 'templates/resource.yml']
        cards = self.compo(compo, prefix, back)
        size = compo.sum {|h| h['count'] }
        puts "Create deck #{prefix} of #{size} cards"

        Squib::Deck.new cards: cards['title'].length(), layout: layouts do
            background color: 'white'
            #rect x:0,y:0,width:825, height: 1125, stroke_color:'blue', stroke_width:1
            rect layout: 'cut', stroke_color: color, stroke_width: cards['cut'], radius:16
            rect layout: 'safe', stroke_color: 'white'
            text str: cards['title'], layout: 'title', font: 'Baloo 2 bold 13'
            text str: cards['desc'], layout: 'description', font: 'Baloo 2', font_size: 10
            svg layout: cards['prefix'], mask: color
            svg file: cards['icon'], layout: 'illustration'
            save_pdf file: "#{prefix}.pdf", width: 3450, height: 3450*297/210 # perfect fit for 4x4 on A4
        end
    end

    def self.compo(compo, prefix, back)
        cut = []
        title = []
        icon = []
        desc = []
        pref = []
        compo.each do |cardType|
            cut = cut + Array.new(cardType['count'], 10)
            title = title + Array.new(cardType['count'], cardType['title'])
            icon = icon + Array.new(cardType['count'], cardType['icon'])
            desc = desc + Array.new(cardType['count'], cardType['desc'])
            pref = pref + Array.new(cardType['count'], prefix)
        end

        if(back)
            # split into page of 16 cards
            pages_cut = cut.each_slice(16).to_a 
            pages_title = title.each_slice(16).to_a 
            pages_icon = icon.each_slice(16).to_a 
            pages_desc = desc.each_slice(16).to_a 
            pages_pref = pref.each_slice(16).to_a 

            # for each page add back of cards
            cut = []
            title = []
            icon = []
            desc = []
            pref = []
            pages_title.each_with_index do |page, index|
                cut = cut + pages_cut[index] + Array.new(16, 0)
                title = title + pages_title[index] + Array.new(16, '')
                icon = icon + pages_icon[index] + Array.new(16, 'svg/empty.svg')
                desc = desc + pages_desc[index] + Array.new(16, '')
                pref = pref + pages_pref[index] + Array.new(16, prefix+'_back')
            end
        end

        return {
            'cut' => cut,
            'title' => title,
            'icon' => icon,
            'desc' => desc,
            'prefix' => pref
        }
    end
  end