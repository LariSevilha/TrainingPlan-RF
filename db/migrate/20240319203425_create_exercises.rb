class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.integer :name
      t.integer :date
      
      t.references :training, null: false, foreign_key: true
      t.timestamps
    end
  end
end
