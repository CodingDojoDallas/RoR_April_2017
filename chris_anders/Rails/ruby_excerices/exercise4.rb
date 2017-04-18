#Anything in single quotes or double quotes is an instance of the class String.
puts "I am a string"
puts 'I am also a string'


#this will show the class(STRING)
puts "I am an instance of".class

puts String.new("I am an instance of the String class")


puts "24 plus 8 is #{24 + 8}"         # => "24 plus 8 is 32"
puts '24 plus 8 is #{24 + 8}'         # => "24 plus 8 is #{24 + 8}"
puts "24 plus 8 is " + (24 + 8).to_s  # => "24 plus 8 is 32"


puts "".empty?      # => true
puts "hello".empty? # => false

puts "hello".length # => 5


puts "hello".split                 # => ["hello"]
puts "hello".split("")             # => ["h", "e", "l", "l", "o"]
puts "oscar@gmail.com".split("@")  # => ["oscar", "gmail.com"]

str = "bar"
str[0] = "c"
puts str # => "car"


word = "hello"
word.capitalize # => "Hello"
puts word # => "hello"
word.capitalize! # => "Hello"
puts word # => "Hello"
