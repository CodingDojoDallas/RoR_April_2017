class Message < ApplicationRecord
  belongs_to :post

  validates :author, :message, presence: true
end
