class User < ApplicationRecord
    has_many :planners
    has_and_belongs_to_many :attractions, class_name:'Attraction'
    

    has_secure_password
end
