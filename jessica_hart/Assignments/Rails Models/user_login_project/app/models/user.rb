=begin
Required validations:
- Presence of the all four fields
- Age to be numeric
- first_name and the last_name to be at least 2 characters each
- Age to be at least 10 and below 150
Get familiar with .save, .valid? use .errors and .errors.full_messages so that you can see/display the error messages when the validations are failing
=end

class User < ActiveRecord::Base
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 10, less_than: 150 }
  validates :first_name, :last_name, presence: true, length: { minimum: 2 }
  validates :email_address, presence: true
end
