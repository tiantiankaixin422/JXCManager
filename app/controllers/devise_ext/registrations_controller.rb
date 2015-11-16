class DeviseExt::RegistrationsController < Devise::RegistrationsController
  # before_action :user_params, :only => [:create]
  def new
    super
  end

  def create
    super do |resource|
    end
  end

  def update
    super
  end

  # private
  # def user_params
  #   params.require(:user).permit(:username, :password, :password_confirmation)
  # end
end