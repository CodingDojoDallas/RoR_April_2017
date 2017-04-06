# Require the presence of title and content for the posts
# Require the title to be at least 7 characters long

class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages, dependent: :destroy
  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
end
