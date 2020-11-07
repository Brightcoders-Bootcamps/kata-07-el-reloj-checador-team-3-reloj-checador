class RenameActiveToStatus < ActiveRecord::Migration[6.0]
  def change
    rename_column :branches, :active, :status
  end
end
