class LikesController < ApplicationController
  # All methods require login

  def create
    Like.create(like_params)            # Created like on secret
    redirect_to secrets_path
  end
  def destroy
    @like = Like.find(params[:id])      # Removed like on secret
    if current_user === @like.user
      @like.destroy
    end
    redirect_to secrets_path
  end
  private
    def like_params
      params.require(:like).permit(:secret_id).merge(user: current_user)
    end
end
