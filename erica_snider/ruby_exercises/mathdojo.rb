class MathDojo
  # your code here
  attr_accessor :result
  def initialize
    @result = 0
  end
  def add(*arguments)
    @result += arguments.flatten.reduce(0,:+)
    self
  end
  def subtract(*arguments)
    @result -= arguments.flatten.reduce(0,:+)
    self
  end
  def result
    puts @result
  end
end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15


####################################################################################
# PLATFORM SOLUTION ################################################################
####################################################################################
class MathDojo
  attr_reader :answer   # use attr_reader when you are only setting the value within the class. getter/setter matters when dealing with the variable *outside* of the function
                        # attr_reader will have issues with self.; use attr_accessor when using self. 
  def initialize
    @answer = 0
  end

  def add(*numbers)
    @answer += numbers.flatten.reduce(0, :+)
    self
  end

  def subtract(*numbers)
    @answer -= numbers.flatten.reduce(0, :+)
    self
  end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).answer
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).answer
puts challenge1
puts challenge2
####################################################################################
####################################################################################
####################################################################################
