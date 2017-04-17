class Post < ActiveRecord::Base
  has_many :messages
  belongs_to :blog
  belongs_to :user

  # added the comments relationship
  has_many :comments, as: :commentable

  validates :content, :title, presence: true
end
