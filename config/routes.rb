Rails.application.routes.draw do
  resources :todos
  resources :projects
  get 'home/index'
  root to: 'home#index'

  get 'home/tomokazu'
end
