Rails.application.routes.draw do

  resources :users, :locations do
    resources :events, shallow: true  
  end

  get "/events", to: "events#index"
  get "/users/:id/history", to: "users#history"
end
