#this is a range
age = 5

case age
when 0..2
  puts "baby"
when 3..6
  puts "little child"
when 7..12
  puts "child"
when 13..18
  puts "youth"
else
  puts "adult"
end



#this is an example of an if statement
age = 22
if age >= 21
  puts "Welcome to the party"
else
  puts "Not yet"
end


#this is an example of an if statement
number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

if !(age < 21)
  puts "Welcome to the party"
else
  puts "Not yet"
end

unless age < 21
  puts "Welcome to the party"
else
  puts "Not yet"
end

=begin
NIL
We combine if and else statements with an expression that evaluates to true or false. In Ruby, only two things are false: nil and false. What does this mean? This means that an empty string returns true.

Positive energy
=end

if ""
  puts "I am positive"
end
if 0
  puts "I am positive"
end

#Negative energy
unless nil
  puts "I am negative"
end
unless false
  puts "I am negative"
end


=begin
Inline Conditionals
We can write an if/unless statement in one line. So beautiful.
=end

puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false
