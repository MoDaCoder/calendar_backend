class Member < ApplicationRecord
  has_many :reservations
  has_many :pending_approvals
  # has_many :reservations, through: :pending_approvals
  has_many :housings, through: :reservations

  # May also want to set error handling incase nested attributes are blank
  accepts_nested_attributes_for :reservations, :pending_approvals
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
