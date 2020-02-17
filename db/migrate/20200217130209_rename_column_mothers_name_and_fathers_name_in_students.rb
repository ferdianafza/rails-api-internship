class RenameColumnMothersNameAndFathersNameInStudents < ActiveRecord::Migration[6.0]
  def change
    rename_column :students, :mothers_name, :mother_name
    rename_column :students, :fathers_name, :father_name
  end
end
