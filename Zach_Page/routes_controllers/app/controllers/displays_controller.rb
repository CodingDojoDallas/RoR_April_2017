class DisplaysController < ApplicationController
  def index
    render text: "What should I say?"
  end

  def hello
    render text:"Hello Coding Dojo"
  end

  def say
    unless params[:name]
      render text:"Saying hello"
    else
      if params[:name] == "micheal"
        redirect_to "/say/hello/joe"
      else
        render text: "Saying Hello to #{params[:name]}!"
      end
    end
  end

  def times
    session[:count] ||= 0
    render text: "You've visited this url #{session[:count] +=1}time(s)"
  end

  def restart
    reset_session
    render text: "Destroyed the session count"
  end

end
