class Planner < ApplicationRecord
    has_and_belongs_to_many :attractions
    has_and_belongs_to_many :events
    belongs_to :user , optional: true
end
