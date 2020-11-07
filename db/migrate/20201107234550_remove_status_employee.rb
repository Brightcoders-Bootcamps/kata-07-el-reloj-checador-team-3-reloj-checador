class RemoveStatusEmployee < ActiveRecord::Migration[6.0]
  def change
   remove_column :employees, :status
  end
end
