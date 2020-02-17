class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :subject
      t.string :content
      t.integer :student_id

      t.timestamps
    end
  end
end
