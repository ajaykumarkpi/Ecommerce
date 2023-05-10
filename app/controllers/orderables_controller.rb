class OrderablesController < ApplicationController

  def new
    @orderable = Orderable.new
  end

  def create
    @orderable = Orderable.new(orderables_params)

    if @orderable.save
      flash[:notice] = "Order successfully placed."
      redirect_to orderables_path(@orderable)
    else
      flash[:error] = "There was an error creating your order."
      render :new
    end
  end

  private

  def orderables_params
    params.require(:orderable).permit(:first_name, :last_name, :customer_email, :address,:city,:state,:pincode,:country,:Mobile_No)
  end
end
