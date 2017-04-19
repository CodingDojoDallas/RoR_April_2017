# creating a polymorphic model
rails g model Comment content:text commentable:references{polymorphic}

# model structures
class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true

  validates :content, presence: true
end

class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_many :owners
  has_many :messages
  has_many :posts

  # added the comments relationship
  has_many :comments, as: :commentable


  # all the blogs owned by a specific user
  has_many :blogs, through: :owners

  # all the blogs a user has posted on
  has_many :blog_posts, through: :posts, source: :blog

  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :first_name, :last_name, :email, presence: true
end

class Blog < ActiveRecord::Base
  has_many :owners
  has_many :posts
  has_many :comments, as: :commentable

  # added the comments relationship
  has_many :comments, as: :commentable

  # all the users that own a specifc blog
  has_many :users, through: :owners

  # all the users that posted on a specific blog
  has_many :user_posts, through: :posts, source: :user

  validates :name, :description, presence: true
end

class Post < ActiveRecord::Base
  has_many :messages
  belongs_to :blog
  belongs_to :user

  # added the comments relationship
  has_many :comments, as: :commentable

  validates :content, :title, presence: true
end

class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  # added the comments relationship
  has_many :comments, as: :commentable

  validates :author, :message, presence: true
end

# add comments for user, blog, post and message
Comment.create(content: "This is a comment from the 2nd user", commentable: User.second)
Comment.create(content: "Another comment from the 2nd user", commentable: User.second)
User.second.comments

Comment.create(content: "This is a comment on the first blog", commentable: Blog.first)
Comment.create(content: "Another comment on the first blog", commentable: Blog.first)
Blog.first.comments

Comment.create(content: "This is a comment on the third post", commentable: Post.third)
Comment.create(content: "Another comment on the third post", commentable: Post.third)
Post.third.comments

Comment.create(content: "This is a comment on the tenth message", commentable: Message.find(10))
Comment.create(content: "Another comment on the tenth message", commentable: Message.find(10))
Message.find(10).comments