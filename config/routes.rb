Rails.application.routes.draw do

  ## Statics
  # Root
  root 'application#home'
  get '/a-propos', to: 'application#about', as: :about

  # Rails_admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Cities
  get '/villes', to: 'cities#index', as: :cities
  get '/:name', to: 'cities#show', as: :city
  post '/:name', to: 'cities#filter', as: :city_filter

  # Recipes on cities
  get '/:city_name/:name', to: 'recipes#show', as: :recipe

end
