class AddParentsNameAndEmergencyNumberToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :mothers_name, :string
    add_column :students, :fathers_name, :string
    add_column :students, :emergency_number, :integer
  end
end
