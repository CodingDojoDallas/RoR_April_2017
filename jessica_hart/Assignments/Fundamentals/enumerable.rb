=begin
Build a simple version of the Enumerable module.
The most important method in the Enumerable module is the each method.
Once the each method is implemented, use that method to implement all of the other methods in the module
=end

module MyEnumerable
  def my_each
    for i in 0...self.length
      yield(self[i])
    end
  end
end
class Array
   include MyEnumerable
end
class String
  include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40
