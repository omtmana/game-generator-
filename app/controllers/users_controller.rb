class UsersController < ApplicationController
   skip_before_action :verify_authenticity_token

   def index
      user = User.all
      render json: user
   end

   def create
      user = User.create!(
         name: params[:name],
         bio: params[:bio],
         username: params[:username],
         password: params[:password],
         email: params[:email],
         availability: params[:availability], 
         user_location: params[:user_location]
         games_preference: params[:games_preference],
         skill_level: params[:skill_level],
      )
   end

   def update
      user = User.find_by!(id: params[:id])
      if user.update(user_params)
         render json: user
      else
         render json: {error: blog.errors.full_messages}, status: 422
      end
   end

   def events
      user = User.find(params[:id])
      events = Event.where(user_id:user.id)
      render json:events
   end


   def history
      past_events = User.find_by!(id: params[:id]).events.where(Date.parse(:time) < Date.today)
      render json:past_events
   end
   
   private 
   def user_params
      params.permit(:availability, :bio, :games_preference, :skill_level)
   end
end
