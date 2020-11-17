class Patient < ApplicationRecord
    has_many :doctors
    has_many :appointments, through: :doctors
end
