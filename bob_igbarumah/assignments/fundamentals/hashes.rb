h = {:first_name => "Coding", :last_name => "Dojo"}
puts h.delete(:last_name)
puts h.empty?
puts h.has_value?("5")

def new_user user = {first_name:"first",last_name:"last"}
  puts "Welcome to our site, #{user[:first_name]} #{user[:last_name]}"
end

our_user = {first_name: "Oscar",last_name: "Vasquez"}
new_user
new_user our_user

#only default
def new_user first_name: "first", last_name: "last"
  puts "Welcome to our site, #{first_name} #{last_name}!"
end
