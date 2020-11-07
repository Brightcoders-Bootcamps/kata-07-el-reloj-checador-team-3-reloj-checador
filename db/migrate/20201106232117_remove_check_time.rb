class RemoveCheckTime < ActiveRecord::Migration[6.0]
  def change
    remove_column :reports, :check_time
  end
end
