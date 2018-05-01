Rails.application.routes.draw do

  ## Statics
  # Root
  root 'application#home'

  # Rails_admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Cities
  get '/cities', to: 'cities#index', as: :cities
  get '/:slug', to: 'cities#show', as: :city

  # Recipes on cities
  get '/:city_slug/:slug', to: 'recipes#show', as: :recipe

end
