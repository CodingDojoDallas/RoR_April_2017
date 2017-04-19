class Owner < ApplicationRecord
  belongs_to :blog
  belongs_to :user
end
