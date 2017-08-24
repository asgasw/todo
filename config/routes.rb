Rails.application.routes.draw do
  resources :photos
  resources :homes
  resources :pcs
  resources :sections
  resources :people
  resources :todos
  resources :projects
  get 'home/index'
  root to: 'home#index'

  get 'home/tomokazu'
end
