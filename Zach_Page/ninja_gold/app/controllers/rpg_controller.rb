class RpgController < ApplicationController
  def index
    session[:gold] ||= 0
    session[:activities] ||= []

    @gold = session[:gold]
    @activities = session[:activities]
  end

  def new
    if params[:building] == "farm"
      gold = rand(10..20)
    elsif params[:building] == "cave"
      gold = rand(5..10)
    elsif params[:building] == "house"
      gold = rand(2..5)
    elsif params[:building] == "casino"
      gold = rand(-50..50)
    end

    curr_time = Time.now

    if gold > 0
      session[:activities] << "Earned #{gold} from the #{params[:building]}.(#{curr_time.strftime('%Y/%m/%d/ %I:%M %P')})"
    else
      session[:activities] << "Entered a casino and lost #{gold} gold... Idiot.(#{curr_time.strftime('%Y/%m/%d/ %I:%M %P')})"
    end

    session[:gold] += gold
    redirect_to :root
  end
end
