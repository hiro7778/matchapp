Rails.application.routes.draw do
  devise_for :users
  root to: "profiles#index"
  resources :users, only: [:show]
  resources :profiles
end
