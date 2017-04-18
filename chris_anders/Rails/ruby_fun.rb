arr = ["I", "code", "therefore", "I", "am"]
for i in 0...arr.count
  puts arr[i]
end

puts ("***********")
print("songs about jane")
puts ("****************")

3.times { puts "WOW" }

24.class    # => Fixnum
true.class  # => TrueClass
nil.class   # => NilClass

"string".reverse # => "gnirts"
23.odd?          # => true
"abc".upcase     # => "ABC"

24 + 8    # => 32
24.send(:+, 8)  # => 32
24.+ (8)        # => 32
24 + 8          # => 32
