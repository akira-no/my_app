Rails.application.routes.draw do
  devise_for :users
  root "plans#index"
  resources :plans, only: [:index, :new, :create] do
    collection do
      get 'search_text'
      get 'searchtag'
    end
  end
end
