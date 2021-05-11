class Housing < ApplicationRecord
    has_many :reservations
    has_many :pending_approvals
    # has_many :reservations, through: :pending_approvals
    has_many :members, through: :reservations
    accepts_nested_attributes_for :reservations, :pending_approvals, :members
end