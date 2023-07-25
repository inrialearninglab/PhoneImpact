require_relative 'common'
require_relative 'distribution'

recyclage = defineDecks()['recyclage']

MyDeck.create('recyclage', 're', '#06848d', [
  {
    'count' => recyclage['matiereSynthetique'],
    'title' => 'Matière synthétique',
    'icon' => 'svg/molecule.svg',
    'desc' => 'Plastique, fibre, etc.\n\n(30 à 50% des matériaux)'
  },
  {
    'count' => recyclage['metalCommun'],
    'title' => "Métal commun",
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(Nécessite beaucoup de ressources ou d'énergie)"
  },
  {
    'count' => recyclage['metalPrecieux'],
    'title' => 'Metal précieux',
    'icon' => 'svg/gold-bar.svg',
    'desc' => 'Or, argent, platine, palladium, etc.'
  }
], true)
