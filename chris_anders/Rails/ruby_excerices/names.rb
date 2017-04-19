=begin
Create a ruby method that goes over each name in the names array and prints something like below.

You have 5 names in the 'names' array
The name is 'Michael Choi'
The name is 'John Doe'
The name is 'Jane Doe'
The name is 'James Smith'
The name is 'Jennifer Smith'
=end

a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]

puts "You have #{names.length} names in the 'names' array"
names.each {|name| puts "The name is #{name[:first_name]} #{name[:last_name]}"}

puts names.shuffle
