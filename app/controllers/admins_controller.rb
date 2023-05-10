class AdminsController < ApplicationController
  def show
    if logged_in?(:admin)
      @products = Product.all
    else
      @products = Product.page(params[:page]).per(5)
    end
  end

  def index
    @users = User.all
  end

  def new
    @orderables = Orderable.all
  end

end