# # mammal.rb located in same directory:
# class Mammal
#   attr_reader :health
#
#   def initialize
#     @health = 150
#   end
#
#   def display_health
#     puts @health
#     self
#   end
# end

require_relative 'mammal'

class Dog < Mammal

  def pet
    @health += 5
    self
  end

  def walk
    @health -= 1
    self
  end

  def run
    @health -= 10
    self
  end

end

dog = Dog.new
dog.display_health.walk.walk.walk.run.run.pet.display_health
