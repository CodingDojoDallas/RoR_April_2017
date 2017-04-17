 class SurveysController < ApplicationController

	def new
		if not session[:count]
			session[:count] = 0
		end
		@languages = [
			'Python',
			'Ruby',
			'JavaScript',
			'English'
		]

		@locations = [
			'Dallas',
			'San Diego',
			'Los Angeles'
		]
	end

	def create
		survey = Survey.create(survey_params)
		if survey.valid?
			survey.save
			session[:count] += 1
			redirect_to '/result'
		else
			flash[:errors] = survey.errors.full_messages
			redirect_to '/'
		end
	end

	def show
		@survey = Survey.last
	end

	private
		def survey_params
			params.require(:survey).permit(:name, :location, :language, :comment)
		end
end
