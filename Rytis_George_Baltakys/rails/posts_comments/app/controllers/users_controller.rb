class UsersController < ApplicationController

	def create
		user = User.new(user_params)
		if user.valid?
			user.save
			session[:user_id] = user.id
			redirect_to '/posts'
		else
			flash[:errors] = user.errors.full_messages
			redirect_to '/'
		end
	end

	private
		def user_params
			params.require(:user).permit(:name, :email)
		end
end
