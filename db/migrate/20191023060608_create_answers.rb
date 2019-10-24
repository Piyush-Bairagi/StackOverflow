class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :description
      t.integer :number_of_likes
      t.integer :number_of_dislikes
      t.integer :number_of_comments

      t.timestamps
    end
  end
end
