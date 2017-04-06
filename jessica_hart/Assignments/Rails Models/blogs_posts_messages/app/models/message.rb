# Require author and message for the messages
# Require the message to be at least 15 characters long

class Message < ActiveRecord::Base
  belongs_to :post
  validates :author, :message, presence: true
  validates :message, length: { minimum: 15 }
end
