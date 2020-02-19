class ChangeTypeDataInStatus < ActiveRecord::Migration[6.0]
  def change
  	change_column :students, :status, :boolean, using: 'status::boolean'
  end
end
