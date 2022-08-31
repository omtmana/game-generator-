Rails.application.routes.draw do

  resources :users, :locations do
    resources :events, shallow: true  
  end

  get "/events", to: "events#index"

  #Custom User Routes
  get "/users/:id/history", to: "users#history"
  get "/users/:id/upcoming", to: "users#upcoming"
  get "/users/:id/next-event", to: "users#next_event"

  #Custom Event Routes
  get '/events/:id/attendees', to: "events#attendees"

  #Custom Locations Routes
  get '/locations/:id/upcoming', to: 'locations#upcoming'
  get '/locations/:id/available', to: 'locations#available?'
end
