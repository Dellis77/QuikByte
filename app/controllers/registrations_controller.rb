# controllers/users/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters

  protected

  # my custom fields are :name,
 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :fname, :lname, :email, :password, :password_confirmation])
  end
   

   def account_update_params
		devise_parameter_sanitizer.permit(:account_update, [ :fname, :lname, :email, :password, :password_confirmation, :current_password])
	end


end
