# Try the following methods at least once either on a separate Ruby file or on irb.
#
# .at or .fetch .delete .reverse .length .sort .slice .shuffle .join .insert values_at() -> returns an array with values specified in the param
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"

arr = %w(this is an array)
arr1 = [1,2,3,4,5,6,7]
arr2 = ["hello", "Coding", "Dojo", "ninjas"]

# puts arr2.at(1)
# puts arr2.fetch(1)
# puts arr1
# puts arr1.delete(5){ "not found" }
# puts arr1
# puts arr1.delete(9){ "not found" }
# puts arr1

# puts arr.reverse
# puts arr
# puts arr.reverse!
# puts arr

# puts arr1.length

# puts arr2.sort
# puts arr2
# puts arr2.sort!
# puts arr2

# puts arr1[0...4]
# puts arr1
# puts 'the slice:'
# puts arr1.slice!(0...4)
# puts 'arr1 after the slice:'
# puts arr1

# puts arr1[2,3]
# puts arr1
# puts 'the slice:'
# puts arr1.slice!(2,3)
# puts 'arr1 after the slice:'
# puts arr1

# puts arr1.shuffle
# puts arr1
# puts arr1.shuffle!
# puts arr1

# puts arr1.join
# puts arr1
# puts arr1 = arr1.join
# puts arr1

# puts arr1.insert(4,'this is the fourth index')
# puts arr1

puts arr11 = arr1.values_at(3..5)
puts arr1
puts arr11

# a = %w{cat dog bear}
# puts a.values_at(1,2).join(' and ') #=> "dog and bear"
