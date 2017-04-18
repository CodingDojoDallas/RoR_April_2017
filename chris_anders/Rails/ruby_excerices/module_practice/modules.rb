# Challenge: Useful Methods
# Here is a list of useful enumerable methods. Try all of the methods at least once.

# .any? { |obj| block } => true or false
# e.g. ruby ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # => true ```
puts ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # => true ```

# .collect { |obj| block } => returns a new array with the results of running block once for every element in enum
# e.g. ruby (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
puts (1..4).collect { |i| i*i }.to_s # => [1, 4, 9, 16]

# e.g. ruby (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]
puts (1..4).collect { "cat" }.to_s
# .detect/.find => returns the first for which block is not false.
# e.g. ruby (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 }
# e.g. ruby (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }
# .find_all { |obj| block } or .select { |obj| block } => returns an array containing all elements of enum for which block is not false
# e.g. ruby (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]
puts (1..10).find_all {|i| i % 3 == 0 }
# .reject { |obj| block } => opposite of find_all
# e.g. ruby (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]
puts (1..10).reject { |i| i % 3 == 0 }
