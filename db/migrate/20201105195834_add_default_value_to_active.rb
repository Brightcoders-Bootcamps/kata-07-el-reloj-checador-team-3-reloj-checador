class AddDefaultValueToActive < ActiveRecord::Migration[6.0]
  def change
    change_column :branches, :active, :boolean, default: true
  end
end
