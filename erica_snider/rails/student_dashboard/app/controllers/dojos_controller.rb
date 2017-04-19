class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    render :index
  end

  def new
    render :new
  end

  def create
    dojo = Dojo.new(dojo_params)

    if dojo.save
      redirect_to '/'
    else
      flash[:errors] = dojo.errors.full_messages
      redirect_to '/dojos/new'
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
    render :show
  end

  def edit
    @dojo = Dojo.find(params[:id])
    render :edit
  end

  def update
    dojo = Dojo.find(params[:id])
    if dojo.update(dojo_params)
      redirect_to '/'
    else
      flash[:errors] = dojo.errors.full_messages
      redirect_to "/dojos/#{params[:id]}/edit"
    end

  end

  def destroy
    if Dojo.find(params[:id]).destroy
      redirect_to '/'
    else
      flash[:errors] = Dojo.find(params[:id]).destroy.errors.full_messages
      redirect_to '/'
    end
  end

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
