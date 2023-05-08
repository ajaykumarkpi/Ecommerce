class Orderable < ApplicationRecord
  attr_accessor :customer_name, :customer_email, :address
  
  belongs_to :product
  belongs_to :cart

  def total
    product.price * quantity
  end
end
