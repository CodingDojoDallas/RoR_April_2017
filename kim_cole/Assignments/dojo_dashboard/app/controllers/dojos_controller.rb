class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end

  def create
    @dojo = Dojo.new(dojo_params)

    if @dojo.save
      redirect_to root_path, notice: "You have successfully created a Dojo!"
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to :back
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
      redirect_to root_path, notice: "You have successfully updated a Dojo!"
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to :root
  end

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
