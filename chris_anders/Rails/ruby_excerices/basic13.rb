# Print 1-255
(1..255).each {|i| puts i}

# Print odd numbers between 1-255
puts (1..255).find_all {|i| i.odd?}

# Print Sum
sum = 0
(1..255).each {|i| puts "New number: #{i} Sum: #{sum+=i}"}
#
Iterating through an array
x = [1,3,5,7,9,13]
puts x #or use .each

# Find Max
y = [-3, -5, -7]
puts y.max
#
Get Average
z = [2, 10, 3]
puts z.reduce(:+) / z.length


# Array with Odd Numbers
puts y = (1..255).find_all {|i| i % 2 == 1}

# Greater Than y
array = [1, 3, 5, 7]
y = 3
puts array.find_all {|i| i > y}.length

# Square the values
x = [1, 5, 10, -2]
x = x.map {|i| i*i}
puts x

# Eliminate Negative Numbers
x = [1, 5, 10, -2]
x = x.map {|i| if i<0 then i=0 else i end}
puts x

# Max, Min, and Average
x = [1, 5, 10, -2]
puts x.max
puts x.min
puts x.reduce(:+) / x.length.to_f

# Shifting the values in the array
x = [1, 5, 10, 7, -2]
index = 0
x.each {x[index] = x[index+=1]}
x[x.length-1] = 0
puts x

# Number to strings
x = [-1, -3, 2]
x = x.map {|i| if i<0 then i='Dojo' else i end}
puts x


# # Useful methods:
# # .reduce
# # .times
