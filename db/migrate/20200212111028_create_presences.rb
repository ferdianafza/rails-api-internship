class CreatePresences < ActiveRecord::Migration[6.0]
  def change
    create_table :presences do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.integer  :student_id

      t.timestamps
    end
  end
end
