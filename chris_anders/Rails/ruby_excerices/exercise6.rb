def hello_world
  puts "hello world"
end
hello_world


#Input
def say_hello name1, name2
  puts "hello, #{name1} and #{name2}"
end
say_hello "oscar", "eduardo" # => "hello, oscar and eduardo"

=begin
Default Parameters
When we want to add default values for our parameters, we can use the syntax below:
=end

def say_hello name1="oscar", name2="shane"
  puts "hello, #{name1} and #{name2}"
end
say_hello "oscar"    # => "hello, oscar and shane"


=begin
Output
Default Return
In Ruby, we don't always need to specify what we are returning with the return keyword. By default, Ruby will return whatever was evaluated last. Remember that the puts method returns nil, so let's change our example a little.
=end

def say_hello name1="oscar", name2="shane"
  "hello, #{name1} and #{name2}"
end
puts say_hello "oscar", "eduardo"   # => "hello, oscar and eduardo"


=begin
Regular Return Statements
However, if we need to escape a function early, the return behaves normally.
=end

def say_hello name1, name2
  if name1.empty? or name2.empty?
    return "Who are you?!"
  end
  # Doesn't reach the last line because we used return
  "hello, #{name1} and #{name2}"
end
puts say_hello "", ""
