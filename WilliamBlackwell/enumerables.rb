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

[1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40


module Printer
  def print_each_elemental
    for i in 0...self.length
      puts self[i]
    end
  end
end

class Array
  include Printer
end
class String
  include Printer
end

[1,2,3].print_each_elemental
["hello","hi","whats up?"].print_each_elemental
"hello".print_each_elemental