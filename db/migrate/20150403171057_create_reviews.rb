class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :review_id
      t.integer :post_idfk
      t.integer :user_idfk
      t.string :review_title
      t.string :review_desc

      t.timestamps null: false
    end
  end
end
