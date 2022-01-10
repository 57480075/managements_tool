Rails.application.routes.draw do
  devise_for :users
  root "tools#index"
  resources :tools, only: [:new]
end
