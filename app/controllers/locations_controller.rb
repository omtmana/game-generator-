class LocationsController < ApplicationController
   skip_before_action :verify_authenticity_token

   def index
      location = Location.all
      render json: location
   end

   def create
      location = Location.create!(
         location_name: params[:location_name],
         time_slots: params[:time_slots],
         location_type
      )

   end

   def update
   end
end
