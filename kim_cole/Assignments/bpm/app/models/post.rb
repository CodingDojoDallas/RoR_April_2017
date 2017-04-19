class Post < ActiveRecord::Base
  has_many :messages, dependent: :destroy
  belongs_to :blog

  validates :content, presence: true
  validates :title, length: { minimum: 7 }
end
