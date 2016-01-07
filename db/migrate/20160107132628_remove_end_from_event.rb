class RemoveEndFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :end, :text
  end
end
