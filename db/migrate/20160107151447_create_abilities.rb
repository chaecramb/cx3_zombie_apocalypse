class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
