# -------------------- Composition smartphone --------------------
# Ecran tactile: 2 Plastique, 1 Métal rare, 1 Terre rare, 1 Métal commun
# Batterie: 1 Plastique, 2 Métal rare, 1 Métal commun
# Coque: 3 Plastique, 1 Métal rare, 1 Métal commun
# Carte Mère: 2 Plastique, 2 Métal rare, 2 Métal commun, 1 Terre rare


# -------------------- Répartition des pioches --------------------
# Recyclables: 20%          => 6.56 cartes par joueur
# Moins polluantes: 40%     => 13.12 cartes par joueur
# Plus polluantes: 40%      => 13.12 cartes par joueur


# -------------------- Cartes nécessaire par smartphone --------------------
# Plastique: 8
# Métal commun: 5
# Métal rare: 6
# Terre rare: 2
# Métal précieux: 1


# -------------------- Cartes par joueur --------------------
# Plastique: 12.4           => surplus de 55% par rapport à la cible
# Métal commun: 7.8         => surplus de 56% par rapport à la cible
# Métal rare: 8.2           => surplus de 36% par rapport à la cible
# Terre rare: 2.8           => surplus de 40% par rapport à la cible
# Métal précieux: 1.6       => surplus de 60% par rapport à la cible
# Total: 32.8 cartes


def defineDecks(nbPlayers)
    cards = {}
    cards['recyclage'] = {}
    cards['polluant_moins'] = {}
    cards['polluant_plus'] = {}

    # Cartes par joueur
    plastique = 12.4
    metalCommun = 7.8
    metalRare = 8.2
    terreRare = 2.8
    metalPrecieux = 1.6

    # Recyclage: 20% des cartes totales, contient: Plastiques, Métal commun et Métal précieux
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
    
    # Polluant moins: 40% des cartes totales, contient: Plastiques, Métal commun, Métal rare, Terres rares et Métaux précieux
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
    
    # Polluant plus: 40% des cartes totales, contient: Plastiques, Métal commun, Métal rare, Terres rares et Métaux précieux
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