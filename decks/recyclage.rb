require_relative 'common'

MyDeck.create('recyclage', 're', '#06848d', [
  {
    'count' => 12,
    'title' => 'Matière synthétique',
    'icon' => 'svg/molecule.svg',
    'desc' => 'Plastique, fibre, etc.'
  },
  {
    'count' => 7,
    'title' => "Métal commun",
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(Nécessite beacoup de ressources ou d'énergie)"
  },
  {
    'count' => 1,
    'title' => 'Metal précieux',
    'icon' => 'svg/gold-bar.svg',
    'desc' => 'Or, argent, platine, palladium, etc.'
  }
], true)

