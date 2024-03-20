Rails.application.routes.draw do
    
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users 
  root "home#index"
  get 'treinos', to: 'training#index', as: 'trainings'
  get 'treino/:slug', to: 'training#show', as: 'training'
  get 'alunos', to: 'student#index', as: 'students'
  
end
