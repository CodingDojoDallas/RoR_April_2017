class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def create
		post = Post.new(post_params.merge(user: User.find(session[:user_id])))
		if post.valid?
			post.save
			redirect_to '/posts'
		else
			flash[:post_errors] = post.errors.full_messages
		end
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments.includes(:user)
	end

	private
		def post_params
			params.require(:post).permit(:post)
		end

end
