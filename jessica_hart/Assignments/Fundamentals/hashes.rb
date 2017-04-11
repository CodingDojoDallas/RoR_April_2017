=begin
Try the following methods:
.delete(key) => deletes and returns a value associated with the key
.empty? => returns true if hash contains no key-value pairs
.has_key?(key) => true or false
.has_value?(value) => true or false
=end

def new_user greeting="Welcome", first_name: "first", last_name: "last"
    puts "#{greeting}, #{first_name} #{last_name}"
end

user = {first_name: "Lance", last_name: "Avalon"}
user2 = {first_name: "Arty", last_name: "Camelot"}
user3 = {}

new_user "Greetings", user

puts user3.empty?
puts user.delete :last_name
puts user.has_key? :last_name
puts user.has_value? "Lance"
