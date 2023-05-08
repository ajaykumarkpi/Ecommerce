class ProductsController < ApplicationController
  def index
    if logged_in?(:admin)
      @products = Product.all
    else
      @products = Product.page(params[:page]).per(5)
    end
  end
  
  def show
    if logged_in?(:admin)
      @products = Product.all
    else
      @products = Product.page(params[:page]).per(5)
    end
  end
  
  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to products_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to products_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
