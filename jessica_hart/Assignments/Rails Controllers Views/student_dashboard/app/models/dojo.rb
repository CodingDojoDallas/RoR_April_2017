class Dojo < ApplicationRecord
  has_many :students, dependent: :destroy
  
  validates :branch, :street, :city, :state, presence: true
  # validates :branch, :street, :city, length: { minimum: 3 }   # The city of Å sends its regards
  validates :state, length: { is: 2 }
end
