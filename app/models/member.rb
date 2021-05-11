class Member < ApplicationRecord
  has_many :reservations
  has_many :pending_approvals
  has_many :housings, through: :reservations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
