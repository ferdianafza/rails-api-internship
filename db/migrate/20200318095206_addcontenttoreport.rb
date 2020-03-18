class Addcontenttoreport < ActiveRecord::Migration[6.0]
  def change
    add_column :reports, :content, :string
  end
end
