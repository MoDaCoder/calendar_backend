class Reservation < ApplicationRecord
  belongs_to :housing
  belongs_to :member
  has_many :pending_approvals
  accepts_nested_attributes_for :pending_approvals
end