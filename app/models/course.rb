class Course < ApplicationRecord
  # has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many :reviews
end
