class CreateCheats < ActiveRecord::Migration
  def change
    create_table :cheats do |t|
      t.string :title
      t.string :content
    end
  end
end
