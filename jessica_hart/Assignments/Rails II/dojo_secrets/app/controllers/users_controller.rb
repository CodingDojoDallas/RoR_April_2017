class UsersController < ApplicationController
  # Require the user to be logged in except for registration methods
  skip_before_action :require_login, only: [:new, :create]
  before_action :authorize_login, except: [:new, :create]

  def new
    @user = User.new                        # Render registration page
  end
  def create
    @user = User.new(user_params)           # Register new user and prompt to log in
    if @user.save
      redirect_to new_session_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end
  def show
    @user = User.find(params[:id])          # Render user dashboard
  end
  def edit
    @user = User.find(params[:id])          # Edit respective user
  end
  def update
    @user = User.find(params[:id])          # Update user with new info
    if @user.update(update_params)
      # session['user_name'] = @user.name   # Assumption that user would only edit their own
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end
  def destroy
    @user = User.find(params[:id])          # Remove user forever
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
