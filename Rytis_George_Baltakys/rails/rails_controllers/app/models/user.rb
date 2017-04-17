class User < ApplicationRecord
  belongs_to :state
  has_secure_password
end
