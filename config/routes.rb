Rails.application.routes.draw do

  resources :users, :locations do
    resources :events  
  end

  #, only: [:events,:available_for,:upcoming,:history,:next,:info,:create_event,:edit_event,:cancel_event]
  # resources :events#, only: [:info, :attendees, :new_host]
  # resources :locations#, only: [:events, :upcoming, :available?]
end
