class CreatePutRepertories < ActiveRecord::Migration
  def change
    create_table :put_repertories do |t|
      t.string :order_num
      t.string :project_class
      t.integer :sum
      t.float :total_price
      t.string :express_num
      t.datetime :arrival_date
      t.float :discount
      t.float :discount_price
      t.text :remarks
      t.belongs_to :part, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
