class CommentsController < ApplicationController
	def create
		comment = Comment.new(
				comment_params.merge(
				event: Event.find(comment_params[:event]),
				user: current_user
			)
		)
		if not comment.save
			flash[:form_errors] = comment.errors.full_messages
		end
		redirect_to :back
	end

	private
		def comment_params
			params.require(:comment).permit(:comment, :event)
		end
end
