## FROM LEARNING PLATFORM ##

# creating the models
rails g model User first_name:string last_name:string
rails g model Friendship user_id:integer friend_id:integer

# model structure
class User < ActiveRecord::Base
  has_many :friendships, :foreign_key => "user_id", :class_name => "Friendship"
  has_many :friends, :through => :friendships
end

class Friendship < ActiveRecord::Base
  belongs_to :user, :foreign_key => "user_id", :class_name => "User"
  belongs_to :friend, :foreign_key => "friend_id", :class_name => "User"
end

# creating users
User.create(first_name: "John", last_name: "Doe")
User.create(first_name: "Jane", last_name: "Doe")
User.create(first_name: "Michael", last_name: "Smith")
User.create(first_name: "Mary", last_name: "Smith")
User.create(first_name: "May", last_name: "Johnson")

# creating friendships
Friendship.create(user: User.first, friend: User.last)
Friendship.create(user: User.first, friend: User.fourth)
Friendship.create(user: User.second, friend: User.third)

# retrieving the friends of the first user
User.first.friends
