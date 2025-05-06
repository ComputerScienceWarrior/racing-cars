class Tournament < ApplicationRecord
    has_many :car_signups
    has_many :cars, through: :car_signups
end
