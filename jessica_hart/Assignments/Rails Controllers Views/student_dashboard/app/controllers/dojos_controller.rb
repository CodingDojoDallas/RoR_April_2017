class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end
  def new
  end
  def create
    @dojo = Dojo.new(dojo_params)
    if @dojo.save
      flash[:notice] = "Dojo successfully created."
      redirect_to root_path
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to new_dojo_path
    end
  end
  def show
    @dojo = Dojo.find(params[:id])
  end
  def edit
    @dojo = Dojo.find(params[:id])
  end
  def update
    @dojo = Dojo.find(params[:id])
    if @dojo.update(dojo_params)
      flash[:notice] = "Dojo successfully updated."
      redirect_to root_path
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to :back
    end
  end
  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to root_path
  end

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
