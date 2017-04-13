class SessionsController < ApplicationController
  def new
    # Render login page
  end
  def create
    @user = User.find_by_email(params['email']).try(:authenticate, params['password'])
    if @user
      session['user_id'] = @user.id         # Log user in if authenticated
      session['user_name'] = @user.name
      redirect_to @user                     # Send to user page
    else
      flash[:errors] = ['Invalid Combination']
      redirect_to new_session_path
    end
  end
  def destroy
    reset_session
    redirect_to new_session_path
  end
end
