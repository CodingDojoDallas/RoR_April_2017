#this is one way to write this statement
x = 5;
y = 10;
z = x+y;

puts z

#it can also be written like this on one line
x = 5; y = 10; z = x+y;
puts z



x = puts "hello world"
puts x        # => nil

#this is one way to write this statement
first_name = "Christopher"
last_name = "Anders"

puts "Your Name is "
puts first_name
puts last_name
#this has 3 lines

puts x        # => nil //this just adds space in the atom runner

#it can also be written like this on one line
first_name = "Christopher"
last_name = "Anders"

puts "Your Name is ", first_name, last_name
puts x        # => nil //this just adds space in the atom runner


#if i wanted it to be all one one line just add a + end betweent them

first_name = "Christopher"
last_name = "Anders"

puts "Your Name is "+ first_name + last_name
#this will only be on one line in atom runner
puts x        # => nil //this just adds space in the atom runner

#this is how you insert a variable string
first_name = "Christopher"
last_name = "Anders"

puts "First name is #{first_name} and last_name is #{last_name}"
puts x        # => nil //this just adds space in the atom runner

#this is other way to do it
first_name = "Christopher"
last_name = "Anders"

puts "First name is %s and last_name is %s" %[first_name, last_name]


#two ways to write this but will get the same result
z = 50
puts "Value of z is %d" %z
puts "value of z is #{z}"



#you have to put the \ in or it will not work correctly
puts "i am 5'7\" tall"

#the \t\ will add a tab
puts "\t\i am 5'7\" tall"


#the \t\ will add a tab and the \n\ will add a new line at that area
puts "\t\i am\n 5'7\" tall"






# %s is for string
# %d is for decimals
# %f is for float
