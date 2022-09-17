class Attraction < ApplicationRecord
    belongs_to :destination
    has_many :events
    # has_and_belongs_to_many :planners, optional: true
    belongs_to :category

end
