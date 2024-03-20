class Exercise < ApplicationRecord
  belongs_to :training
  
  has_many :executions, dependent: :destroy
  accepts_nested_attributes_for :executions, allow_destroy: true
  
  belongs_to :category_exercise
  
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
