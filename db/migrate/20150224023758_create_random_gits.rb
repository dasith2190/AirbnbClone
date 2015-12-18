class CreateRandomGits < ActiveRecord::Migration
  def change
    create_table :random_gits do |t|

      t.timestamps null: false
    end
  end
end
