class AddUserIdToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :user_id, :integer
    add_index :questions, :user_id
    add_column :answers, :user_id, :integer
    add_index :answers, :user_id
    add_column :comments, :user_id, :integer
    add_index :comments, :user_id
  end
end
