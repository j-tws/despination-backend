class Destination < ApplicationRecord
    has_many :attractions
    has_many :events

    # GEOCODING: automatically lookup the GPS coordinates for the address
    # of an attraction, as it is .created

    geocoded_by :address

    after_validation :geocode # actually do lookup when .create-ing
    
end
