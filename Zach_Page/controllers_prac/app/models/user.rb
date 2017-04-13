class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :fname, :lname, :email, :pass, presence: true
  validates :fname, :lname, length: {minimum: 3}
  validates :email, uniqueness: {case_sensitive: false}, format:{with:EMAIL_REGEX}

end
