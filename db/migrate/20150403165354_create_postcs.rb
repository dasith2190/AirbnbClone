class CreatePostcs < ActiveRecord::Migration
  def change
    create_table :postcs do |t|
      t.integer :postcs_id
      t.string :user_idfk
      t.string :post_title
      t.string :post_description
      t.string :address
      t.string :country
      t.string :zip
      t.string :city
      t.string :home_type
      t.integer :rooms
      t.integer :baths
      t.integer :price
      t.string :price_type

      t.timestamps null: false
    end
  end
end
