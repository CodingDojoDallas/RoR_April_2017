# Message field: must be required, must be longer than 10 characters
# User Reference field: must be required
class Message < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :content, :user_id, presence: true
  validates :content, length: { minimum: 11 }
end
