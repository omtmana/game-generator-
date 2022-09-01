class Event < ApplicationRecord
    belongs_to :user
    belongs_to :location
    has_many :attendees
    geocoded_by :address

    def address
        self.location.address
    end
end
