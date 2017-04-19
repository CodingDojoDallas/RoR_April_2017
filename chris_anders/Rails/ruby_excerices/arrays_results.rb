names = ["Matz", "Guido", "Dojo", "Michael", "Choi"]
numbers = [1, 7, 4, 9, 1, 3, 12, 8]

# .at or .fetch
puts names.at(3)
# will print out Michael
puts names.fetch(4)
# will print out Choi

puts numbers.at(0)
puts numbers.at(1)

# .delete
numbers.delete(1)
# will delete all the number 1 from the numbers array
# puts numbers # uncomment to check if the number 1s were deleted from the array
names.delete("Dojo")

# .reverse
puts names.reverse
puts numbers.reverse

# .length
puts names.length
puts numbers.length

# .sort
puts names.sort
puts numbers.sort

# .slice
puts names.slice!(1)
puts "updated names: "
puts names

# .shuffle
puts numbers.shuffle()

# .join
puts names.join("; ")
# will print out names with ; in between
puts numbers.join(" ")
# will print out numbers with space in between
puts numbers.join
# will print out number with no space or any characters in between
puts numbers.join(names[0])
# you may also join them using other values like one of the elements from the array names

# .insert
names.insert(2, "hi")
# will insert the string "hi" at the 2 index of the array names
names.insert(2, "Awesome")
# this will not replace the value at index 2, but will add it and push the other values to the proceeding indices
puts names

numbers.insert(6, 1, 2, 3)
# you can also inser multiple values at a time.
# remember that the first value is the index on where you want to put the values
# then followed by the value(s) you want to insert
puts numbers

# values_at() -> returns an array with values specified in the param
puts names.values_at(0)
puts names.values_at(1,4)
# you can choose which values you want to get using their index
puts numbers.values_at(0..4)
# you can also choose using range

# using values_at and join
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
puts names.values_at(1,2).join(" is ")
