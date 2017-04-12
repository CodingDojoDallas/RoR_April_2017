class Survey < ApplicationRecord
	validates :name, :location, :language, presence: :true
	validates :name, length: { minimum: 3 }
end
