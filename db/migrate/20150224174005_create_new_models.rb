class CreateNewModels < ActiveRecord::Migration
  def change
    create_table :new_models do |t|

      t.timestamps null: false
    end
  end
end
