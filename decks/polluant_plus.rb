require_relative 'common'
require_relative 'distribution'

polluant_plus = defineDecks(5)['polluant_plus']

MyDeck.create('polluant-plus', 'pp', '#704530', [
  {
    'count' => polluant_plus ['matiereSynthetique'],
    'title' => 'Matière synthétique',
    'icon' => 'svg/molecule.svg',
    'desc' => "Plastique, fibre, etc.\n\n(30 à 50% des matériaux)"
  },
  {
    'count' => polluant_plus ['metalCommun'],
    'title' => 'Métal commun',
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(Nécessite beaucoup de ressources ou d'énergie)"
  },
  {
    'count' => polluant_plus ['metalRare'],
    'title' => 'Métal rare',
    'icon' => 'svg/ore.svg',
    'desc' => "Lithium, tantale, indium, etc.\n\n(hors précieux)"
  },
  {
    'count' => polluant_plus ['terreRare'],
    'title' => 'Terre rare',
    'icon' => 'svg/powder.svg',
    'desc' => "Yttrium, néodyme, gadolinium, etc.\n\n(pas rare mais difficile à extraire)"
  },
  {
    'count' => polluant_plus ['metalPrecieux'],
    'title' => 'Metal précieux',
    'icon' => 'svg/gold-bar.svg',
    'desc' => "Or, argent, platine, palladium, etc.\n\n(et rare)"
  }
], true)
