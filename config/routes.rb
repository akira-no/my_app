Rails.application.routes.draw do
  devise_for :users
  root "calendars#index"
  resources :calendars, only: [:index, :new]
end
