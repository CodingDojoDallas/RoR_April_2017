class PostsController < ApplicationController
  layout "three_column"
  def index
    @posts = Post.all.includes(:user)
    @users = User.all
  end
  def create
    @post = Post.new(user_params)
    @post.save
    redirect_to posts_path
  end
  private
    def user_params
      params.require(:post).permit(:title, :content, :user_id)
    end
end
