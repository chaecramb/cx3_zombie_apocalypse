class AddCharacterIdToAbility < ActiveRecord::Migration
  def change
    add_column :abilities, :character_id, :integer
  end
end
