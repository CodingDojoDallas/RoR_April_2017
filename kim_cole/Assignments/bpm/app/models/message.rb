class Message < ActiveRecord::Base
  belongs_to :post

  validates :message, :author, presence: true
end