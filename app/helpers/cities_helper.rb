module CitiesHelper

  def filter_array
    filter_array = {
      # Difficulty array
      'difficulty' => [
        ['Tout', 'all'],
        ['Facile', 1],
        ['Moyen', 2],
        ['Difficile', 3]
      ],
      # Season array
      'season' => [
        ['Tout', 'all'],
        ['Été', 'summer'],
        ['Automne', 'automn'],
        ['Hiver', 'winter'],
        ['Printemps', 'spring']
      ],
      # Menu array
      'menu' => [
        ['Tout', 'all'],
        ['Entrée', 'starter'],
        ['Plat', 'main course'],
        ['Dessert', 'dessert']
      ]
    }
  end

end
