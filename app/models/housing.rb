class Housing < ApplicationRecord
    has_many :reservations
    has_many :members, through: :reservations
end
