class AddOpenersAndRepliesToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :openers, :string
    add_column :characters, :replies, :string
  end
end
