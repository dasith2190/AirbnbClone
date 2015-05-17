class ChangepostIdfkToRatings < ActiveRecord::Migration
  def change
    change_column :reviews, :post_idfk, :integer

  end
end
