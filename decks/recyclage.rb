require_relative 'common'

MyDeck.create('re', '#06848d', [
  {
    'count' => 10,
    'title' => 'Matière synthétique',
    'icon' => 'svg/molecule.svg',
    'desc' => 'Plastique, fibre, etc.'
  },
  {
    'count' => 5,
    'title' => "Métal commun",
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(Nécessite beacoup de ressources ou d'énergie)"
  },
  {
    'count' => 5,
    'title' => 'Métal rare',
    'icon' => 'svg/ore.svg',
    'desc' => 'Lithium, tantale, Indium, etc.'
  }
], true)

