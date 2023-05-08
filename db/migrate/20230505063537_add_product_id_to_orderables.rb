class AddProductIdToOrderables < ActiveRecord::Migration[5.2]
  def change
    add_column :orderables, :product_id, :integer
  end
end
