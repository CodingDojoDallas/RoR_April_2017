def new_user greeting="Welcome", first_name: "first", last_name: "last"
    puts "#{greeting}, #{first_name} #{last_name}"      
end
our_user = {first_name: "Henry", last_name: "Wildt"}
new_user                  # => Welcome, first last
new_user "Hello", our_user # => Hello, Oscar Vazquez