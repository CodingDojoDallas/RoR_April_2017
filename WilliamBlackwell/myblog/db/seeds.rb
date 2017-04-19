# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times{User.create(first: Faker::Superhero.prefix, last: Faker::Superhero.name, email: Faker::Superhero.descriptor)}
5.times{Blog.create(name: Faker::Superhero.prefix, description: Faker::Superhero.name)}
Owner.create(user: User.first, blog: Blog.first)
Owner.create(user: User.first, blog: Blog.second)
Owner.create(user: User.first, blog: Blog.third)

3.times{Post.create(blog: Blog.find(2),user: User.first, title: Faker::Superhero.descriptor, content: Faker::Superhero.descriptor)}
5.times{Post.create(blog: Blog.last,user: User.find(2), title: Faker::Superhero.descriptor, content: Faker::Superhero.descriptor)}

3.times{Post.create(blog: Blog.find(2),user: User.find(3), title: Faker::Superhero.descriptor, content: Faker::Superhero.descriptor)}
2.times{Post.create(blog: Blog.find(3),user: User.find(3), title: Faker::Superhero.descriptor, content: Faker::Superhero.descriptor)}
4.times{Post.create(blog: Blog.find(4),user: User.find(3), title: Faker::Superhero.descriptor, content: Faker::Superhero.descriptor)}


# Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
2.times{Message.create(post: Post.first,user: User.find(3), author: Faker::Superhero.descriptor, message: Faker::Superhero.descriptor)}
3.times{Message.create(post: Post.last,user: User.find(4), author: Faker::Superhero.descriptor, message: Faker::Superhero.descriptor)}

Post.second.update(user: User.last)
Post.find(2).update(content: "This is new content!")
User.find(3).blogs
User.find(3).posts
User.find(3).messages

Post.joins(:user, :blog).where("blogs.id = ?", 5).select("*")
Message.joins(:user).where(post: Blog.find(5).posts).select("*")
Blog.first.owners
Owner.where("id = ? AND user_id = ?", 1, 1,).update_all("user_id = 5")


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


