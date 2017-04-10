# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# rails g model User first_name:string last_name:string email_address:string
# rails g model Blog name:string description:text
# rails g model Post title:string content:text blog:references user:references
# rails g model Message author:string message:text post:references user:references
# rails g model Owner user:references blog:references

# 5.times { User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email) }
# 5.times { Blog.create(name: Faker::StarWars.vehicle, description: Faker::StarWars.quote) }

# Have the first 3 blogs be owned by the first user
# the_user = User.first
# the_blogs = Blog.limit(3)
# the_user.blogs = the_blogs

# User.first.blogs.find(8).destroy # deleted the Blog entry entirely
# User.first.blogs.find(7).delete # deleted the Blog entry entirely
# User.first.blogs.delete(Blog.find(6)) # removed the relationship, left the Blog entry

# Have the 4th blog you create be owned by the second user
# the_user = User.second
# the_blog = Blog.fourth
# the_user.blogs = the_blog  # doesn't work
# the_blog.owners = the_user  # doesn't work
# Owner.create(user: User.second, blog: Blog.fourth)  # works

# Have the 5th blog you create be owned by the last user
# the_user = User.last
# the_blog = Blog.fifth
# the_user.blogs = the_blog  # doesn't work
# Owner.create(user: User.last, blog: Blog.fifth)  # works

# Have the third user own all of the blogs that were created.
# the_blogs = Blog.all
# User.third.blogs = the_blogs
# Blog.all.each { |blog| Owner.create(user: User.third, blog: blog) }  # can be run twice
# Blog.all.each { |blog| Owner.delete(user: User.third, blog: blog) }  # doesn't work

# Have the first user create 3 posts for the blog with an id of 2. Remember
# that you shouldn't do Post.create(user: User.first, blog_id: 2) but more
# like Post.create(user: User.first, blog: Blog.find(2)). Again, you should
# never reference the foreign key in Rails.
# Note: using Blog 15 instead of Blog 2 (no blog with id 2)
# 3.times { Post.create(title: Faker::StarWars.planet, content: Faker::StarWars.quote, blog: Blog.find(15), user: User.first) }

# Have the second user create 5 posts for the last Blog.
# 5.times { Post.create(title: Faker::StarWars.planet, content: Faker::StarWars.quote, blog: Blog.last, user: User.second) }

# Have the 3rd user create several posts for different blogs.
# Post.create(title: Faker::StarWars.planet, content: Faker::StarWars.quote, blog: Blog.second, user: User.third)
# Post.create(title: Faker::StarWars.planet, content: Faker::StarWars.quote, blog: Blog.fourth, user: User.third)
# Post.create(title: Faker::StarWars.planet, content: Faker::StarWars.quote, blog: Blog.fifth, user: User.third)

# Have the 4th user create 3 messages for the last post you created.
# 3.times { Message.create(author: User.fourth.first_name, message: Faker::ChuckNorris.fact, post: Post.last, user: User.fourth) }

# Change the owner of the 2nd post to the last user.
# Post.second.update(user: User.last)

# Change the 2nd post's content to be something else.
# Post.second.update(content: "Updated content for the second post")

# Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
# User.third.blogs

# Retrieve all posts that were created by the 3rd user
# User.third.posts  # return the same things
# User.third.blog_posts  # return the same things
# Post.where(user: User.third)  # return the same things

# Retrieve all messages left by the 3rd user
# User.third.messages  # return the same thing, nothing
# Message.where(user: User.third)  # return the same thing, nothing
# Message.where(user: User.third)  # return the same thing, nothing

# Retrieve all posts associated with the blog id 5 as well as who left these posts.
# Note, do so for blog id 15 (no blog id 5 in my database)
# Post.where(blog: Blog.find(15))  # gets the posts
# Post.joins(:blog, :user).where(blog: Blog.find(15)).select("*")  # gets the posts, blog, and user data
# Post.joins(:blog).where(blog: Blog.find(15)).select("*")  # gets the posts and blog data
# Post.joins(:user).where(blog: Blog.find(15)).select("*")  # gets the posts and user data

# Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages
# Use the blog id 12, where messages were created, which in my database is not id 5
# Message.joins(:post)  # returns the same
# Message.joins(:user)  # returns the same
# Message.all  # returns the same
# Message.joins(:post, :user)  # returns the same
# Message.joins(:post, :user).select("*")
# Message.joins(:post, :user).where(post: Blog.find(12).posts).select("*")

# Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
# User.joins(:owners).where(owner: Blog.find(10).owners)  # nope...
# Blog.find(10).users

# Change it so that the first blog is no longer owned by the first user.
# Blog.first.users.delete(User.first)






##############################################################################
# PLATFORM SOLUTION ##########################################################
##############################################################################
# # Create appropriate models
# rails g model User first_name:string last_name:string email:string
# rails g model Blog name:string description:text
# rails g model Owner user:references blog:references
# rails g model Post title:string content:text user:references blog:references
# rails g model Message author:string message:text user:references post:references
# rake db:migrate
#
# # Create appropriate validations (think about what fields you would need to require, what other validation rules you would need)
# # User Model
# class User < ActiveRecord::Base
#   EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
#   has_many :owners
#   has_many :messages
#   has_many :posts
#   # all the blogs owned by a specific user
#   has_many :blogs, through: :owners
#
#   # all the blogs a user has posted on
#   has_many :blog_posts, through: :posts, source: :blog
#
#   validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
#   validates :first_name, :last_name, :email, presence: true
# end
#
# # Owner Model
# class Owner < ActiveRecord::Base
#   belongs_to :user
#   belongs_to :blog
# end
#
# # Blog Model
# class Blog < ActiveRecord::Base
#   has_many :owners
#   has_many :posts
#
#   # all the users that own a specifc blog
#   has_many :users, through: :owners
#
#   # all the users that posted on a specific blog
#   has_many :user_posts, through: :posts, source: :user
#
#   validates :name, :description, presence: true
# end
#
# # Post Model
# class Post < ActiveRecord::Base
#   has_many :messages
#   belongs_to :blog
#   belongs_to :user
#
#   validates :content, :title, presence: true
# end
#
# # Message Model
# class Message < ActiveRecord::Base
#   belongs_to :post
#   belongs_to :user
#
#   validates :author, :message, presence: true
# end
#
# # 1. Create 5 users
# User.create(first_name: "John", last_name: "Doe", email: "john@doe.com")
# User.create(first_name: "Jane", last_name: "Doe", email: "jane@doe.com")
# User.create(first_name: "Jessica", last_name: "Doe", email: "jessica@doe.com")
# User.create(first_name: "Michael", last_name: "Smith", email: "michael@smith.com")
# User.create(first_name: "Michelle", last_name: "Smith", email: "michelle@smith.com")
#
# # 2. Create 5 blogs
# 1.upto(5) { |i| Blog.create(name: "Blog #{i}", description: "This is blog ##{i}")}
#
# # 3. Have the first 3 blogs be owned by the first user
# Owner.create(user: User.first, blog: Blog.first)
# Owner.create(user: User.first, blog: Blog.second)
# Owner.create(user: User.first, blog: Blog.third)
#
# # 4. Have the 4th blog you create be owned by the second user
# Owner.create(user: User.second, blog: Blog.fourth)
#
# # 5. Have the 5th blog you create be owned by the last user
# Owner.create(user: User.last, blog: Blog.fifth)
#
# # 6. Have the third user own all of the blogs that were created.
# Blog.all.each { |blog| Owner.create(user: User.third, blog: blog) }
#
# # 7. Have the first user create 3 posts for the blog with an id of 2.
# 1.upto(3) { |i| Post.create(title: "Post ##{i}", content: "This is the content for post ##{i}", user: User.first, blog: Blog.find(2)) }
#
# # 8. Have the second user create 5 posts for the last Blog.
# last_id = Post.maximum(:id) + 1
# last_id.upto(last_id + 4) { |i| Post.create(title: "Post ##{i}", content: "This is the content for post ##{i}", user: User.second, blog: Blog.last) }
#
# # 9. Have the 3rd user create several posts for different blogs.
# Post.create(title: "Post ##{Post.maximum(:id) + 1}", content: "This is the content for post ##{Post.maximum(:id) + 1}", user: User.third, blog: Blog.third)
# Post.create(title: "Post ##{Post.maximum(:id) + 1}", content: "This is the content for post ##{Post.maximum(:id) + 1}", user: User.third, blog: Blog.fourth)
# Post.create(title: "Post ##{Post.maximum(:id) + 1}", content: "This is the content for post ##{Post.maximum(:id) + 1}", user: User.third, blog: Blog.fifth)
#
# # 10. Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
# Message.create(author: "Apple Inc", message: "My products are the best", user: User.third, post: Post.first)
# Message.create(author: "Microsoft", message: "No way!", user: User.third, post: Post.first)
# Message.create(author: "NBA", message: "Basketball is the best sport", user: User.third, post: Post.second)
# Message.create(author: "FIFA", message: "We have the world cup. We are the best", user: User.third, post: Post.second)
# Message.create(author: "NFL", message: "We are the real football", user: User.third, post: Post.second)
#
# # 11. Have the 4th user create 3 messages for the last post you created.
# Message.create(author: "Some Author", message: "My book is the best", user: User.fourth, post: Post.last)
# Message.create(author: "Another Author", message: "Your book is really good indeed", user: User.fourth, post: Post.last)
# Message.create(author: "Some Other Author", message: "Agree!", user: User.fourth, post: Post.last)
#
# # 12. Change the owner of the 2nd post to the last user.
# Post.second.update(user: User.last)
#
# # 13. Change the 2nd post's content to be something else.
# Post.second.update(content: "Changing the content to something else")
#
# # 14. Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
# User.third.blogs
#
# # 15. Retrieve all posts that were created by the 3rd user
# User.third.posts
#
# # 16. Retrieve all messages left by the 3rd user
# User.third.messages
#
# # 17. Retrieve all posts associated with the blog id 5 as well as who left these posts.
# Post.joins(:user, :blog).where("blogs.id = ?", 5).select("*")
#
# # 18. Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages
# In this problem, we need to do a subquery
# Message.joins(:user).where(post: Blog.find(5).posts).select("*")
#
# # 19. Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
# Blog.first.users
#
# # 20. Change it so that the first blog is no longer owned by the first user.
# Owner.where("id = ? AND user_id = ?", 1, 1,).update_all("user_id = 5")
##############################################################################
##############################################################################
##############################################################################
