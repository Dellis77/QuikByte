# controllers/users/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters

  protected

  # my custom fields are :name,
 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :email, :password, :password_confirmation])
  end
   

   def account_update_params
		devise_parameter_sanitizer.permit(:account_update, [ :name, :email, :password, :password_confirmation, :current_password])
	end


end
