class Message < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :comments, as: :commentable
end
