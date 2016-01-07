class AddImagesToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :happyimg, :string
    add_column :characters, :sadimg, :string
    add_column :characters, :deadpanimg, :string
    add_column :characters, :deadimg, :string
    add_column :characters, :infectedimg, :string
  end
end
