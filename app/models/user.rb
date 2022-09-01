class User < ApplicationRecord
    has_many :events
    geocoded_by :user_location
    after_validation :geocode
end
