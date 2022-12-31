Rails.application.routes.draw do
  get 'dashboard', to: 'customer#index'
  get 'our_rooms', to: 'customer#rooms'
  get 'room/:id', to: 'customer#show', as: 'single_room'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :customer

  root "customer#index"
  get 'admin', to: 'admin#index', as: 'admin-dashboard'

   #rooms routes
  resources :rooms

  #service routes
  resources :services
  
end
