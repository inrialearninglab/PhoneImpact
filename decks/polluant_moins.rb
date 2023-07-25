require_relative 'common'
require_relative 'distribution'

polluant_moins = defineDecks()['polluant_moins']

MyDeck.create('polluant-moins', 'pm', '#E1824A', [
  {
    'count' => polluant_moins['matiereSynthetique'],
    'title' => 'Matière synthétique',
    'icon' => 'svg/molecule.svg',
    'desc' => "Plastique, fibre, etc.\n\n(30 à 50% des matériaux)"
  },
  {
    'count' => polluant_moins['metalCommun'],
    'title' => 'Métal commun',
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(Nécessite beaucoup de ressources ou d'énergie)"
  },
  {
    'count' => polluant_moins['metalRare'],
    'title' => 'Métal rare',
    'icon' => 'svg/ore.svg',
    'desc' => "Lithium, tantale, indium, etc.\n\n(hors précieux)"
  },
  {
    'count' => polluant_moins['terreRare'],
    'title' => 'Terre rare',
    'icon' => 'svg/powder.svg',
    'desc' => "Yttrium, néodyme, gadolinium, etc.\n\n(pas rare mais difficile à extraire)"
  },
  {
    'count' => polluant_moins['metalPrecieux'],
    'title' => 'Metal précieux',
    'icon' => 'svg/gold-bar.svg',
    'desc' => "Or, argent, platine, palladium, etc.\n\n(et rare)"
  }
], true)
