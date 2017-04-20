class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
  	User.find(session[:user_id]) if logged_in
  end

  def authorize_user
  	redirect_to '/' unless logged_in
  end

  def logged_in
  	session[:user_id]
  end

  helper_method :current_user
  helper_method :authorize_user
  helper_method :logged_in
end
