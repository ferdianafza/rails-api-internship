class ChangeTypeDataCreatedAtAndUpdatedAtInPresence < ActiveRecord::Migration[6.0]
  def change
    change_column :presences, :created_at, :date
    change_column :presences, :updated_at, :date
  end
end
