class ProductsController < ApplicationController
  def index
        @product = Product.all
  end

  def show
        @product = Product.find(params[:id])
  end

  def new
  end

  def edit
        @product = Product.find(params[:id])
  end

  def create
        Product.create(name: params[:p_name], description: params[:p_description], pricing: params[:p_pricing])
        redirect_to "/"
  end

  def update
        Product.find(params[:id]).update(name: params[:p_name], description: params[:p_description], pricing: params[:p_pricing])
        redirect_to "/"
  end

  def destroy
        Product.find(params[:id]).destroy
        redirect_to "/"
  end
end
