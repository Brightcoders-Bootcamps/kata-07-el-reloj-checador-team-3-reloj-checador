class ChangePrivateNumberInEmployees < ActiveRecord::Migration[6.0]
  def change
    change_column(:employees, :private_number, :integer)
  end
end
