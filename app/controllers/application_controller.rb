class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!

  def after_sign_in_path_for(user)
    user_path(user)
  end

  protect_from_forgery with: :exception
end
