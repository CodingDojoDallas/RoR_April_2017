class SecretsController < ApplicationController
  # All methods require login

  def index
    @secrets = Secret.all                       # Render all secrets in index
  end
  def create
    secret = Secret.new(secret_params)          # Create a new secret to the logged in user
    unless secret.save
      flash[:errors] = secret.errors.full_messages
    end
    redirect_to user_path(current_user)
  end
  def destroy
    @secret = Secret.find(params[:id])          # Remove the secret belonging to logged in user
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
