# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dojo.create(
	[
		{name: 'Coding Dojo', city: 'Dallas', state: 'TX'},
		{name: 'Coding Dojo', city: 'Mountainview', state: 'CA'},
		{name: 'Coding Dojo', city: 'Seattle', state: 'WA'}
	])
Ninja.create(
	[
		{first_name: 'George', last_name: 'Baltakys', dojo: Dojo.first},
		{first_name: 'Will', last_name: 'Blackwell', dojo: Dojo.first}
	])