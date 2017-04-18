# punctionation in method name actually changes original variable

# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in
#the array. Also have the function return an array that only include numbers that are greater than
#10 (E.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint:
	#use reject or find_all method)
arr = [3,5,1,2,7,9,8,13,25,32]
puts arr.reduce(:+)
puts arr.find_all {|i| i>10}

#  Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle
#the array and print the name of each person. Have the program also return an array with names that
#are longer than 5 characters.
people = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts people.shuffle
puts people.find_all {|i| i.length>5}

#  Create an array that contains all 26 letters in the alphabet (this array must have 26 values).
#Shuffle the array and display the last letter of the array. Have it also display the first letter
#of the array. If the first letter in the array is a vowel, have it display a message
letters = Array("a".."z")
x = letters.shuffle
puts x.last
puts x.first
puts "Vowel!" if ["a", "e", "i", "o", "u"].include?(x.first)

#  Generate an array with 10 random numbers between 55-100.
arr = Array.new
10.times {arr.push(rand(55..100))}
puts arr.to_s

#  Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest
	#number in the beginning). Display all the numbers in the arrays. Next, display the minimum value
#in the array as well as the maximum value.
puts arr.sort
puts arr.min
puts arr.max

#  Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
string = Array.new
5.times {string.push((65+rand(26)).chr)}
puts string.join

#  Generate an array with 10 random strings that are each 5 characters long
arr = Array.new
10.times {arr.push((1..5).map {(65+rand(26)).chr}.join)}
puts arr
