class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email))
    if @user.save
      flash[:notice] = ["Welcome, #{@user.first_name}"]  # ['User successfully created']
      redirect_to user_path(User.last)
      # redirect_to new_user_path
    else
      #errors we need to code later
      flash[:notice] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end
end
