Rails.application.routes.draw do

  # Rails_admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Cities
  get "/cities", to: 'cities#index', as: :cities
  get "/cities/:name", to: 'cities#show', as: :city
  post '/cities/:name', to: 'cities#filter', as: :city_filter

  # Recipes on cities
  get "cities/:city_id/:name", to: 'recipes#show', as: :recipe

end
