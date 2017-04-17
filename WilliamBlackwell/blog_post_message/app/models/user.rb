class User < ApplicationRecord
	has_many :messages
	has_many :posts
	has_many :owners
	has_many :blogs, through: :owners

	  # all the blogs a user has posted on
  	has_many :blog_posts, through: :posts, source: :blog
end
