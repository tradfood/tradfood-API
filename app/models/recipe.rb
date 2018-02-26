class Recipe < ApplicationRecord
  belongs_to :city
  mount_uploader :image, ImageUploader

  def meal_type_enum
    [['Entrée', 'starter'],['Plat', 'main course'],['Dessert', 'dessert']]
  end

  def difficulty_enum
    [['Facile', 1],['Moyen', 2],['Difficile', 3]]
  end

  def season_enum
    [['Hiver', 'winter'],['Printemps', 'spring'],['Été', 'summer'],['Automne', 'automn']]
  end

  def serving_type_enum
    [['Personnes', 'peoples'],['Pièces', 'servings']]
  end

end
