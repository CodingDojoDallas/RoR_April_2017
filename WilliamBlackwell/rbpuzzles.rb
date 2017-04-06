y = {"first_name" => "William", "last_name" => "Blackwell"}
puts y["first_name"], y["last_name"]
puts "your name is William" if y["first_name"].eql? 'William'

puts "Deleting first name"
y.delete "first_name"

if y.has_key? "first_name" 
	puts "has first name"	
end	
if y.has_value? "Blackwell"
	puts "nice last name"
else
	puts "no last name"
end		
puts y["first_name"], y["last_name"]



def new_user user = {first_name: "William", last_name: "Blackwell"}
  puts "Welcome to our site, #{user[:first_name]} #{user[:last_name]}!"
end
our_user = {first_name: 'Oscar', last_name: "Vazquez"}
new_user # => "Welcome to our site, first last!"
new_user our_user



