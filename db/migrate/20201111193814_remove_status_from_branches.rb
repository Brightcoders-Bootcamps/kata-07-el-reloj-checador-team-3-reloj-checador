class RemoveStatusFromBranches < ActiveRecord::Migration[6.0]
  def change
    remove_column :branches, :status
  end
end
