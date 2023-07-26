require_relative 'common'
require_relative 'distribution'

polluant_plus = defineDecks()['polluant_plus']

MyDeck.create('polluant-plus', 'pp', '#704530', [
  {
    'count' => polluant_plus ['matiereSynthetique'],
    'title' => 'Autres matière',
    'icon' => 'svg/molecule.svg',
    'desc' => "Plastique, verre, ceramique, matières synthétiques, etc.\n\n(40 à 70% du poids)"
  },
  {
    'count' => polluant_plus ['metalCommun'],
    'title' => 'Métal commun',
    'icon' => 'svg/stone-pile.svg',
    'desc' => "Aluminium, cuivre, nickel, etc.\n\n(L'extraction nécessite beaucoup de ressources et d'énergie)"
  },
  {
    'count' => polluant_plus ['metalRare'],
    'title' => 'Métal rare',
    'icon' => 'svg/ore.svg',
    'desc' => "Lithium, tantale, indium, etc.\n\n(Non précieux mais peu fréquent dans le sol)"
  },
  {
    'count' => polluant_plus ['terreRare'],
    'title' => 'Terre rare',
    'icon' => 'svg/powder.svg',
    'desc' => "Yttrium, néodyme, gadolinium, etc.\n\n(Pas si rare mais difficile à extraire)"
  },
  {
    'count' => polluant_plus ['metalPrecieux'],
    'title' => 'Metal précieux',
    'icon' => 'svg/gold-bar.svg',
    'desc' => "Or, argent, platine, palladium, etc.\n\n(Mais aussi rare, stratégique donc cher)"
  }
], true)
