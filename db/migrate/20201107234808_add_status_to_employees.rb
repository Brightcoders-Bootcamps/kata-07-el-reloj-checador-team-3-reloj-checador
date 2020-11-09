class AddStatusToEmployees < ActiveRecord::Migration[6.0]
  def change
   add_column :employees, :status, :boolean, default: true
  end
end
