class AddChangeColumnNullToUser < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :first_name, :string, null: false
    change_column :users, :last_name, :string, null: false
  end

  def down
    change_column :users, :first_name, :string
    change_column :users, :last_name, :string
  end
end
