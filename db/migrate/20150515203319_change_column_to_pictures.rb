class ChangeColumnToPictures < ActiveRecord::Migration
  def change
    change_column :pictures, :post_id_fk, :integer
  end
end
