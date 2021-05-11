class Housing < ApplicationRecord
    has_many :reservations
    has_many :pending_approvals
    # has_many :reservations, through: :pending_approvals
    has_many :members, through: :reservations
end
