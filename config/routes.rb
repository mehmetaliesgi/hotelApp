Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  
  root "admin#index"
  #rooms routes
  resources :rooms
  #users routes
  resources :users
  #service routes
  resources :services
  
end
