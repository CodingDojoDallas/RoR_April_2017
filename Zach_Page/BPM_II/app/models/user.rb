class User < ActiveRecord::Base
  has_many :posts
  has_many :messages
  has_many :owners
  has_many :blogs, through: :owners
  has_many :blog_posts, through: :posts, source: :blog

  validates :fname, :lname, :email, presence: true
  validates :fname, :lname, length: {minimum: 4}
  validates :email, uniqueness: {case_sensitive: false}
end
