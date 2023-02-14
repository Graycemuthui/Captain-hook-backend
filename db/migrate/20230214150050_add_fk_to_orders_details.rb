class AddFkToOrdersDetails < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :order_details, :orders
    add_foreign_key :order_details, :products
  end
end
