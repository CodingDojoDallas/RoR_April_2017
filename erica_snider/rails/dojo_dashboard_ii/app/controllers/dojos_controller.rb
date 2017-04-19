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

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
