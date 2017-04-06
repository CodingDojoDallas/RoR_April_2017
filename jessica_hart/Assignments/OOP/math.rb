# Create a MathDojo class that will allow you to add and subtract numbers.
# Create two methods: add and subtract. These two functions should take at least 1 argument.
# Modify the methods so that arrays can also be passed as arguments.

class MathDojo
  attr_reader :result

  def initialize
    @result = 0
  end

  def add(*num)
    @result += num.flatten.reduce(0, :+)
    self
  end

  def subtract(*num)
    @result -= num.flatten.reduce(0, :+)
    self
  end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
puts challenge1
puts challenge2
