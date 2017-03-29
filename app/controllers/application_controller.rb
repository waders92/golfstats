class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  config.time_zone = 'Central Time (US & Canada)'
  Groupdate.time_zone = 'Central Time (US & Canada)'

  before_action :set_cache_headers
  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_cache_headers
    response.headers['Cache-Control'] = 'no-cache, no-store'
    response.headers['Pragma'] = 'no-cache'
    response.headers['Expires'] = 'Fri, 01 Jan 1990 00:00:00 GMT'
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(first_name last_name))
  end
end
