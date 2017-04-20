class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def create
    secret = Secret.new secret_params
    unless secret.save
      flash[:errors] = secret.errors.full_messages
    end
    redirect_to "/users/#{current_user.id}"
  end

  def destroy
    @secret = Secret.find(params[:id])
    @secret.destroy if @secret.user === current_user
    redirect_to "/users/#{current_user.id}"
  end

  private
    def secret_params
      params.require(:secret).permit(:content).merge(user: current_user)
    end
end