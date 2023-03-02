class RenameTypeToInterger < ActiveRecord::Migration[7.0]
  def change
    rename_column :customers, :zip, :varchar, limit: 5
  end
end
