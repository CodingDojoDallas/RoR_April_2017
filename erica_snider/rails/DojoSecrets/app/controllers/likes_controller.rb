class LikesController < ApplicationController
  def create
    like = Like.new(user: current_user, secret: Secret.find(like_params[:secret_id]))
    if not like.save
      flash[:errors] = like.errors.full_messages
    end
    redirect_to '/secrets/index'
  end

  def destroy
    like = Like.find_by(user: current_user, secret: Secret.find(params[:id]))
    if not like.destroy
      flash[:errors] = secret.errors.full_messages
    end
    redirect_to '/secrets/index'
  end

  private
    def like_params
      params.require(:like).permit(:secret_id)
    end
end
