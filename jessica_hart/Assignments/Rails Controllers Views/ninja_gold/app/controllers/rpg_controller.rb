class RpgController < ApplicationController
  def index
    session[:gold] ||= 0    # Initialize session if gold and events don't exist
    session[:events] ||= [{msg: "Begin your adventure!", color: "none"}]
    @gold = session[:gold]
    @events = session[:events]
  end
  def process_gold
    if params[:building] == 'Farm'
      result = rand(10..20)
    elsif params[:building] == 'Cave'
      result = rand(5..10)
    elsif params[:building] == 'House'
      result = rand(2..5)
    elsif params[:building] == 'Casino'
      result = rand(-50..50)
    end
    session[:gold] += result
    process_message(params[:building], result)  # Call the message function to update activity
    redirect_to root_path
  end
  def process_message (building, result)
    timestamp = Time.new.strftime('%Y/%m/%d %-I:%S %p')
    unless result > 0
        action = "Entered a #{building} and lost #{result} gold... Ouch.. (#{timestamp})"
        color = "red"
    else
        action = "Earned #{result} gold from the #{building}! (#{timestamp})"
        color = "green"
    end
    session[:events] << {msg: action, color: color}   # Push both message and color class into session
  end
end
