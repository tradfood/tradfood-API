class AddServingsToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :servings, :integer
    add_column :recipes, :serving_type, :string
  end
end
