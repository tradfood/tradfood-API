class CitiesController < ApplicationController
  before_action :set_city, only: :show
  include CitiesHelper

  # GET /cities
  # GET /cities.json
  def index
    @cities = City.where(:publish => true)
    @highlightCities = @cities.where(:highlight => true)
  end

  # POST /cities/bordeaux
  # POST /cities/bordeaux.json
  def filter
    set_city
    @recipes = Recipe.where(:city => @city)

    @recipes = @recipes.where(:difficulty => params['difficulty'].to_i) if params['difficulty'] != 'all'
    @recipes = @recipes.where(:season => params['season']) if params['season'] != 'all'
    @recipes = @recipes.where(:meal_type => params['menu']) if params['menu'] != 'all'

    render 'show'
  end

  # GET /cities/bordeaux
  # GET /cities/bordeaux.json
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
