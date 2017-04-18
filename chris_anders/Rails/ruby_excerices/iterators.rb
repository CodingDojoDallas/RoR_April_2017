=begin
.any? { |obj| block } => true or false
e.g. ruby ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # => true
=end

puts %w[ant bear cat].any? { |word| word.length >= 3 } #=> true
puts %w[ant bear cat].any? { |word| word.length >= 4 } #=> true
puts [nil, true, 99].any?                              #=> true

puts %w["mark", "chris", "mike", "tony"].any? {|word| word.length >= 21}
puts ["me","mark"].any?


puts("*************************")
=begin
.each => calls block once for each element in ruby self, passing that element as a block parameter.
e.g. ruby ["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--
=end
puts ["ant", "bear", "cat"].each { |word| print word, "--" }.to_s


puts("**********************")

=begin
.collect { |obj| block } => returns a new array with the results of running block once for every element in enum
e.g. ruby (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
=end
puts (1..4).collect { |i| i*i } # => [1, 4, 9, 16]

puts("**********************")

=begin
e.g. ruby (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]
.detect/.find => returns the first for which block is not false.
=end
puts (1..4).collect { "cat" }

puts("*******************")


# e.g. ruby (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 }

# e.g. ruby (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }

# .find_all { |obj| block } or .select { |obj| block } => returns an array containing all elements of enum for which block is not false
# e.g. ruby (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]

puts (1..10).find_all { |i| i % 3 == 0 }.to_s

# .reject { |obj| block } => opposite of find_all
# e.g. ruby (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]
puts (1..10).reject { |i| i % 3 == 0 }.to_s

# .upto(limit) => iterates block up to the int number
# e.g. ruby 5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10
puts 5.upto(10) { |i| print i, " " }
