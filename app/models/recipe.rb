class Recipe < ApplicationRecord
  belongs_to :city
  mount_uploader :image, ImageUploader
  before_save :name_downcase!

  def meal_type_enum
    [['Entrée', 'starter'],['Plat', 'main course'],['Dessert', 'dessert']]
  end

  def difficulty_enum
    [['Facile', 1],['Moyen', 2],['Difficile', 3]]
  end

  def season_enum
    [['Hiver', 'winter'],['Printemps', 'srping'],['Été', 'summer'],['Automne', 'automn']]
  end

end
