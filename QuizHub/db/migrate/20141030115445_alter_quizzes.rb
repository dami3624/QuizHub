class AlterQuizzes < ActiveRecord::Migration
  def up
  	rename_column("quizzes", "quiz_title", "title")
  end

  def down
  	rename_column("quizzes", "title", "quiz_title")
  end
end
