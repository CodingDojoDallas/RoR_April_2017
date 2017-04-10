
### OLD. SEE OTHER FILE.

# Print 1-255
# for i in 1..255
#   puts i
# end

# Print odd numbers between 1-255
# for i in 1..255
#   puts i unless i.even?
# end

# Print sum
# sum = 0
# for i in 1..255
#   sum = sum + i
#   puts "The number is #{i} and the sum is #{sum}."
# end

# Iterating through an array  --- WRONG
# def iterate_array array_X
#   # for i in array_X
#   #   puts "array value #{array_X[i]}"
#   # end
#   array_X.each { |i| puts "array value #{array_X[i]}" }
# end
#
# iterate_array([1,3,5,7,9,13])

# Find max
# def arr_max arr
#   arr.max
# end
#
# arr = [-3, -5, -7]
# puts arr_max(arr)

# Get average
def arr_avg arr
  for i in arr
    arr.inject { |sum, i| sum + arr[i] }
  end
end

arr = [-3, -5, -7]
puts arr_avg(arr)

# Array with odd numbers


# Greater than Y


# Squre the values


# Eliminate negative numbers


# Max, min, and average


# Shifting the values in the array


# Number to string
