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
         location_type: params[:location_type],
         address: params[:address]
      )
   end

   def update
      location = Location.find_by!(id: params[:id])
      if location.update(location_params)
         render 
      else
      end

   end
end
