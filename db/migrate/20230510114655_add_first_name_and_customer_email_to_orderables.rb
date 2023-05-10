class AddFirstNameAndCustomerEmailToOrderables < ActiveRecord::Migration[5.2]
  def change
    add_column :orderables, :first_name, :string
    add_column :orderables, :customer_email, :string
  end
end
