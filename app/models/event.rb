class Event < ApplicationRecord
    belongs_to :destination, optional: true
    belongs_to :attraction, optional: true
    has_and_belongs_to_many :planner
end
