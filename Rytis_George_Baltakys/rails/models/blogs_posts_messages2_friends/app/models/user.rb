class User < ApplicationRecord
	has_many :blogs, through: :owners
	has_many :friendships, class_name: "Friendship", foreign_key: "user_id"
	has_many :friends, through: :friendships
	has_many :owners
	has_many :messages
	has_many :posts
	has_many :comments, as: :commentable
end
