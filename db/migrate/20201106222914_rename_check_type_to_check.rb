class RenameCheckTypeToCheck < ActiveRecord::Migration[6.0]
  def change
    rename_column :reports, :check_type, :check
  end
end
