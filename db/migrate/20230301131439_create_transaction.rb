class CreateTransaction < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.text :description
      t.integer :amount
      t.string :payment_status
      t.timestamps
    end
  end
end
