class AddFailureToEvent < ActiveRecord::Migration
  def change
    add_column :events, :failure, :text
  end
end
