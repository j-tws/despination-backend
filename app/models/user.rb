class User < ApplicationRecord
    has_many :planners
    has_and_belongs_to_many :attractions

    has_secure_password
end
