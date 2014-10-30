class CreateQuizzes < ActiveRecord::Migration
  def up
    create_table :quizzes do |t|
    	t.integer "user_id"
    	t.string "quiz_title"
    	t.string "category"

      t.timestamps
    end
    add_index("quizzes", "user_id")
  end

  def down
  	drop_table :quizzes
  end
end
