# Require the presence of name and description for the blog

class Blog < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  validates :name, :description, presence: true
end
