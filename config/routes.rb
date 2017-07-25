Rails.application.routes.draw do

  # Rails_admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Recipe
  get "/recipes", to: 'recipes#index', as: :recipes
  get "/recipes/:id", to: 'recipes#show', as: :recipe

  # Cities
  get "/cities", to: 'cities#index', as: :cities
  get "/cities/:id", to: 'cities#show', as: :city
end
