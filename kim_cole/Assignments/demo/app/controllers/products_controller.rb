class ProductsController < ApplicationController
  def index
  	@products = Product.all
  	render json: @products
  end

  def create
  	# render :text => "Came to Create method"
  	@product = Product.create( name: params[:name], description: params[:description])
  	puts @product #this print things directly in the controller and show up in the console
  	render text: 'created a new product'
  	redirect_to '/products/index'
  end
end
