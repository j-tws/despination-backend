class Event < ApplicationRecord
    belongs_to :destination
    belongs_to :attraction
    has_and_belongs_to_many :planner
end
