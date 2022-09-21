class Attraction < ApplicationRecord
    belongs_to :destination
    has_many :events
    has_and_belongs_to_many :planners
    has_and_belongs_to_many :users
    belongs_to :category

    # GEOCODING: automatically lookup the GPS coordinates for the address
    # of an attraction, as it is .created

    geocoded_by :address

    after_validation :geocode # actually do lookup when .create-ing

end
