class EventRostersController < ApplicationController

	def create
		EventRoster.create(event: Event.find(params[:id]), user: current_user)
		redirect_to '/events'
	end

	def destroy
		EventRoster.find_by(user: current_user, event: Event.find(params[:id])).destroy
		redirect_to '/events'
	end
end
