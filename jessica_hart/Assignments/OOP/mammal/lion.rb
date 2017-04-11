=begin
Create another class called Lion that inherits from Mammal. Hint: super
- Have the default health be 170
- Add a new method called fly, which when invoked, decreases the health by 10.
- Add a new method called attack_town, which when invoked, decreases the health by 50.
- Add a new method called eat_humans, which when invoked, increases the health by 20.
Have the Lion attack_town three times, eat_humans twice, fly twice, and have it display its health.
When the Lion's display_health method is called have it say 'This is a lion` before it displays
the default information (make sure you still call the parent's display_health function).
=end
require_relative 'mammal'

class Lion < Mammal       # Inherit from the mammal class
  def initialize
    @health = super + 20  # Adds to mammal's initialized health
  end

  def fly
    @health -= 10
    self
  end

  def attack_town
    @health -= 50
    self
  end

  def eat_humans
    @health += 20
    self
  end

  def display_health
    print "This is a lion "
    super                 # Display original health output after
  end
end

Lion.new.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
