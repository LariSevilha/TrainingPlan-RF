class Student < ApplicationRecord
  has_many :trainings
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
 def should_generate_new_friendly_id?
  name_changed?
 end
end