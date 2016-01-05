class CreateOutRepertories < ActiveRecord::Migration
  def change
    create_table :out_repertories do |t|
      t.datetime :get_at
      t.integer :get_by
      t.text :desc
      t.float :pay_money
      t.float :sum_price
      t.float :real_price
      t.belongs_to :part, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
