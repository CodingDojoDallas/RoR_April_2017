# Print 1-255
(1..255).each { |i| puts i }

# Print odd numbers between 1-255
(1..255).each { |i| puts i if i.odd? }

# Print and calculate Sum
sum = 0
(0..255).each { |i| puts "New Number: #{i} Sum: #{sum += i}"}

# Iterating through an array and printing
[1,3,5,7,9,13].each { |elem| puts elem }

# Find Max of array
puts [-3,-5,-7].max

# Get Average of array and print
arr = [2,10,3]
puts arr.reduce(:+) / arr.length.to_f

# Array with Odd Numbers 1-255
y = []
(1..255).each { |i| y << i if i.odd? }

# Count greater Than Y
arr = [1, 3, 5, 7]
y = 3
puts arr.count { |elem| elem > y }

# Square the values in array
arr = [1, 5, 10, -2]
puts arr.map! { |elem| elem * elem }

# Eliminate Negative Numbers and replace with 0
arr = [1, 5, 10, -2]
puts arr.each_index { |index| arr[index] = 0 if arr[index] < 0 }

# Max, Min, and Average with hash
arr = [1, 5, 10, -2]
{ max: arr.max, min: arr.min, average: arr.reduce(:+) / arr.length.to_f }

# Shifting the Values in the Array, putting 0 on end
arr = [1, 5, 10, 7, -2]
puts arr.rotate!(1)[arr.length-1] = 0

# Number to String
arr = [-1, -3, 2]
puts arr.each_index { |index| arr[index] = "Dojo" if arr[index] < 0 }
