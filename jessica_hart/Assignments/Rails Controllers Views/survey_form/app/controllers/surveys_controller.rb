class SurveysController < ApplicationController
  def index
    # render "index"
    session[:count] ||= 0   # Set count to zero if it doesn't exist
  end
  def result
    session[:count] += 1
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} time(s) now."
    @user = params[:user]
  end
end
