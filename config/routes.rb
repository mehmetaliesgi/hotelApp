Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #rooms routes
  root "admin#index"

  get 'room', to: 'admin#room'
  get 'room/new', to: 'admin#add_room'
  post 'room/new', to: 'admin#create_room'

  get 'room/:id/edit', to: 'admin#room_edit', as: :edit_room
  patch 'room/:id', to: 'admin#room_update'

  delete 'room/:id', to: 'admin#room_destroy', as: :delete_room


  #service routes
  get 'services', to: 'services#index'

  get 'service/:id/edit', to: 'services#edit', as: :edit_service
  patch 'room/:id', to: 'services#update'

  get 'service/new', to: 'services#new'
  post 'service/create', to: 'services#create'

  delete 'service/:id', to: 'services#destroy', as: :delete_service
end
