class AddChangeColumnNullToDescription < ActiveRecord::Migration[5.2]
  def up
    change_column :answers, :description, :string, null: false
  end

  def down
    change_column :answers, :description, :string
  end
end
