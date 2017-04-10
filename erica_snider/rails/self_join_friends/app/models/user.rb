class User < ActiveRecord::Base
  # belongs_to :friendships
  has_many :friendships
  has_many :friends, through: :friendships #, source: :user
end
