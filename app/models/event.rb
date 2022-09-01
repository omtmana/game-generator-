class Event < ApplicationRecord
    belongs_to :user
    belongs_to :location
    has_many :attendees
    has_many :users, through: :attendees
    geocoded_by :address

    def address
        self.location.address
    end
end
