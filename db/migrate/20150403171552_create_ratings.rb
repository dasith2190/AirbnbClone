class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :post_idfk
      t.integer :review_total
      t.integer :total_rated

      t.timestamps null: false
    end
  end
end
