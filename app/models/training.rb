class Training < ApplicationRecord
  has_many :exercises, dependent: :destroy
  belongs_to :student
  
  accepts_nested_attributes_for :exercises

 
end