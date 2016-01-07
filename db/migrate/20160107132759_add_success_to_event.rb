class AddSuccessToEvent < ActiveRecord::Migration
  def change
    add_column :events, :success, :text
  end
end
