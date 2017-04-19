class SurveysController < ApplicationController

	def new
		if not session[:count]
			session[:count] = 0
		end
		@languages = ['PHP', 'Ruby', 'JavaScript', 'Python', 'C#', 'Spanish']

		@locations = ['Dallas', 'San Diego', 'Chicago', 'D.C.']
	end

	def create
		survey = Survey.new(survey_params)
		p survey.valid?
		if not survey.valid?
			p 'errors were found'
			flash[:errors] = survey.errors.full_messages
			redirect_to '/'
		else
			survey.save
			session[:count] += 1
			redirect_to '/result'
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
