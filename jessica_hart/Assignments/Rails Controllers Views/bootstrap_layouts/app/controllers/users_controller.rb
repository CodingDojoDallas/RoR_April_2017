class UsersController < ApplicationController
  layout "two_column"
  def index
    @users = User.all
  end
  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path
  end
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :favorite_language)
    end
end
