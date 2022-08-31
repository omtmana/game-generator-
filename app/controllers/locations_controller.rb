class LocationsController < ApplicationController
   skip_before_action :verify_authenticity_token
   rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_render 

   def index
      locations = Location.all
      render json:locations
   end

   def show
      location = find_location
      render json:location, except: [:created_at, :updated_at]
   end

   def create
      location = Location.create!(location_params)
      render json:location
   end

   def update
      location = find_location
      location.update(location_params)
      render json: location, except: [:created_at, :updated_at]
   end

   def destroy
      location = find_location
      location.destroy
      head :no_content
   end

   def upcoming
      location = find_location
      events = location.events.where("time >= ?", Time.now)
      render json:events
   end

   def available?
      location = find_location
      proposed_time = params[:proposed_time].to_time
      events = location.events.where(:time => proposed_time..(proposed_time + 2.hours))
      if events != []
         render json:{message:false}
      else
         render json:{message:true}
      end
   end

   private 

   def find_location
      Location.find(params[:id])
   end
   
   def location_params
      params.permit(:location_name, :time_slots, :location_type, :address)
   end

   def record_not_found_render
      render json: {error: "event not found"}, status: :not_found
   end
end
