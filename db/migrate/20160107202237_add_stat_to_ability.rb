class AddStatToAbility < ActiveRecord::Migration
  def change
    add_column :abilities, :stat, :string
  end
end
