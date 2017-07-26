module RailsAdmin
  module Config
    module Actions
      class ShowInAppCustom < RailsAdmin::Config::Actions::ShowInApp
        
        register_instance_option :controller do
          proc do
            model = params[:model_name].to_s
            controller = model.tableize

            redirect_to Rails.application.routes.url_for(controller: controller, action: 'show', name: @object.name.parameterize, only_path: true)
          end
        end

      end
    end
  end
end
