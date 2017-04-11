arr = [12,33,15,21,7,9]

puts arr.include?(33)
puts arr.include?(35)

puts arr.last

# arr1 = ["array", "of", "strings"]
arr1 = %w[array of strings]
puts arr1.max(1)
puts arr1.max { |a, b| a.length <=> b.length }


# puts arr.min(2) #{ |a, b| a.length <=> b.length }


# check Ruby version if errors with max(n) and min(n) 
