class Resrvation < ApplicationRecord
  belongs_to :housing
  belongs_to :member
end
