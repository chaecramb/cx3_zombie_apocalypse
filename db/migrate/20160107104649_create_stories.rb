class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :day
      t.string :text

      t.timestamps null: false
    end
  end
end
