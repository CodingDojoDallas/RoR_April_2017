# a comment

=begin
  long comment
  more comment
=end

puts "hello"
puts "Coding"
puts "Dojo"

# print "hello"
# print "Coding"
# print "Dojo"


BEGIN {
  puts "this is in the begin block"
}

END {
  puts "this is in the end block"
}


x = print "hello world"
puts x        # => nil

puts "she is 5'10\" tall"


puts "hello1" unless 0
puts "hello2" unless ""
puts "hello3" unless nil
puts "hello4" if false
puts "hello5" if []
