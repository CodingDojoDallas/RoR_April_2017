=begin
Samurai should have a default health of 200
Samurai should have method called death_blow, which when invoked, attacks an object and decreases its health to 0
Samurai should have a method called meditate, which when invoked, heals the Samurai back to full health
Samurai should have a class method called how_many, which when invoked, displays how many Samurai's there are
=end
require_relative 'human'

class Samurai < Human
  @@samurai_amount = 0

  def initialize
    super
    @health = 200
    @@samurai_amount += 1
  end

  def death_blow(target)
    if target.class.ancestors.include?(Human)
      target.health = 0
    end
    self
  end

  def meditate
    @health = 200
    self
  end

  def how_many
    @@samurai_amount
  end
end

samurai1 = Samurai.new
samurai2 = Samurai.new.death_blow(samurai1)
puts samurai1.health
samurai1.meditate
puts samurai1.how_many
puts samurai1.health
