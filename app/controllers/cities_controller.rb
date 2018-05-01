class CitiesController < ApplicationController
  before_action :set_city, only: :show
  before_action :set_recipe, only: :show

  # GET /cities.json
  def index
    @cities = City.where(:publish => true)
  end

  # GET /cities/bordeaux.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.where(:slug => params[:slug]).first
    end

    def set_recipe
      @recipes = Recipe.where(:publish => true).where(:city => @city)
    end

end
