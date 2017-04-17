class DisplaysController < ApplicationController

	def index

		render :text => "What do you want me to say???"

	end

	def hello

		render :text => "Hello Coding Dojo!"

	end

	def say
		unless params[:name]
			render :text => "Saying Hello!"
		else
			if params[:name] == "micheal"
				redirect_to "/say/hello/joe"
			else
				render text: "Saying Hello #{params[:name]}!"
			end
		end
	end

	def times

		session[:count] ||= 0
		render text: "You have visited this url #{session[:count] += 1} time(s)"
	end

	def restart
		reset_session
		render text: "Destroyed the session!"
	end
	
end
