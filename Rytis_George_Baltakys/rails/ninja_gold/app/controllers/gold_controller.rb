class GoldController < ApplicationController
  def index
  	if not session[:gold]
  		session[:gold] = 0
  		session[:win] = 0
  		session[:where] = ''
  		session[:output] = []
  	end
  end

  def dig
  	if @_params[:dig] == 'farm'
  		session[:win] = rand(10..20)
  	elsif @_params[:dig] == 'cave'
  		session[:win] = rand(5..10)
  	elsif @_params[:dig] == 'house'
  		session[:win] = rand(2..5)
  	elsif @_params[:dig] == 'casino'
  		session[:win] = rand(-50..50)
  	elsif @_params[:dig] == 'reset'
  		session.clear
  		redirect_to '/'
  		return
  	end

  	session[:where] = @_params[:dig]
  	session[:gold] += session[:win]

  	activity = ''
  	if session[:win] > 0
  		activity += "<div class='gold'>Eearned #{session[:win]} gold from the #{session[:where]}"
    else
      activity += "<div class='loss'>Lost #{session[:win].abs} gold from the #{session[:where]}. Ouch.."
  	end
    activity += "! </div>"

    session[:output].unshift(activity)

  	redirect_to '/'
  end
end
