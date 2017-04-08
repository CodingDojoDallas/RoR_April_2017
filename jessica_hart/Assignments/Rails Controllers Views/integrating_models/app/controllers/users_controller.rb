class UsersController < ApplicationController
  def index
    render json: User.all
    # @users = User.all
  end
  def new
    # render "new"
    # Automatically renders new.html.erb
  end
  def create
    User.create(name: params[:user][:name])
    redirect_to users_path
  end
  def show
    render json: User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    User.find(params[:id]).update(name: params[:name])
    # flash[:notice] = "User updated."
    redirect_to user_path(params[:id])
  end
  def total
    render json: { total: User.count }
  end
end
