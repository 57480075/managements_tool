Rails.application.routes.draw do
  devise_for :users
  root "tools#index"
  resources :tools, only: [:new, :create]
  resources :task_closes, only: [:new, :create]
  resources :users, only: [:edit, :update]
end
