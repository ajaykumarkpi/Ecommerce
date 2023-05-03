class CreateItemlists < ActiveRecord::Migration[5.2]
  def change
    create_table :itemlists do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :cart_id
      t.integer :order_id

      t.timestamps
    end
  end
end