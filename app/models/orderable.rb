class Orderable < ApplicationRecord
  attr_accessor :first_name, :last_name, :customer_email, :address,:city,:state,:pincode,:country,:Mobile_No 

  belongs_to :product
  belongs_to :cart
  
  def total
    product.price * quantity
  end
end
