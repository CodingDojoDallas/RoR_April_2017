class User < ActiveRecord::Base
  has_many :messages
  has_many :posts
  has_many :owners

  # all the blogs owned by a specific user
  has_many :blogs, through: :owners

  # all the blog posts written by a specific user
  has_many :blog_posts, through: :posts, source: :blog
  
  has_many :comments, as: :commentable
end
