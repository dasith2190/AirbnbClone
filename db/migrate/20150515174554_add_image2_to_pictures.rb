class AddImage2ToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :image2, :string
    add_column :pictures, :image3, :string
  end
end
