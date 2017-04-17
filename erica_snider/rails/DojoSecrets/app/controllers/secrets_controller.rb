class SecretsController < ApplicationController
  def index
    @secrets = Secret.includes(:likes).all
    @secrets_count = Secret.count
    # @likes_count = Secret.group(:likes).count
    # @likes_count = Secret.likes.count
    # @likes_count = Secret.include(:likes).count
    render :index
  end

  def create
    secret = Secret.new(context: secret_params[:context], user: current_user)
    if not secret.save
      flash[:errors] = secret.errors.full_messages
    end
    redirect_to "/users/#{current_user.id}"
  end

  def destroy
    secret = Secret.find(params[:id])
    if not secret.destroy
      flash[:errors] = secret.errors.full_messages
    end
    redirect_to "/users/#{current_user.id}"
  end

  private
    def secret_params
      params.require(:secret).permit(:context)
    end
end
