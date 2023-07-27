require_relative 'common'
require_relative 'distribution'

recyclage = defineDecks()['recyclage']

MyDeck.create('recyclage', 're', '#06848d', [
  {
    'count' => recyclage['matiereSynthetique'],
    'title' => 'Autres matières',
    'icon' => 'svg/molecule.svg',
    'desc' => "Plastique, verre, ceramique, matières synthétiques, etc.\n\n(40 à 70% du poids)"
  },
  {
    'count' => recyclage['metalCommun'],
    'title' => "Métal commun",
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(L'extraction nécessite beaucoup de ressources et d'énergie)"
  },
  {
    'count' => recyclage['metalPrecieux'],
    'title' => 'Metal précieux',
    'icon' => 'svg/gold-bar.svg',
    'desc' => "Or, argent, platine, palladium, etc.\n\n(Précieux mais aussi rare, stratégique donc cher)"
  }
], true)
