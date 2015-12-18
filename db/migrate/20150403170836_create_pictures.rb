class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :picture_id
      t.string :post_id_fk
      t.string :image_url

      t.timestamps null: false
    end
  end
end
