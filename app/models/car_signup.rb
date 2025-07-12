class CarSignup < ApplicationRecord
    belongs_to :car
    belongs_to :tournament
end
