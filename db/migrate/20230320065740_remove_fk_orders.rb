class RemoveFkOrders < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:orders, :customers, index: true, foreign_key: true)
  end
end
