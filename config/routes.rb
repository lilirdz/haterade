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

  get '/signup', to: "users#new"
  post '/signup', to: "users#create"

  post '/like', to: "likes#create"
  post '/dislike', to: "dislikes#create"
  
  get '/profile', to: "sessions#profile"

  get '/user/:id/edit', to: "users#edit"

  get '/home', to: "sessions#home"
  
  # root :to =>'sessions#welcome'
  root :to =>'sessions#new'



end
