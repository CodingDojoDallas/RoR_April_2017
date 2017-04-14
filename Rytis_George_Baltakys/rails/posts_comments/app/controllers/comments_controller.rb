class CommentsController < ApplicationController
	def create
		comment = Comment.new(comment_params.merge(
				post: Post.find(comment_params[:post]),
				user: User.find(session[:user_id])
			)
		)
		if comment.valid?
			comment.save
		else
			flash[:comment_errors] = comment.errors.full_messages
		end
		redirect_to "/posts/#{comment_params[:post]}"
	end

	private
		def comment_params
			params.require(:comment).permit(:comment, :post)
		end
end
