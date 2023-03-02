class AddFkToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :transactions, :order, foreign_key: true
  end
end
