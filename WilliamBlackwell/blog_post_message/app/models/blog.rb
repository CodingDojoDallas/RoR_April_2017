class Blog < ApplicationRecord
	has_many :posts
	has_many :owners
	has_many :users, through: :owners

	  # all the users that posted on a specific blog
  	has_many :user_posts, through: :posts, source: :user
end
