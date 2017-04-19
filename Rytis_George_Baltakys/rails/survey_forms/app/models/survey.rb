class Survey < ApplicationRecord
	validates :name, :location, :language, presence: true
end
