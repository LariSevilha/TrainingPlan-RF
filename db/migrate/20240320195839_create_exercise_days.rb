class CreateExerciseDays < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_days do |t|
      t.string :name
      t.references :exercise, null: false, foreign_key: true
      t.references :category_exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
