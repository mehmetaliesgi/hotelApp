Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #rooms routes
  root "admin#index"

  resources :rooms

  #service routes
  get 'services', to: 'services#index'

  get 'service/:id/edit', to: 'services#edit', as: :edit_service
  patch 'service/:id', to: 'services#update'

  get 'service/new', to: 'services#new'
  post 'service/create', to: 'services#create'

  delete 'service/:id', to: 'services#destroy', as: :delete_service
end
