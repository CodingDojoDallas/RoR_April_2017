class SessionsController < ApplicationController
  # Require the user to be logged in for the exception (logout)
  skip_before_action :require_login, except: [:destroy]

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
      redirect_to new_session_path          # Send the user back after no success
    end
  end
  def destroy
    reset_session                           # Erase the session data
    redirect_to new_session_path
  end
end
