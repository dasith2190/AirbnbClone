class AddTOmessages < ActiveRecord::Migration
  def change
    change_column :messages, :from_userid, :integer
  end
end
