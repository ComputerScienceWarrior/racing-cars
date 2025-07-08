class Car < ApplicationRecord
    belongs_to :user
    has_many :car_signups
    has_many :tournaments, through: :car_signups
end
