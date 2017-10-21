json.partial! "cities/city", city: @city

json.recipes @city.recipes do |recipe|
  json.extract! recipe, :id, :name, :preparation_time, :cooking_time, :meal_type, :difficulty, :season, :highlight, :publish, :city_id, :image, :created_at, :updated_at
  json.url slugify(recipe.name)
end
