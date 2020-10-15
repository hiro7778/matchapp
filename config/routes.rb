Rails.application.routes.draw do
  get 'homes/index'
  devise_for :users
  root to: "profiles#index"

  resources :profiles
end
