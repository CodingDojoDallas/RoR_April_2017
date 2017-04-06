class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :comments, as: :commentable  # added comments
  validates :author, :message, presence: true
end
