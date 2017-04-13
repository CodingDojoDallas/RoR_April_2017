class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user
      session['name'] = @user.name          # Log the user in if they exist
      session['id'] = @user.id
      redirect_to messages_path
    else
      @new_user = User.new(name: params[:name])   # Sign the user up if they don't exist
      if @new_user.save
        session['name'] = @new_user.name          # Log the user in after registering
        session['id'] = @new_user.id
        redirect_to messages_path
      else
        flash[:errors] = @new_user.errors.full_messages   # Send the user back if not valid
        redirect_to new_user_path
      end
    end
  end

  def logout
    reset_session
    redirect_to new_user_path
  end
end
