## FROM LEARNING PLATFORM ##

# 1. Create a new project, using rails new user_login_project
rails new user_login_project

# 2. Create a new model called 'User' with the information above.
# 3. Rails will automatically create the automatic increment of the primary field called ID as well as created_at and updated_at time stamps.
rails g model User first_name:string last_name:string email_address:string age:integer
rake db:migrate

# 4. Create a few records in the users table using the Rails console.
u = User.new(first_name: "John", last_name: "Doe", email_address: "john@doe.com", age: 30)
u.save
User.create(first_name: "Jane", last_name: "Doe", email_address: "jane@doe.com", age: 31)
User.create(first_name: "James", last_name: "Doe", email_address: "james@doe.com", age: 32)
User.create(first_name: "Jennifer", last_name: "Doe", email_address: "jennifer@doe.com", age: 33)
User.create(first_name: "Jessica", last_name: "Doe", email_address: "jessica@doe.com", age: 34)

# 5. Now add validations to the model so that...
class User < ActiveRecord::Base
  # 5.1 it requires the presence of all fours fields
  validates :first_name, :last_name, :email_address, :age, presence: true
  # 5.2 it requires the age to be numeric.
  # 5.4 it requires the age to be at least 10 and below 150
  validates :age, numericality: { greater_than_or_equal_to: 10, less_than: 150 }
  #5.3 it requires the first_name and the last_name to be at least 2 characters each.
  validates :first_name, :last_name, length: { minimum: 2 }
end

# 5.5 Get familiar with .save, .valid?
# 5.6 use .errors and .errors.full_messages so that you can see/display the error messages when the validations are failing
u = User.new
u.save # => rollback
u.valid? # => false
u.errors # => #<ActiveModel::Errors:0x00000003e53fa0 @base=#<User id: nil, first_name: nil, last_name: nil, email_address: nil, age: nil, created_at: nil, updated_at: nil>, @messages={:first_name=>["can't be blank", "is too short (minimum is 2 characters)"], :last_name=>["can't be blank", "is too short (minimum is 2 characters)"], :email_address=>["can't be blank"], :age=>["can't be blank", "is not a number"]}>
u.errors.full_messages # => => ["First name can't be blank", "First name is too short (minimum is 2 characters)", "Last name can't be blank", "Last name is too short (minimum is 2 characters)", "Email address can't be blank", "Age can't be blank", "Age is not a number"]

# 6. Using the Rails console...
# 6.1 See if it allows you to insert some records when the fields are not meeting the validation rules we set (e.g. try to create a record where age is 5 or above 150, or where the first name is just one character, etc).
# 6.2 Make sure your console returns appropriate error messages when you try to save something that's not meeting the validation rules.
user1 = User.create(first_name: "Jim", last_name: "Doe", email_address: "jim@doe.com", age: 5) # => rollback
user2 = User.create(first_name: "Jim", last_name: "Doe", email_address: "jim@doe.com", age: 150) # => rollback
user3 = User.create(first_name: "J", last_name: "D", email_address: "jim@doe.com", age: 100) # => rollback
user1.errors.full_messages
user2.errors.full_messages
user3.errors.full_messages

# 6.3 Know how to retrieve all users.
User.all

# 6.4 Know how to get the first user.
User.first

# 6.5 Know how to get the first user.
User.last

# 6.6 Know how to get the users sorted by their first name (order by first_name DESC)
User.order(first_name: :desc)

# 6.7 Get the record of the user whose id is 3 and UPDATE the person's last_name to something else. Know how to do this directly in the console using .find and .save.
u = User.find(3)
u.update(last_name: "Smith")

# 6.8 Know how to delete a record of a user whose id is 4
User.find(4).destroy
