Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "admin#index"

  get 'room', to: 'admin#room'
  get 'room/new', to: 'admin#add_room'
  post 'room/new', to: 'admin#create_room'

  get 'room/:id/edit', to: 'admin#room_edit', as: :edit_room
  patch 'room/:id', to: 'admin#room_update'

  delete 'room/:id', to: 'admin#room_destroy', as: :delete_room
end
