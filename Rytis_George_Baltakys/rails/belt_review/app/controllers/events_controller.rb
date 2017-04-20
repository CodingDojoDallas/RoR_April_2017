class EventsController < ApplicationController

	before_action :authorize_user
	def index
		@current_user = current_user
		@states = State.all
		@in_state_events = Event.where(state: @current_user.state)
		@out_of_state_events = Event.where.not(state: @current_user.state)
	end

	def show
		@event = Event.find(params[:id])
		@comments = Comment.where(event: @event)
	end

	def create
		event = Event.new(
				event_params.merge(
				state: State.find(event_params[:state]),
				user: current_user
			)
		)
		if not event.save
			flash[:form_errors] = event.errors.full_messages
		end
		redirect_to '/events'
	end

	def destroy
		Event.find(params[:id]).destroy
		redirect_to '/events'
	end

	private
		def event_params
			params.require(:event).permit(:name, :date, :city, :state)
		end
end
