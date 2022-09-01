class Attendee < ApplicationRecord
    belongs_to :event
    belongs_to :user

    def user
        User.find(user_id).name
    end
end
