class Post < ApplicationRecord
  belongs_to :blog
  has_many :messages, dependent: :destroy

  validates :content, presence: true
  validates :title, length: { minimum: 7 }
end
