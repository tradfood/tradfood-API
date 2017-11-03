class AddSlugToCitiesAndRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :slug, :string
    add_column :recipes, :slug, :string
  end
end
