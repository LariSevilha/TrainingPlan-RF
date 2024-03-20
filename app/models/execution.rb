class Execution < ApplicationRecord
  belongs_to :exercise
  belongs_to :exercise_day

  has_many :links, dependent: :destroy
  accepts_nested_attributes_for :links, allow_destroy: true
end
