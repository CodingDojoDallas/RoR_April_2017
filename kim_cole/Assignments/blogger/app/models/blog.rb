class Blog < ActiveRecord::Base
  has_many :owners
  has_many :posts

  # added the comments relationship
  has_many :comments, as: :commentable

  # all the users that own a specifc blog
  has_many :users, through: :owners

  # all the users that posted on a specific blog
  has_many :user_posts, through: :posts, source: :user

  validates :name, :description, presence: true
end
