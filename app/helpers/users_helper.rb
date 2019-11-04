module UsersHelper
  def user_profile_photo(params)
    user = User.find(params[:id])
    user.profile_photo = params[:myFile]
    user.save!
    redirect_to edit_user_registration_path
  end
end
