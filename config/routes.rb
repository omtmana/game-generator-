Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users, only: [:events,:available_for,:upcoming,:history,:next,:info,:create_event,:edit_event,:cancel_event]
  # resources :events, only: [:info, :attendees, :new_host]
  # resources :locations, only: [:events, :upcoming, :available?]

  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'
end
