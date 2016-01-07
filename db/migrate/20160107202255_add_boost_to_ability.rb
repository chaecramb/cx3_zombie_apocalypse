class AddBoostToAbility < ActiveRecord::Migration
  def change
    add_column :abilities, :boost, :integer
  end
end
