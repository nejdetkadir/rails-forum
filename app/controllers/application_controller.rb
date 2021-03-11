class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_all

  def set_all
    @topics = Topic.all
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :fullname])
    end
end
