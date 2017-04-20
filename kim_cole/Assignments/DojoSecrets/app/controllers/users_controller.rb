class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :require_correct_user, only: [:edit, :show, :update, :destroy]

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])

  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to "/sessions/new"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users/new"
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update user_params
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = @user.errors.full_messages     
      redirect_to "/users/#{@user.id}/edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      reset_session
      redirect_to "/users/new"
    else
      redirect_to "/users/#{@user.id}/edit"
    end
  end  

  private

    def require_correct_user
      if current_user != User.find(params[:id])
        redirect_to "/users/#{session[:user_id]}"
      end
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end