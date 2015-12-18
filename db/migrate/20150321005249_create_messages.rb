class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message_content
      t.string :subject
      t.string :to_userid
      t.string :from_userid

      t.timestamps null: false
    end
  end
end
