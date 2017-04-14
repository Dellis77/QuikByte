# controllers/users/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController

  private

  # my custom fields are :name,
  def sign_up_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation, :current_password)
  end
end
