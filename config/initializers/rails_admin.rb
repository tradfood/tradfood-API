## Include application Actions
# Show in app : link depend on slug
require Rails.root.join('lib', 'rails_admin', 'show_in_app_custom.rb')
RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::ShowInAppCustom)


RailsAdmin.config do |config|

  config.main_app_name { ['TradFood', 'Admin'] }

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  # List of custom actions
  custom_model_array = [City, Recipe]

  # List of actions
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    export
    bulk_delete
    show
    delete
    new
    edit

    show_in_app do
      except custom_model_array
    end
    show_in_app_custom do
      only custom_model_array
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  # Authentication code (by .htaccess)
  config.authorize_with do
    authenticate_or_request_with_http_basic('Site Message') do |username, password|
      username == ENV["ADMIN_LOGIN"] && password == ENV["ADMIN_PASSWORD"]
    end
  end

end
