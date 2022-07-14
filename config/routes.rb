Rails.application.routes.draw do
  devise_for :users, path_names: {
    sign_up: ''
  }
  root "plans#index"
  namespace :plans do
    resources :searches, only: :index, defaults: { format: :json }
  end
  resources :users, only: :show
  resources :plans, only: [:index, :new, :create] do
    collection do
      get 'search'
      get 'search_text'
    end
  end
end
