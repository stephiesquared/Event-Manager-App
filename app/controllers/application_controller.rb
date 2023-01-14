  #Controller function for setting the allowed parameters users can enter when signing up for a new account, also associates the latitude and longitude of the user to be used when showing their current location on the map. 

class ApplicationController < ActionController::Base 

    protect_from_forgery with: :exception
  
    before_action :update_allowed_parameters, if: :devise_controller?
  
    protected
  
    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:latitude, :longitude, :email, :password)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:latitude, :longitude, :email, :password, :current_password)}
    end
  end
