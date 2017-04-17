class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def create
    secret = Secret.new secret_params
    unless secret.save
      flash[:errors] = secret.errors.full_messages
    end
    redirect_to user_path(current_user)
  end

  def destroy
    @secret = Secret.find(params[:id])
    # Check if currently logged in user (from appication_controller)
    if @secret.user_id === session[:user_id]
      @secret.destroy
    end
    redirect_to user_path(current_user)
  end

  private
    def secret_params
      params.require(:secret).permit(:content).merge(user: current_user)
    end
end
