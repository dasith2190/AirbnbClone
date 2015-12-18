class ChangeColumnToPostcs < ActiveRecord::Migration
  def change
    change_column :postcs, :user_idfk, :integer
  end
end
