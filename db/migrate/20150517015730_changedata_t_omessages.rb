class ChangedataTOmessages < ActiveRecord::Migration
  def change
    change_column :messages, :to_userid, :integer
    change_column :messages, :to_userid, :integer
  end
end
