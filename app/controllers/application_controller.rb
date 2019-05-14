class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:phonenumber, :firstname, :lastname, :optin_texts, :optin_email, :date_firstconsultation, :date_lastconsultation, :address_street, :address_city, :address_state, :address_zipcode])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:phonenumber, :firstname, :lastname, :optin_texts, :optin_email, :date_firstconsultation, :date_lastconsultation, :address_street, :address_city, :address_state, :address_zipcode])
  end
end
