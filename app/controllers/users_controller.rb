class UsersController < ApplicationController
   skip_before_action :verify_authenticity_token
   rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_render 

   def index
      user = User.all
      render json: user
   end

   def show
      user = find_user
      render json:user, except: [:password, :created_at, :updated_at]
   end

   def create
      user = User.create!(user_params)
      render json:user
   end

   def update
      user = find_user
      user.update(user_params)
      render json: user, except: [:password, :created_at, :updated_at]
   end

   def destroy
      user = find_user
      user.destroy
      head :no_content
   end

   def history
      past_events = User.find_by!(id: params[:id]).events.where("time < ?", Time.now)
      render json:past_events
   end

   def upcoming
      user = find_user
      upcoming_events = user.events.where("time >= ?", Time.now)
      render json: upcoming_events
   end

   def next_event
      user=find_user
      event = user.events.where("time >= ?", Time.now).first
      render json:event
   end

   def search
      user = find_user
      user_coords = Geocoder.search(user.user_location).first.coordinates
      # events_in_radius = Event.where(Geocoder)
      
   end

   private 

   def find_user
      User.find(params[:id])
   end
   
   def user_params
      params.permit(:availability, :bio, :email, :games_preference, :name, :password, :skill_level, :user_location) #TODO: Change password to password_digest once login authentication is set up
   end

   def record_not_found_render
      render json: {error: "User not found"}, status: :not_found
   end
end
