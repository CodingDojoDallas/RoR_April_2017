class SurveysController < ApplicationController
  def main
    render :main
  end

  def create
    survey = Survey.new(survey_params)
    # survey = Survey.new(survey_params) # is better because we don't want to send this variable to the view

    if survey.save
      if session.key?(:count)
        session[:count] += 1
      else
        session[:count] = 1
      end
    else
      flash[:errors] = survey.errors  # @survey.errors.full_messages

    end

    redirect_to '/result'  # redirect errors to '/' and display errors; redirect succes to '/results'
  end

  def result
    @survey = Survey.last  # do this instead of storing the created survey in session
    render :result
  end

  private
    def survey_params
      params.require(:survey).permit(:name, :location, :language, :comment)
    end
end
