require_relative 'common'

MyDeck.create('polluant-moins', 'pm', '#E1824A', [
  {
    'count' => 20,
    'title' => 'Matière synthétique',
    'icon' => 'svg/molecule.svg',
    'desc' => 'Plastique, fibre, etc.'
  },
  {
    'count' => 12,
    'title' => 'Métal commun',
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(Nécessite beacoup de ressources ou d'énergie)"
  },
  {
    'count' => 12,
    'title' => 'Métal rare',
    'icon' => 'svg/ore.svg',
    'desc' => 'Lithium, tantale, Indium, etc.'
  },
  {
    'count' => 4,
    'title' => 'Terre rare',
    'icon' => 'svg/powder.svg',
    'desc' => 'Yttrium, Néodyme, Gadolinium, etc.'
  },
  {
    'count' => 2,
    'title' => 'Metal précieux',
    'icon' => 'svg/gold-bar.svg',
    'desc' => 'Or, argent, platine, palladium, etc.'
  }
], true)

