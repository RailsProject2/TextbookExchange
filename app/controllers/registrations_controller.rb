class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:name, :phone, :facebook, :email, :password, :password_confirmation, :admin_password)
  end

  def account_update_params
    params.require(:user).permit(:name, :phone, :facebook, :password, :password_confirmation, :current_password)
  end
end
