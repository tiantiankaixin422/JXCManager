class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :sex, :integer
    add_column :users, :age, :integer
    add_column :users, :position, :string
    add_column :users, :mobile, :string
  end
end
