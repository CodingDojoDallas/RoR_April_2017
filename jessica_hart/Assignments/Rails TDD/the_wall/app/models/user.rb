# Username field: must be required, must be unique, must be longer than 5 characters
class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :comments, through: :messages
  validates :name, uniqueness: { case_sensitive: false }, length: { minimum: 6 }, presence: true
end
