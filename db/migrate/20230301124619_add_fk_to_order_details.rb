class AddFkToOrderDetails < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_details, :product, foreign_key: false
    add_reference :order_details, :order, foreign_key: false
  end
end
