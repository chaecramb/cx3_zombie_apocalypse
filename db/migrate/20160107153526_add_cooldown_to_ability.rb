class AddCooldownToAbility < ActiveRecord::Migration
  def change
    add_column :abilities, :cooldown, :integer
  end
end
