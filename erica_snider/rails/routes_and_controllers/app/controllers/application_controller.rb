class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    render text: 'Hello CodingDojo!'
  end

  def times
    if session.key?(:times)
      session[:times] += 1
      render text: "You visited this url #{session[:times]} times."
    else
      session[:times] = 1
      render text: "You visited this url #{session[:times]} time."
    end
  end

  def times_restart
    session.clear
    render text: "Destroyed the session. #{session[:times]}"
  end
end
