require 'rails_helper'

RSpec.describe City, type: :model do

  context 'recipe association' do
    it 'should increment recipes_count' do
      city = City.new(
        name: "bordeaux",
        description: "Retrouvez et cuisiniez les meilleures recettes tra...",
        highlight: true,
        publish: true,
        created_at: "2017-07-28 13:15:45",
        updated_at: "2017-07-28 13:15:45"
      )
      city.recipes << Recipe.new(
        name: "canneles",
        description: "Le cannelé est un petit gâteau caramélisé parfumé ...",
        ingredients: "*_16 parts_*\r\n\r\n- 50 cl de lait\r\n- 2 oeufs\r\n- 2 ja...",
        recipe: "Faire bouillir le lait avec le beurre et y ajouter...",
        preparation_time: "2000-01-01 00:30:00",
        cooking_time: "2000-01-01 00:30:00",
        meal_type: "dessert",
        difficulty: 1,
        season: "summer",
        highlight: true,
        publish: true,
        city_id: 1,
        created_at: "2017-07-28 14:56:32",
        updated_at: "2017-07-30 14:11:39"
      )
      city.save
      expect(Recipe.count).to eq(1)
      expect(city.recipes.count).to eq(1)
    end
  end



  it 'should persist a city' do
    City.create(
      name: "bordeaux",
      description: "Retrouvez et cuisiniez les meilleures recettes tra...",
      highlight: true,
      publish: true,
      created_at: "2017-07-28 13:15:45",
      updated_at: "2017-07-28 13:15:45"
    )
    expect(City.count).to eq(1)
  end

end
