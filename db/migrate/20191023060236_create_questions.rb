# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :description
      t.integer :number_of_likes
      t.integer :number_of_dislikes
      t.integer :number_of_answers

      t.timestamps
    end
  end
end
