Rails.application.routes.draw do
  devise_for :users, path_names: {
    sign_up: ''
  }
  root "plans#index"
  resources :plans, only: [:index, :new, :create] do
    collection do
      get 'search'
      get 'search_text'
    end
  end
end
