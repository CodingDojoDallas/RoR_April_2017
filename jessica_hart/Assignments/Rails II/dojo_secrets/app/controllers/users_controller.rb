class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(update_params)
      session['user_name'] = @user.name
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      reset_session
      redirect_to new_user_path
    else
      edit_user_path(@user)
    end
  end
  private
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end
    def update_params
      params.require(:user).permit(:email, :name)
    end
end
