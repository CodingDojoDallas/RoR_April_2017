class Dojo < ActiveRecord::Base
  validates :branch, :street, :city, :state, presence: true, length: { minimum: 2 }
end
