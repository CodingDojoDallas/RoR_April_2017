class SurveysController < ApplicationController
  def main
    render :main
  end

  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      session[:survey] = @survey
      if session.key?(:count)
        session[:count] += 1
      else
        session[:count] = 1
      end
    else
      flash[:errors] = @survey.errors
      session[:survey].clear
    end

    redirect_to '/result'
  end

  def result
    render :result
  end

  private
    def survey_params
      params.require(:survey).permit(:name, :location, :language, :comment)
    end
end
