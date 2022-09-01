class Event < ApplicationRecord
    belongs_to :user
    belongs_to :location
    geocoded_by :address

    def address
        self.location.address
    end
end
