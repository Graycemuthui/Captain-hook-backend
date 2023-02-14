class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :amount
      t.string :order_number
      t.string :payment_method
      t.string :status
      t.date :order_date

      t.timestamps
    end
  end
end
