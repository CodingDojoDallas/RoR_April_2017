# Assignment: Ruby Puzzles
# Work on the puzzles below. Make your code is as clean as possible. Put all of your answers in a single file and upload below.
# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
a = [3,5,1,2,7,9,8,13,25,32]
sum = 0
a.each { |i| sum += i }
puts "Sum: #{sum}"
print a.reject { |i| i < 11 } 

puts
# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
a = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
print a.shuffle!
puts
print a.find_all { |name| name.length > 5 } 

puts
# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.
alphabet = []
('a'..'z').each { |l| alphabet << l }
print alphabet
puts
puts alphabet.length
alphabet.shuffle!
print alphabet
puts
puts "The first letter is a vowel!" if ['a','e','i','o','u','y'].include? alphabet[0]

#Generate an array with 10 random numbers between 55-100.
arr = []
(1..10).each { arr << rand(46) + 55 }
print arr.sort

puts
# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
puts arr.min, arr.max


# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
rstr = ''
5.times { rstr += (65+rand(26)).chr }
puts rstr

# Generate an array with 10 random strings that are each 5 characters long
arr = []
10.times do
	rstr = ''
	5.times { rstr += (65+rand(26)).chr }
	arr << rstr
end
print arr
