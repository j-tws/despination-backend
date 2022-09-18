class User < ApplicationRecord
    has_many :planners

    has_secure_password
end
