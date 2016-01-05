class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.float :price, null: false
      t.integer :number, null: false
      t.timestamps null: false
    end
  end
end
