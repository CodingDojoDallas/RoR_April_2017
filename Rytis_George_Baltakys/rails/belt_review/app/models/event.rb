class Event < ApplicationRecord
  belongs_to :state
  belongs_to :user
  has_many :event_rosters, dependent: :destroy
  has_many :attendees, through: :event_rosters, source: :user
  validates :name, :date, :city, :state, presence: true
end
