class AddPrivateNumberToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :private_number, :int
  end
end
