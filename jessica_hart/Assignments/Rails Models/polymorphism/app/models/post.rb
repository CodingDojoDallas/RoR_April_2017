class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages
  has_many :comments, as: :commentable  # added comments
  validates :content, :title, presence: true
end
