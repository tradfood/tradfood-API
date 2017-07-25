class RecipesController < ApplicationController
  before_action :set_recipe, only: :show

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.where(:name => unslugify(params[:name])).first
    end

end
