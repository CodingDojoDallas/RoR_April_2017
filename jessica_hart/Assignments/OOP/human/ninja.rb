=begin
Ninja should have a default stealth of 175
Ninja should have a steal method which, when invoked, attacks an object and increases the Ninjas health by 10
Ninja should have a get_away method which, when invoked, decreases its health by 15
=end
require_relative 'human'

class Ninja < Human
  def initialize
    super
    @stealth = 175
  end

  def steal(target)
    attack(target)
    @health += 10
    self
  end

  def get_away
    @health -= 15
    self
  end
end

ninja1 = Ninja.new
ninja2 = Ninja.new.steal(ninja1)
ninja1.get_away
puts ninja1.health
