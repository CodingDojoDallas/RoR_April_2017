# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# db:seed

1.upto(5) { |i| Blog.create(name: "Blog #{i}", description: "This is the description for Blog #{i}") }

1.upto(5) { Post.create(title: "Title", content: "Content", blog: Blog.first) }

1.upto(5) { Post.create(title: "Title", content: "Content", blog: Blog.second) }

1.upto(5) { Post.create(title: "Title", content: "Content", blog: Blog.third) }

1.upto(5) { Post.create(title: "Title", content: "Content", blog: Blog.forth) }

1.upto(5) { Post.create(title: "Title", content: "Content", blog: Blog.fifth) }


post = Post.first
names = ["John Doe", "Jane Doe", "Jennifer Doe", "Michael Smith", "Michelle Smith", "Mitchell Smite"]
names.each { |elem| post.messages.create(author: elem, message: "This message belongs to the first post") }


Blog.first.posts

Blog.last.posts.order(title: :desc)

Post.first.update(title: "Update Title")

Post.third.destroy

Blog.all

Blog.where("id < ?", 5)
