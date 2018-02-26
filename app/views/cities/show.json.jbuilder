json.partial! "cities/city", city: @city

json.recipes @city.recipes do |recipe|
  json.extract! recipe, :id, :name, :description, :meal_type, :difficulty, :season, :highlight, :publish, :city_id, :image, :created_at, :updated_at
  json.cooking_time recipe.cooking_time.strftime('%M:%S')
  json.preparation_time recipe.preparation_time.strftime('%M:%S')
  json.url recipe.slug
end
