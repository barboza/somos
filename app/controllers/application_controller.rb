class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def render_404
    raise ActionController::RoutingError.new('Not Found')
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :document_number, :address, :landline, :mobile_phone, :gender) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :document_number, :address, :landline, :mobile_phone, :gender) }
  end
end

