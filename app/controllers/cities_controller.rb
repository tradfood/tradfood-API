class CitiesController < ApplicationController
  before_action :set_city, only: :show

  # GET /cities
  # GET /cities.json
  def index
    @cities = City.where(:publish => true)
    @highlightCities = @cities.where(:highlight => true)
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    set_recipe
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      city_name = unslugify(params[:name])
      @city = City.where(:name => city_name).first
    end

    def set_recipe
      @recipes = Recipe.where(:publish => true).where(:city => @city)
      @highlightRecipes = @recipes.where(:highlight => true)
    end

end
