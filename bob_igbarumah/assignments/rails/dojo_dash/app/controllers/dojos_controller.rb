class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
  end
end
