class ChangeTypedataCheckinCheckout < ActiveRecord::Migration[6.0]
  def change
    change_column :presences, :checkin, :string
    change_column :presences, :checkout, :string
  end
end
