Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews # only: [:index, :new, :create]
  end
  # resources :reviews, only: [:show, :edit, :update, :destroy]
  resources :tags, only: [:index, :show]
end
