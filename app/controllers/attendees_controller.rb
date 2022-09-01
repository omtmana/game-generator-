class AttendeesController < ApplicationController
    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_render 

    def index
        render json:Attendee.all, methods: [:user]
    end

    def create
        attendee = Attendee.create(user_id:params[:user_id])
        render json:attendee
    end

    def destroy
        attendee = Attendee.find(params.permit(:user_id))
        attendee.destroy
        head no_content
    end

   private

    def record_not_found_render
        render json: {error: "event not found"}, status: :not_found
    end
end
