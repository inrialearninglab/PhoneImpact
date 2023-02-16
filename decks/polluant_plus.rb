require_relative 'common'

MyDeck.create('pp', '#704530', [
  {
    'count' => 26,
    'title' => 'Matière synthétique',
    'icon' => 'svg/molecule.svg',
    'desc' => 'Plastique, fibre, etc.'
  },
  {
    'count' => 18,
    'title' => 'Métal commun',
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(Nécessite beacoup de ressources ou d'énergie)"
  },
  {
    'count' => 18,
    'title' => 'Métal rare',
    'icon' => 'svg/metal-bar.svg',
    'desc' => 'Lithium, tantale, Indium, etc.'
  },
  {
    'count' => 10,
    'title' => 'Terre rare',
    'icon' => 'svg/minerals.svg',
    'desc' => 'Yttrium, Néodyme, Gadolinium, etc.'
  },
  {
    'count' => 5,
    'title' => 'Metal précieux',
    'icon' => 'svg/cut-diamond.svg',
    'desc' => 'Or, argent, platine, palladium, etc.'
  }
])
