class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :user_authorization, except: [:new, :create]
  
  def new
    # render register page with form for new users
  end

  def show
    @user = User.find(session[:user_id])
    @secrets = Secret.all
    render :show
  end

  def create
    user = User.new(register_params)
    # user = User.new(user_params.merge(email: user_params[:email].downcase))
    if user.save
      session[:user_id] = user.id
      redirect_to '/sessions/new'
    else
      flash[:errors] = user.errors.full_messages
      redirect_to '/users/new'
    end
  end

  def edit
    render :edit
  end

  def update
    user = current_user
    if not user.update(edit_params)
      flash[:errors] = user.errors.full_messages
    end
    redirect_to "/users/#{user.id}/edit"
  end

  def destroy
    if current_user.destroy
      session.clear
      redirect_to "/users/new"
    else
      flash[:errors] = current_user.errors.full_messages
      redirect_to "/users/#{user.id}/edit"
    end
  end

  private
    def register_params
      params.require(:register).permit(:name, :email, :password, :password_confirmation)
    end

    def edit_params
      params.require(:edit).permit(:name, :email)
    end

    def user_authorization
      if session[:user_id] == params[:id]
        return true
      else
        return false
      end
    end
end
