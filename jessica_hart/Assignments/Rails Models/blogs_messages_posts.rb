## FROM LEARNING PLATFORM ##

# Initial commands
rails new blogger
rails g model Blog name:string description:text
rails g model Post title:string content:text blog:references
rails g model Message author:string message:text post:references
rake db:migrate

# Implement the following validations:
class Blog < ActiveRecord::Base
  has_many :posts

  # 1. require the presence of name and description for the blog.
  validates :name, :description, presence: true
end

class Post < ActiveRecord::Base
  has_many :messages
  belongs_to :blog

  # 2. require the presence of title and content for the posts, require the title to be at least 7 characters long.
  validates :content, presence: true
  validates :title, length: { minimum: 7 }
end

class Message < ActiveRecord::Base
  belongs_to :post

  # 3. require author and message for the messages. Require the message to be at least 15 characters long.
  validates :author, :message, presence: true
end

# Using the console:
# 1. create 5 new blogs.
1.upto(5) { |i| Blog.create(name: "Blog #{i}", description: "This is the description for Blog #{i}") }

# 2. create several posts for each blog
Blog.all.each do |blog|
  3.times { blog.posts.create(title: "This is Post #{Post.maximum(:id).to_i + 1}", content: "This post belongs to Blog #{blog.id}") }
end

# 3. create several messages for the first post.
post = Post.first
names = ["John Doe", "Jane Doe", "Jennifer Doe", "Michael Smith", "Michelle Smith", "Mitchell Smite"]
names.each { |elem| post.messages.create(author: elem, message: "This message belongs to the first post") }

# 4. know how to retrieve all posts for the first blog.
Blog.first.posts

# 5. know how to retrieve all posts for the last blog (sorted by title in the DESC order).
Post.where(blog: Blog.last).order(title: :desc)

# 6. know how to update the first post's title.
Post.first.update(title: "Updating the title")

# 7. know how to delete the third post (have the model automatically delete all messages associated with the third post when you delete the third post).
class Post < ActiveRecord::Base
  has_many :messages, dependent: :destroy
  belongs_to :blog

  validates :content, presence: true
  validates :title, length: { minimum: 7 }
end

Post.third.destroy

# 8. know how to retrieve all blogs.
Blog.all

# 9. know how to retrieve all blogs whose id is less than 5.
Blog.where("id < ?", 5)
