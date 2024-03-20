class TrainingController < ApplicationController
  def index
    @students = Student.includes(:trainings)
  end

  def show
    @training = Training.includes(exercises: [:executions, :category_exercise]).friendly.find(params[:slug])
    @student = @training.student
    @exercise = @training.exercises.first
  end
end
