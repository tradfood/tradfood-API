module RecipesHelper
  def difficulty?(difficulty)
    case difficulty
    when 1
      'Facile'
    when 2
      'Moyen'
    when 3
      'Difficile'
    else
      'ND'
    end
  end

  def season?(season)
    case season
    when 'all'
      'Tout'
    when 'summer'
      'Été'
    when 'automn'
      'Automne'
    when 'spring'
      'Printemps'
    when 'winter'
      'Hiver'
    else
      'ND'
    end
  end
end
