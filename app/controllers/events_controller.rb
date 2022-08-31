class EventsController < ApplicationController
   skip_before_action :verify_authenticity_token

   def index
      event = Event.all
      render json: event
   end
   
end
