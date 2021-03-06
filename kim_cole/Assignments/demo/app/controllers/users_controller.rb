class UsersController < ApplicationController
  def index
    # renders the index.html.erb view in the views/users folder
    @users = User.all
    if errors?
      flash[:error] = "You have errors"
      redirect_to '/users/' #pathing will be explained later
    else
      flash[:success] = "You did it!"
      redirect_to '/users/'
    end	
  end
  
  # this method checks if a users is signed in. If so it will redirect to the profile method by using the "<controler>/<method>" convention. If the if statement is not executed, then we will just render the new.html.erb view in the users view folder
  def new
    if signed_in?
      redirect_to "/users/profile"
    end
  end

  def create
    #adds the value in params[:id] to the :id key in session
    session[:id] = params[:id] #we will talk about params in a bit
  end
  def log_out
    #sets the session[:id] to nil, overwriting the previous value
    session[:id] = nil
  end
  
  def profile
  end

  def show
    #renders the show.html.erb view in the views/users folder
  end
  
  def home
    # renders the home.html.erb view in the views/users folder
    render "home" 
  end
  
  def list_products
     # renders the all.html.erb view in the views/products folder
    render "products/all"
  end
end
