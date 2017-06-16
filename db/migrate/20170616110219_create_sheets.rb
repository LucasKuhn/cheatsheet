class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :name, null: false
      t.integer :user_id
    end
  end
end
