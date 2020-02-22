class ChangeEmergencyNumberToString < ActiveRecord::Migration[6.0]
  def change
    change_column :students, :emergency_number, :string
    rename_column :students, :start_at, :start_date
    rename_column :students, :end_at, :end_date
  end
end
