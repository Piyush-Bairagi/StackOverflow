# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:new, :create]

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name, :last_name) }
  end
end