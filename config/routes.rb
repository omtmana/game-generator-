Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
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
end
