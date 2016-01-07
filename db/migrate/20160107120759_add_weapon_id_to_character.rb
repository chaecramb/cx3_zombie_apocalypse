class AddWeaponIdToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :weapon_id, :integer
  end
end
