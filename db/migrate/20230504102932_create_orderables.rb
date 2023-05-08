class CreateOrderables < ActiveRecord::Migration[5.2]
  def change
    create_table :orderables do |t|
      t.string :product
      t.string :belongs_to
      t.belongs_to :cart, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
