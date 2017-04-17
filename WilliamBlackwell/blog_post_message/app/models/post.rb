class Post < ApplicationRecord
  belongs_to :blogs
  belongs_to :user
  has_many :messages
end