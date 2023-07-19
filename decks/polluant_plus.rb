require_relative 'common'

MyDeck.create('polluant-plus', 'pp', '#704530', [
  {
    'count' => 26,
    'title' => 'Matière synthétique',
    'icon' => 'svg/molecule.svg',
    'desc' => "Plastique, fibre, etc.\n\n(30 à 50% des matériaux)"
  },
  {
    'count' => 18,
    'title' => 'Métal commun',
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(Nécessite beaucoup de ressources ou d'énergie)"
  },
  {
    'count' => 18,
    'title' => 'Métal rare',
    'icon' => 'svg/ore.svg',
    'desc' => "Lithium, tantale, indium, etc.\n\n(hors précieux)"
  },
  {
    'count' => 10,
    'title' => 'Terre rare',
    'icon' => 'svg/powder.svg',
    'desc' => "Yttrium, néodyme, gadolinium, etc.\n\n(pas rare mais difficile à extraire)"
  },
  {
    'count' => 5,
    'title' => 'Metal précieux',
    'icon' => 'svg/gold-bar.svg',
    'desc' => "Or, argent, platine, palladium, etc.\n\n(et rare)"
  }
], true)
