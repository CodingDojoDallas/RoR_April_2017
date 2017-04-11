class Blog < ActiveRecord::Base
  has_many :posts
  has_many :owners

  # all users that a own a specific blog
  has_many :users, through: :owners

  # all the users that posted on a specific blog
  has_many :user_posts, through: :posts, source: :user

  has_many :comments, as: :commentable
end
