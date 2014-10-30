class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.integer "quiz_id"
      t.string "quest"
      t.string "op_1"
      t.string "op_2"
      t.string "op_3"
      t.string "answer"
      t.timestamps
    end
    add_index("questions", "quiz_id")
  end

  def down
  	drop_table :questions
  end
end
