=begin
Wizard should have a default health of 50 and intelligence of 25
Wizard should have a method called heal, which when invoked, heals the Wizard by 10
Wizard should have a method called fireball, which when invoked, decrease the health of whichever object it attacked by 20
=end
require_relative 'human'

class Wizard < Human
  def initialize
    super
    @health = 50
    @intelligence = 25
  end

  def heal
    @health += 10
    self
  end

  def fireball(target)
    if target.class.ancestors.include?(Wizard)
      target.health -= 20
    end
    self
  end
end

wizard1 = Wizard.new
wizard2 = Wizard.new.fireball(wizard2)
puts wizard1.health
puts wizard1.heal.health
