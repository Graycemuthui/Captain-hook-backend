class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :zip, :varchar, limit: 5
    remove_column :customers, :state, :string
  end
end
