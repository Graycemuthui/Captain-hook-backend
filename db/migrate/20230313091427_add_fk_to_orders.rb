class AddFkToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :customers, foreign_key: true
  end
end
