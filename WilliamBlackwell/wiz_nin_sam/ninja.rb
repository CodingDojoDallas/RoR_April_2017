require_relative "human"
require_relative "wizard"
require_relative "samurai"


class Ninja < Human
  def initialize
  	super
  	@stealth = 175

  end

  def steal(obj)
  	puts obj.health
  	if obj.health <= 0 
  		puts "new #{obj.health}"
  		puts "#{obj.class} has died"

    elsif obj.class.ancestors.include?(Human)
		obj.health -= 10
  		puts "#{self.class} stole 10 life from #{obj.class}"
		@health += 10
		# puts obj.health
  	else

  	end	
  end
  def get_away
  	puts @health -= 15
  	self
  end	
end

will = Ninja.new
george = Wizard.new
ashley = Samurai.new
bat = Ninja.new
man = Wizard.new




ashley.death_blow george
ashley.death_blow george






