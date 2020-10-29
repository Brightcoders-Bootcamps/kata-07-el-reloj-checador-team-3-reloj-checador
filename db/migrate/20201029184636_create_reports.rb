class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :check_type
      t.datetime :check_time

      t.timestamps
    end
  end
end
