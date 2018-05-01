class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :ensure_json_request

  def home
  end

  private
    def ensure_json_request
      return if request.format == :json
      render :nothing => true, :status => 406
    end

end
