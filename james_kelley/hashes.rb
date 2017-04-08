h = {:first_name => "Coding", :last_name => "Dojo"} 
h.delete(:last_name)  # => {:first_name => "Coding"}
puts h


if h.has_key? :first_name
	puts "H has key called :first_name"
else
	puts "H does not have key called :first_name"
end



h = {}
if h.empty?
	puts "H contains no key value pairs"
else
	puts "H contains key value pairs"
end



h = {:first_name => "Coding", :last_name => "Dojo"} 
if h.has_key? :last_name
	puts "H has key :last_name"
else 
	puts "Has does not have key :last_name"
end



h = {:first_name => "Coding", :last_name => "Dojo"} 
if h.has_value? "Coding"
	puts "H has value Coding"
else 
	puts "H does not have value Coding"
end




