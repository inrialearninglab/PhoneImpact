require 'squib'

task default: [:pnp]

desc "Generate Print & Play decks with optional language parameter, the default in French, other options: en"
task :pnp, [:lang] => [:malus, :recap, :events, :recyclage, :pollumoins, :polluplus]

task :malus, [:lang] do |t, args|
    load 'decks/pnp/malus.rb'
    Malus.run(args.lang)
end

task :recap, [:lang] do |t, args|
    load 'decks/pnp/recap.rb'
    Recap.run(args.lang)
end

task :events, [:lang] do |t, args|
    load 'decks/pnp/events.rb'
    Events.run(args.lang)
end

task :recyclage, [:lang] do |t, args|
    load 'decks/pnp/recyclage.rb'
    Recyclage.run(args.lang)
end

task :pollumoins, [:lang] do |t, args|
    load 'decks/pnp/pollumoins.rb'
    Pollumoins.run(args.lang)
end

task :polluplus, [:lang] do |t, args|
    load 'decks/pnp/polluplus.rb'
    Polluplus.run(args.lang)
end

# task :pnp do
#   load 'decks/pnp/malus.rb'
#   load 'decks/pnp/recap.rb'
#   load 'decks/pnp/events.rb'
#   load 'decks/pnp/recyclage.rb'
#   load 'decks/pnp/pollumoins.rb'
#   load 'decks/pnp/polluplus.rb'
# end

task :boiteDeJeu do
  load 'decks/boiteDeJeu/malus.rb'
  load 'decks/boiteDeJeu/recap.rb'
  load 'decks/boiteDeJeu/resources.rb'
  load 'decks/boiteDeJeu/events.rb'
end
