class SurveysController < ApplicationController
  def index
    session[:counter] ||= 0
  
  end

  def final
    session[:counter] = session[:counter]  + 1
    @survey = params[:user]

    flash[:success] = "Thanks for submitting this form #{session[:counter]} times now"

    render 'surveys/result'
  end

 def  Goback
   redirect_to '/surveys/index'
 end

  def result
  end
end
