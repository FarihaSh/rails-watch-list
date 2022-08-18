Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, only: [:index, :new, :show, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
  resources :movies, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
