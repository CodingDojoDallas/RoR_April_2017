a = "coding"
b = "coding"
c = :dojo
d = :dojo
puts a.object_id # => (70366642877120) GENERATES RANDOM NUMBER
puts b.object_id # => (70366642877100) GENERATES RANDOM NUMBER
puts c.object_id # => 405768
puts d.object_id # => 405768

puts("*****************")
a = "coding"
b = "coding"
c = :dojo
d = :dojo
puts a.equal?(b) # => false
puts c.equal?(d) # => true

puts("*****************")
user = {first_name: "Coding", last_name: "Dojo"}
puts user[:first_name] # => "Coding"
puts user[:last_name] # => "Dojo"
