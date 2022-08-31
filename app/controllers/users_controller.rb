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
         # user_location: params[:user_location]
         # games_preference: params[:games_preference],
         # skill_level: params[:skill_level],
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

   private 
   def user_params
      params.permit(:availability, :bio, :games_preference, :skill_level)
   end
end
