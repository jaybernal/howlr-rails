class CreateHowls < ActiveRecord::Migration
  def change
    create_table :howls do |t|
      t.string :text
      t.string :image
      t.integer :wolf_id

      t.timestamps null: false
    end
  end
end
