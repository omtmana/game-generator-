class EventsController < ApplicationController
   skip_before_action :verify_authenticity_token
   rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_render 

   def index
      events = if params[:user_id]
                  Event.where(user_id:params[:user_id])
               elsif params[:location_id]
                  Event.where(location_id:params[:location_id])
               else 
                  Event.all
               end
      render json: events
   end

   def show
      event = find_event
      render json:event
   end

   def create
      event = Event.create!(event_params)
      render json:event
   end

   def update
      event = find_event
      event.update(event_params)
      render json: event
   end

   def destroy
      event = find_event
      event.destroy
      head :no_content
   end

   def attendees
      event = find_event
      #I'll finish this after guest_list model is implemented
   end

   private 

   def find_event
      Event.find(params[:id])
   end
   
   def event_params
      params.permit(:name, :location_id, :time, :user_id, :game_name)
   end

   def record_not_found_render
      render json: {error: "event not found"}, status: :not_found
   end
   
end
