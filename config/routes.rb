Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "admin#index"

  get 'room', to: 'admin#room'
  get 'room/new', to: 'admin#add_room'
  post 'room/new', to: 'admin#create_room'
end
