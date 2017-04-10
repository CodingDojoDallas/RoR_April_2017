class Dojo < ApplicationRecord
  validates :branch, :street, :city, :state, presence: true
  validates :branch, :street, :city, length: { minimum: 3 }
  validates :state, length: { is: 2 }
end
