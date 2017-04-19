# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# rails db:setup

5.times{Blog.create(name:Faker::Hacker.ingverb, description:Faker::Hacker.
	say_something_smart)}

4.times{Post.create(blog: Blog.first, title:Faker::Hacker.ingverb, content:Faker::Hacker.say_something_smart)}

4.times{Post.create(blog: Blog.second, title:Faker::Hacker.ingverb, content:Faker::Hacker.say_something_smart)}

4.times{Post.create(blog: Blog.third, title:Faker::Hacker.ingverb, content:Faker::Hacker.say_something_smart)}

4.times{Post.create(blog: Blog.fourth, title:Faker::Hacker.ingverb, content:Faker::Hacker.say_something_smart)}

4.times{Post.create(blog: Blog.fifth, title:Faker::Hacker.ingverb, content:Faker::Hacker.say_something_smart)}

4.times{Message.create(post: Post.first, author:Faker::Hacker.ingverb, message:Faker::Hacker.say_something_smart)}


4.times{Message.create(post: Post.second, author:Faker::Hacker.ingverb, message:Faker::Hacker.say_something_smart)}


4.times{Message.create(post: Post.third, author:Faker::Hacker.ingverb, message:Faker::Hacker.say_something_smart)}


4.times{Message.create(post: Post.fourth, author:Faker::Hacker.ingverb, message:Faker::Hacker.say_something_smart)}


4.times{Message.create(post: Post.fifth, author:Faker::Hacker.ingverb, message:Faker::Hacker.say_something_smart)}



Post.where(blog:Blog.first)
Post.where(blog:Blog.last).order('title desc')
Post.first.update(title:"updated")
Post.third.destroy
Blog.first.destroy

