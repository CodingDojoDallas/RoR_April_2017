class User < ApplicationRecord
  belongs_to :state
  has_secure_password
  has_many :events
  has_many :comments
  has_many :event_rosters
  has_many :events_attending, through: :event_rosters
  validates :name, :email, :city, :state, presence: true
  validates :password, length: { in: 1..20 }
end
