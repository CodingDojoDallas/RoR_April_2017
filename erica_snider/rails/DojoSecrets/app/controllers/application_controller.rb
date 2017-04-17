class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  private
    def require_login
      if not session[:user_id]
        redirect_to "/sessions/new"
      end
    end

end
