class AddDifficultyToEvent < ActiveRecord::Migration
  def change
    add_column :events, :difficulty, :integer
  end
end
