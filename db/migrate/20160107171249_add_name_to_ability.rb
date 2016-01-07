class AddNameToAbility < ActiveRecord::Migration
  def change
    add_column :abilities, :name, :string
  end
end
