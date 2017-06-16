class CreateCheats < ActiveRecord::Migration
  def change
    create_table :cheats do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.integer :sheet_id
    end
  end
end
