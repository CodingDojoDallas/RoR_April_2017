#puts will make a new line
#print will continue to all the string to the next line

=begin
    if you want to make a long comment
      all you have to do is put
        begin at the start and end at end of the
        omment
=end

puts "Ruby! " * 2
puts "Chunky" << "Bacon"
puts "Chunky"[2..3]
puts "ruBy".capitalize
puts "".empty?
puts "team".include?("i")



puts "hello"
puts "coding"
puts "dojo"

print "hello _ "
print "coding"
puts "******************"



#this will but whatever you want at the top - run atom to show example
BEGIN {
  puts "this is the begin block"
}

#this will but whatever you want at the bottom - run atom to show example
END {
  puts "this is the end block"
}
