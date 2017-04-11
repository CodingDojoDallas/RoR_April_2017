class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :first_name, :last_name, :favorite_language, presence: true
end
