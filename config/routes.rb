Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    get "favorites", to: "restaurants#add_favorite"
    resources :reviews, except: [:index]
  end
  get "/favorites", to: "favorites#index"
  delete "/favorites/:id", to: "favorites#destroy", as: :favorite
  resources :tags, only: [:index, :show]
end
