class UsersController < ApplicationController
  include UsersHelper
  
  skip_before_action :verify_authenticity_token

  def profile_photo
    user_profile_photo(params)
  end
end
