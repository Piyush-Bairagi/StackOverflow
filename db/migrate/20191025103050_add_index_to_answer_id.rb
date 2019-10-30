# frozen_string_literal: true

class AddIndexToAnswerId < ActiveRecord::Migration[5.2]
  def change
    add_index :comments, :answer_id
  end
end
