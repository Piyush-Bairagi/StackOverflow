# frozen_string_literal: true

class AddAnswerIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :answer_id, :integer
  end
end
