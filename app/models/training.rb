class Training < ApplicationRecord
  has_many :exercises, dependent: :destroy
  extend FriendlyId
  belongs_to :student
  friendly_id :student_name, use: [:slugged, :finders]

  def student_name
    student.name if student
  end

  def should_generate_new_friendly_id?
    student_id_changed? || super
  end
  accepts_nested_attributes_for :exercises

 
end