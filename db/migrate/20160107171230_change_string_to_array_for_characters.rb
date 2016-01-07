class ChangeStringToArrayForCharacters < ActiveRecord::Migration
  def change
    remove_column :characters, :openers, :string
    remove_column :characters, :replies, :string
    add_column :characters, :opener1, :text
    add_column :characters, :opener2, :text
    add_column :characters, :reply1, :text
    add_column :characters, :reply2, :text
    add_column :characters, :reply3, :text
    add_column :characters, :reply4, :text
  end
end
