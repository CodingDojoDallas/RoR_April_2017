####################################################################################
# PLATFORM SOLUTIONS ###############################################################
####################################################################################

# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32.
numbers_array = [3,5,1,2,7,9,8,13,25,32]

# Return the sum of all numbers in the array.
puts numbers_array.reduce(:+)

# Also have it return an array that only include numbers that are greater than 10.
puts numbers_array.reject { |number| number < 10 }

# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher.
persons_array = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

# Shuffle the array and print the name of each person.
persons_array.shuffle.each { |person| puts person}

# Have the program also return an array with names that are longer than 5 characters.
puts persons_array.select { |person| person.length > 5 }

# Create an array that contains all 26 letters in the alphabet (this array must have 26 values).
letters_array = ("a".."z").to_a

# Shuffle the array and display the last letter of the array.
puts letters_array.shuffle.last

# Have it also display the first letter of the array.
puts letters_array.shuffle.first

# If the first letter in the array is a vowel, have it display a message
shuffled = letters_array.shuffle
puts "#{shuffled.first} is a vowel" if ["a","e","i","o","u"].include? shuffled.first

# Generate an array with 10 random numbers between 55-100.
random_array = []
10.times { random_array << rand(55..100) }

# have it be sorted (showing the smallest number in the beginning). Display all the numbers in the arrays.
puts random_array.sort

# Next, display the minimum value in the array as well as the maximum value.
puts random_array.max
puts random_array.min

# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character; use a map function and a range to do this).
str = ""
5.times { str << rand(65..90).chr }
puts str

# Generate an array with 10 random strings that are each 5 characters long
string_array = []
10.times do
  str = ""
  5.times { str << rand(65..90).chr }
  string_array << str
end
puts string_array
####################################################################################
####################################################################################
####################################################################################



# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the
# sum of all numbers in the array. Also have the function return an array that
# only include numbers that are greater than 10 (e.g. when you pass the array
# above, it should return an array with the values of 13,25,32 - hint: use
# reject or find_all method)

# def one arr
#   sum = arr.inject(:+)
#   arr.reject!{ |i| i < 10 }
#   return "The sum is #{sum} and the array is #{arr}."
# end
#
# arr = [3,5,1,2,7,9,8,13,25,32]
# puts one(arr)


# Create an array with the following values: John, KB, Oliver, Cory, Matthew,
# Christopher. Shuffle the array and print the name of each person. Have the
# program also return an array with names that are longer than 5 characters.

# def two arr
#   arr.shuffle
#   puts arr
#   arr.reject!{ |i| i.length < 5 }
#   return "#{arr}"
#   # puts "The array is #{arr}."
# end
#
# arr = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
# puts two(arr)


# Create an array that contains all 26 letters in the alphabet (this array
# must have 26 values). Shuffle the array and display the last letter of the
# array. Have it also display the first letter of the array. If the first
# letter in the array is a vowel, have it display a message.

# def three
#   arr = ('a'..'z').to_a.shuffle!
#   puts arr.last
#   puts arr.first
#   puts 'The first letter is a vowel' if ['a','e','i','o','u'].include?(arr.first)
# end
#
# three

# Generate an array with 10 random numbers between 55-100
#
# def four
#   arr = []
#   for i in 1..10
#     arr.push(rand(55..100))
#   end
#   arr
# end
#
# puts four


# Generate an array with 10 random numbers between 55-100 and have it be
# sorted (showing the smallest number in the beginning). Display all the
# numbers in the array. Next, display the minimum value in the array as
# well as the maximum value

# def five
#   arr = []
#   for i in 1..10
#     arr.push(rand(55..100))
#   end
#   return arr.sort!, arr.min, arr.max
# end
#
# puts "The array is #{five[0]}, the min is #{five[1]}, the max is #{five[2]}"


# Create a random string that is 5 characters long
# (hint: (65+rand(26)).chr returns a random character)

# def six
#   str = ""
#   for i in 1..5
#     str += "#{(65+rand(26)).chr}"
#   end
#   str
# end
#
# puts six


# Generate an array with 10 random strings that are each 5 characters long

def seven
  arr = []
  for i in 1..10
    str = ""
    for i in 1..5
      str += "#{(65+rand(26)).chr}"
    end
    arr.push(str)
  end
  arr
end

puts seven
