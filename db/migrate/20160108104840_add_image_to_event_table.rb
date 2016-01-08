class AddImageToEventTable < ActiveRecord::Migration
  def change
    add_column :events, :eventimg, :string
  end
end
