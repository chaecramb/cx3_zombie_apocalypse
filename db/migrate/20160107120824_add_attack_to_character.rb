class AddAttackToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :attack, :integer
  end
end
