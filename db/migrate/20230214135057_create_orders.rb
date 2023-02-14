class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :total_price
      t.string :status
      t.string :payment_method
      t.string :shipping_address
      t.timestamps
    end
    add_foreign_key :orders, :customers
  end
end
