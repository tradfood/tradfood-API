class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      # Ingredients JSON array
      t.text :ingredients
      # Recipe text
      t.text :recipe
      # Times in minutes
      t.time :preparation_time
      t.time :cooking_time
      # starter, MC (Main course) or dessert
      t.string :meal_type
      # Between 1 & 3
      t.integer :difficulty
      # spring, summer, winter, automn
      t.string :season
      t.boolean :highlight
      t.boolean :publish
      # Linked to some city
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
