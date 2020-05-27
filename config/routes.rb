Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :categories
  resources :posts
  resources :comments
  # resources :likes
  # resources :sessions
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  post '/like', to: "likes#create"
  post '/dislike', to: "dislikes#create"


end
