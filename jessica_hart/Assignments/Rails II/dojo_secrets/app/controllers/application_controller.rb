class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  # Authenticate users
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  # Login controller filter to restrict access
  def require_login
    unless session[:user_id]
      flash[:errors] = ["You must be logged in to continue."]
      redirect_to new_session_path
    end
  end
  def authorize_login
    if current_user != User.find(params[:id])
      redirect_to user_path(current_user)
    end
  end
end
