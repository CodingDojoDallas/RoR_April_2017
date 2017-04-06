require_relative "human"

class Samurai 
  def initialize
  	super
  	@health = 200
  end	

  def death_blow(obj)
  	puts obj.health
  	if obj.health <= 0 
  		puts "new #{obj.health}"
  		puts "#{obj.class} has died"

    elsif obj.class.ancestors.include?(Human)
		obj.health -= 100
  		puts "#{self.class} has delivered a Death Blow to #{obj.class}"
		@health += 10
		# puts obj.health
  	else

  	end		  	
  end

  def meditate
  	@health = 200
  	self
  end
	
end

william = Samurai.new
