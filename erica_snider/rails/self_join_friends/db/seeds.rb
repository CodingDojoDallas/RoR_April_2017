# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# rails g model User name:string friend:references
# rails g model Friendships user_id:integer friend_id:integer
# 10.times { User.create(name: Faker::Name.name) }


# class User < ActiveRecord::Base
#   # belongs_to :friendships
#   has_many :friendships
#   has_many :friends, through: :friendships #, source: :user
# end

# class Friendship < ActiveRecord::Base
#   belongs_to :user, :foreign_key => "user_id", :class_name => "User"
#   belongs_to :friend, :foreign_key => "friend_id", :class_name => "User"
# end


# Friendship.create(user_id: User.first.id, friend_id: User.second.id)
# Friendship.create(user_id: User.find(3).id, friend_id: User.find(7).id)
# (4..7).each do |i| Friendship.create(user_id: User.find(3).id, friend_id: User.find(i).id) end




##########################################################################
# PLATFORM SOLUTION ######################################################
##########################################################################
# # creating the models
# rails g model User first_name:string last_name:string
# rails g model Friendship user_id:integer friend_id:integer
#
# # model structure
# class User < ActiveRecord::Base
#   has_many :friendships, :foreign_key => "user_id", :class_name => "Friendship"
#   has_many :friends, :through => :friendships
# end
#
# class Friendship < ActiveRecord::Base
#   belongs_to :user, :foreign_key => "user_id", :class_name => "User"
#   belongs_to :friend, :foreign_key => "friend_id", :class_name => "User"
# end
#
# # creating users
# User.create(first_name: "John", last_name: "Doe")
# User.create(first_name: "Jane", last_name: "Doe")
# User.create(first_name: "Michael", last_name: "Smith")
# User.create(first_name: "Mary", last_name: "Smith")
# User.create(first_name: "May", last_name: "Johnson")
#
# # creating friendships
# Friendship.create(user: User.first, friend: User.last)
# Friendship.create(user: User.first, friend: User.fourth)
# Friendship.create(user: User.second, friend: User.third)
#
# # retrieving the friends of the first user
# User.first.friends
##########################################################################
##########################################################################
##########################################################################
