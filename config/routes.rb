Rails.application.routes.draw do
  get 'dashboard', to: 'customer#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "customer#index"
  get 'admin', to: 'admin#index', as: 'admin-dashboard'

   #rooms routes
  resources :rooms

  #service routes
  resources :services
  
end
