class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :setting
      t.integer :type
      t.text :end
      t.integer :story_id
      t.integer :weapon_id
      t.integer :triggered

      t.timestamps null: false
    end
  end
end
