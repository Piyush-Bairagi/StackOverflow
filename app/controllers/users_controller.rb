class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def profile_photo
    @user = User.find(params[:id])
    @user.profile_photo = params[:myFile]
    @user.save!
    redirect_to edit_user_registration_path
  end
end
