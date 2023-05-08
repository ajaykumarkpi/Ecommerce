class CartsController < ApplicationController
  def show
    @render_cart=false
  end

  def add
    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_orderable = @cart.orderables.find_by(product_id: @product.id)

    if current_orderable && quantity > 0
      current_orderable.update(quantity: quantity)
    elsif current_orderable && quantity <= 0
      current_orderable.destroy
    elsif quantity > 0
      @cart.orderables.create(product: @product, quantity: quantity)
    end

    redirect_to cart_path
  end

  def remove
    orderable = Orderable.find_by(id: params[:id])
    orderable.destroy if orderable

    redirect_to cart_path
  end
end

