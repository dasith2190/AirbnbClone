class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :user_name
      t.string :user_desc

      t.timestamps null: false
    end
  end
end
