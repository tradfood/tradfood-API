json.extract! recipe, :id, :name, :ingredients, :recipe, :preparation_time, :cooking_time, :meal_type, :difficulty, :season, :highlight, :publish, :city_id, :image, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
