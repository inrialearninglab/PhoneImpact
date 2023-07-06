# Composition smartphone
# Ecran tactile: 2 Plastique, 1 Métal rare, 1 Terre rare, 1 Métal commun
# Batterie: 1 Plastique, 2 Métal rare, 1 Métal commun
# Coque: 3 Plastique, 1 Métal rare, 1 Métal commun
# Carte Mère: 2 Plastique, 2 Métal rare, 2 Métal commun, 1 Terre rare

# Répartition des cartes
# 20 % de cartes recyclables
# 40 % de cartes moins polluantes
# 40 % de cartes plus polluantes

# Cible Actuelle (5 joueurs):
# Plastique: surplus de 55% => 155% de 40 => 62 cartes
# Métal commun: surplus de 55% => 155% de 25 => 39 cartes
# Métal commun: surplus de 35% => 135% de 30 => 41 cartes
# Terre rare: surplus de 40% => 140% de 10 => 14 cartes
# Métal précieux: surplus de 50% => 150% de 5 => 8 cartes
# Total: 164 cartes

# Cards per player:
# 62/5 = 12.4 cartes plastique
# 39/5 = 7.8 cartes métal commun
# 41/5 = 8.2 cartes métal rare
# 14/5 = 2.8 cartes terre rare
# 8/5 = 1.6 cartes métal précieux

# Pour 5 joueurs besoins de: 
# 40 Plastiques
# 25 Métal commun
# 30 Métal rare
# 10 Terre rare
# 5 Métal précieux
def defineDecks(nbPlayers)
    cards = {}
    cards['recyclage'] = {}
    cards['polluant_moins'] = {}
    cards['polluant_plus'] = {}

    # Cards per player
    plastique = 12.4
    metalCommun = 7.8
    metalRare = 8.2
    terreRare = 2.8
    metalPrecieux = 1.6

    # Recyclage 20% des cartes totales, contient: Plastiques, Métal commun et Métal précieux
    cards['recyclage']['plastique'] = (plastique * nbPlayers * 0.2).round
    cards['recyclage']['metalCommun'] = (metalCommun * nbPlayers * 0.2).round
    # Peut être faire un surplus pour les métaux précieux ici
    cards['recyclage']['metalPrecieux'] = (metalPrecieux * nbPlayers * 0.4).round
    
    # Restant:
    # Plastique: 80% des cartes totales
    # Métal commun: 80% des cartes totales
    # Métal rare: 100% des cartes totales
    # Terre rare: 100% des cartes totales
    # Métal précieux: 80% des cartes totales
    
    # Polluant moins 40% des cartes totales, contient: Plastiques, Métal commun, Métal rare, Terres rares et Métaux précieux
    cards['polluant_moins']['plastique'] = (plastique * nbPlayers * 0.4).round
    cards['polluant_moins']['metalCommun'] = (metalCommun * nbPlayers * 0.4).round
    cards['polluant_moins']['metalRare'] = (metalRare * nbPlayers * 0.5).round
    cards['polluant_moins']['terreRare'] = (terreRare * nbPlayers * 0.4).round
    cards['polluant_moins']['metalPrecieux'] = (metalPrecieux * nbPlayers * 0.3).round
    
    # Restant:
    # Plastique: 40% des cartes totales
    # Métal commun: 40% des cartes totales
    # Métal rare: 50% des cartes totales
    # Terre rare: 60% des cartes totales
    # Métal précieux: 40% des cartes totales
    
    # Polluant plus 40% des cartes totales, contient: Plastiques, Métal commun, Métal rare, Terres rares et Métaux précieux
    cards['polluant_plus']['plastique'] = (plastique * nbPlayers * 0.4).round
    cards['polluant_plus']['metalCommun'] = (metalCommun * nbPlayers * 0.4).round
    cards['polluant_plus']['metalRare'] = (metalRare * nbPlayers * 0.5).round
    cards['polluant_plus']['terreRare'] = (terreRare * nbPlayers * 0.6).round
    cards['polluant_plus']['metalPrecieux'] = (metalPrecieux * nbPlayers * 0.3).round
    
    return cards
end

# Print the distribution of the cards for 5 players
def printDistribution(cards)
    puts "Distribution des cartes pour 5 joueurs:"
    puts "Recyclage: #{cards['recyclage']}"
    puts "Polluant moins: #{cards['polluant_moins']}"
    puts "Polluant plus: #{cards['polluant_plus']}"
end

printDistribution(defineDecks(5))