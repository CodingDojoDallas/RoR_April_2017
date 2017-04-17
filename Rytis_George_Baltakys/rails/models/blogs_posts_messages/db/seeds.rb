# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times { Blog.create(name: Faker::StarWars.planet, description: "Discussions on what is currently happening on " + Faker::StarWars.planet) }

5.times { Post.create(blog: Blog.first, title: Faker::StarWars.specie, content: Faker::StarWars.quote) }

5.times { Post.create(blog: Blog.last, title: Faker::StarWars.specie, content: Faker::StarWars.quote) }

5.times { Message.create(post: Post.first, author: Faker::StarWars.character, message: Faker::StarWars.quote) }
