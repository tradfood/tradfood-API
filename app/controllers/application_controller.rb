class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper

  def home
    @recipes = Recipe.where(:publish => true)
  end

  def about
  end

end
