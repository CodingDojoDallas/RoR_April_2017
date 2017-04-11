class Blog < ActiveRecord::Base
  has_many :posts
  has_many :owners

  # all users that a own a specific blog
  # has_many :user_owners, through: :owners
  has_many :users, through: :owners

  # all the users that posted on a specific blog
  has_many :user_posts, through: :posts, source: :user
end
