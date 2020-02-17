class ChangeProvinceToProvinceIdInStudent < ActiveRecord::Migration[6.0]
  def change
    rename_column :students, :province, :province_id
    change_column :students, :province_id, :integer
  end
end
