require_relative "human"

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

  def fireball(obj)
  	if obj.class.ancestors.include?(Human)
      obj.health -= 10
    end  
  end	
end