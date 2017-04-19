x = (1..5)

puts "Class Name: #{x.class}"

puts "It does include 3!" if x.include? 3

puts "The last number of this range is " + x.last.to_s

puts "The maximum number of this rang is " + x.max.to_s

puts "The minimum number of this range is " + x.min.to_s


#more complicated example
 y = ('a'...'z')
puts y.to_a.shuffle.to_s

puts ("*************")
a = (21..32)

puts "Datable Girls: #{a.class}"

puts "This girl is datable" if a.include? 25

puts "The last number of this range is " + a.last.to_s

puts "The maximum age that is datable is " + a.max.to_s

puts "The minimum age that is dateable is " + a.min.to_s

puts a.to_a.shuffle.to_s
