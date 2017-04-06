=begin
Try the following methods:
.include?(value) => true or false
.last => returns the last object in range
.max => returns the maximum value in range
.min => returns the minimum value in range
=end

name = "Lancelot"
arr = %w{Arthur Mordred Guinevere}

puts name.include?("ance")
puts arr.last
puts arr.max
puts arr.min

puts (1...10).include?(10)
puts (1..10).include?(10)
puts (1..10).last
puts (1..10).last(3).to_s
puts (1..10).max
puts (1..10).min
