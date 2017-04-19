# .delete(key) => deletes and returns a value associated with the key
# e.g. h = {:first_name => "Coding", :last_name => "Dojo"}; h.delete(:last_name); print h      #=> [:first_name, "Coding"]
y = {:first_name => "Chris", :last_name => "Anders"}
puts "Y is ", y
puts y.delete(:first_name)
puts "Y is ", y


puts("************")
# .empty? => returns true if hash contains no key-value pairs
puts y.empty? #=> false
y.delete(:last_name)
puts y.empty? #=> true


puts("************")
# .has_key?(key) => true or false
z = {"Chris" => 25, "Marcus" => 23}
puts z.has_key?("Chris") #=> true
puts z.has_key?("Justin") #=> false

puts("************")
# .has_value?(value) => true or false
puts z.has_value?(50) #=> false
puts z.has_value?(25) #=> true
