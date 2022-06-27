Rails.application.routes.draw do
  devise_for :users
  root "plans#index"
  resources :plans, only: [:index, :new, :create]
end
