class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    render :index
  end
end
