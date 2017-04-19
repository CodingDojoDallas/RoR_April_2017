class Blog < ActiveRecord::Base
  has_many :posts
  has_many :owners
  has_many :users, through: :owners
  has_many :user_posts, threough: :posts, source: :user

  validates :name, :description, presence: true
end
