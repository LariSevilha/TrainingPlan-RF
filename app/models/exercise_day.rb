class ExerciseDay < ApplicationRecord
  belongs_to :category_exercise
  has_many :executions, dependent: :destroy
  accepts_nested_attributes_for :executions, allow_destroy: true
end
