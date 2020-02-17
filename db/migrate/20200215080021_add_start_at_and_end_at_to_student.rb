class AddStartAtAndEndAtToStudent < ActiveRecord::Migration[6.0]
  def change
  	add_column :students, :start_at, :date
  	add_column :students, :end_at, :date
  end
end
