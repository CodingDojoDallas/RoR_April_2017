=begin
The human class should have 4 attributes: strength, intelligence, stealth, and health.
Give the human a default value of 3 for strength, stealth and intelligence.
Health should have a default value of 100.
Add a new method called attack, which when invoked, should attack another object
(i.e., decrease its health) if the object it is attacking inherits from the Human class.
=end

class Human
  attr_accessor :strength, :intelligence, :stealth, :health

  def initialize
    @strength = @intelligence = @stealth = 3
    @health = 100
  end

  def attack(obj)
      if obj.class.ancestors.include?(Human)
        obj.health -= 20
      else
        raise "This is not human."
      end
  end
end

# samurai = Human.new
# ranger = Human.new
# samurai.attack(ranger)
# puts ranger.health
