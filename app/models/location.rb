class Location < ApplicationRecord
    has_many :events
    geocoded_by :address
    after_validation :geocode
end
