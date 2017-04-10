# ruby
h = {:first_name => "Coding", :last_name => "Dojo"}
h.delete(:last_name)
puts h # => {:first_name => "Coding"}

e = {}
puts "is h empty? #{h.empty?}"
puts "is e empty? #{e.empty?}"

r = {first: "first value", second: "second value", third: "third value"}
puts "does r have key 'first' #{r.has_key?(:first)}"
puts "does r have key 'forth' #{r.has_key?(:forth)}"
puts "does r have value 'first value' #{r.has_value?("first value")}"
puts "does r have value 'forth value' #{r.has_value?("forth value")}"
