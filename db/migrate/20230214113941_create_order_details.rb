class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.string :quantity
      t.integer :unit_price

      t.timestamps
    end
    add_foreign_key :order_details, :orders
    add_foreign_key :order_details, :products
  end
end
