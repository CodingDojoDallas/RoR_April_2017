=begin
Try the following methods at least once:
.at or .fetch .delete .reverse .length .sort .slice .shuffle .join .insert values_at()
e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
=end

alph_arr = ["Matz", "Guido", "Choi", "John", "Kate"]
num_arr = [1, 3, 5, 8, 5, 9, 0]
arr = [4, "Mario", 9, "Leo", 4]

# .at and .fetch
puts "alph_arr at 0: #{alph_arr.at(0)}"
puts "num_arr fetched at 1: #{num_arr.fetch(1)}"

# .delete
arr.delete(4)
puts "Delete 4's in arr: #{arr}"

# .reverse
puts "Reversed num_arr: #{num_arr.reverse}"

# .length
puts "Length of arr: #{arr.length}"

# .sort
puts "Sorted num_arr: #{num_arr.sort}"

# .slice: slice!(index), slice!(start, length), slice!(range)
num_arr.slice!(1..3)
puts "Sliced num_arr: #{num_arr}"

# .shuffle and .join
puts "Shuffled and joined alph_arr: " + alph_arr.shuffle.join(" ")

# .insert
arr.insert(2, "Apple", "Pear")
puts "Inserted into arr: #{arr}"

# values_at()
vals = %w{Cat Dog Bear}  # Alternative way to create array
puts "Values at an index in vals: " + vals.values_at(1,2).join(' and ')
