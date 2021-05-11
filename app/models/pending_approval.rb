class PendingApproval < ApplicationRecord
  belongs_to :member
  belongs_to :housing
  belongs_to :reservation
end
