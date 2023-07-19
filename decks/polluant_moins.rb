require_relative 'common'

MyDeck.create('polluant-moins', 'pm', '#E1824A', [
  {
    'count' => 20,
    'title' => 'Matière synthétique',
    'icon' => 'svg/molecule.svg',
    'desc' => "Plastique, fibre, etc.\n\n(30 à 50% des matériaux)"
  },
  {
    'count' => 12,
    'title' => 'Métal commun',
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(Nécessite beaucoup de ressources ou d'énergie)"
  },
  {
    'count' => 12,
    'title' => 'Métal rare',
    'icon' => 'svg/ore.svg',
    'desc' => "Lithium, tantale, indium, etc.\n\n(hors précieux)"
  },
  {
    'count' => 4,
    'title' => 'Terre rare',
    'icon' => 'svg/powder.svg',
    'desc' => "Yttrium, néodyme, gadolinium, etc.\n\n(pas rare mais difficile à extraire)"
  },
  {
    'count' => 2,
    'title' => 'Metal précieux',
    'icon' => 'svg/gold-bar.svg',
    'desc' => "Or, argent, platine, palladium, etc.\n\n(et rare)"
  }
], true)
