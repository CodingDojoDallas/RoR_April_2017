class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:errors] = user.errors.full_messages
      redirect_to '/users/new'
    end
  end

  def total
    render json: {total: User.count}
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :age)
    end
    
end
