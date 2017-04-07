# Require the presence of the name, city, and state; also require the state to be two characters long

class Dojo < ActiveRecord::Base
  has_many :ninjas, dependent: :destroy
  validates :name, :city, :state, presence: true
  validates :state, length: { is: 2 }
end
