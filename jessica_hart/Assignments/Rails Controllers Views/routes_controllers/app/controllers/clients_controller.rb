class ClientsController < ApplicationController
  def index
    render text: "What do you want me to say???"
  end
  def hello
    render text: "Hello Coding Dojo!"
  end
  def say_hello
    unless params[:id]
      render text: "Saying Hello!"
    else
      if params[:id] == "michael"
        redirect_to "/say/hello/joe"
      else
        render text: "Saying Hello #{params[:id].capitalize}!"
      end
    end
  end
  def times
    unless session[:times_count]
      session[:times_count] = 0
    else
      session[:times_count] += 1
    end
    render text: "You visited this url #{session[:times_count]} time."
    # Another way to achieve this:
    # session[:count] ||= 0
    # render text: "You have visited this url #{session[:count] += 1} time(s)"
  end
  def times_restart
    session.delete(:times_count)
    render text: "Destroyed the session!"
    # Alternate solution: reset_session
  end
end
