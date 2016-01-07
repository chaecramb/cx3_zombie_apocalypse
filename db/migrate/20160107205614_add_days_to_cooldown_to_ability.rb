class AddDaysToCooldownToAbility < ActiveRecord::Migration
  def change
    add_column :abilities, :days_to_cooldown, :integer
  end
end
