class CreateForeingKeyOnReports < ActiveRecord::Migration[6.0]
  def change
      add_column("reports","employee_id","string")
    end
end
