class AddActiveToBranches < ActiveRecord::Migration[6.0]
  def change
    add_column :branches, :active, :boolean
  end
end
