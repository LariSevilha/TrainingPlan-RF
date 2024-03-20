class Exercise < ApplicationRecord
  belongs_to :training
  
 
  has_many :exercise_days, dependent: :destroy
  accepts_nested_attributes_for :exercise_days, allow_destroy: true
  
  
  enum date: {
    "Segunda-Feira" => 0,
    "Terça-Feira" => 1,
    "Quarta-Feira" => 2,
    "Quinta-Feira" => 3,
    "Sexta-Feira" => 4,
    "Sábado" => 5,
    "Domingo" => 6
  }
end
