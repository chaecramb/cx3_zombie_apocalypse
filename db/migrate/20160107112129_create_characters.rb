class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :special
      t.string :status
      t.integer :morale

      t.timestamps null: false
    end
  end
end
