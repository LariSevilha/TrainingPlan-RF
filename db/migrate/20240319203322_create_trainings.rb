class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
     t.string :slug
     t.references :student, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
