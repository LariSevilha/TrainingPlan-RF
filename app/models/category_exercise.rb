class CategoryExercise < ApplicationRecord
  has_many :exercises
  has_many :executions, dependent: :destroy
  accepts_nested_attributes_for :executions, allow_destroy: true
  
end
