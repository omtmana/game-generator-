Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
  resources :users, only: [:events,:available_for,:upcoming,:history,:next,:info,:create_event,:edit_event,:cancel_event]
  resources :events, only: [:info, :attendees, :new_host]
  resources :locations, only: [:events, :upcoming, :available?]
=======
  get '/users', to: 'users#index'
  get '/locations', to: 'locations#index'
  get '/events', to: 'events#index'

  post '/users', to: 'users#create'
  post '/locations', to: 'locations#create'
  post '/events', to: 'events#create'

  patch '/users/:id', to: 'users#update'
  patch '/locations/:id', to: 'locations#update'
  patch '/events/:id', to: 'events#update'

  delete '/events/:id', to: 'events#destroy'
>>>>>>> olivia
end
