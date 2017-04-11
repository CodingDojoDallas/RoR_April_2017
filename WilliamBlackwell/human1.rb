class Human
	attr_accessor :strength,:stealth,:intelligence,:health
	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end	
	def attack(player) 
		if player.class.ancestors.include?(Human)
			player.health -= 10	
		else
			puts "nothing to attack"
		end	
	end	
	def show
		puts "health is now #{@health}"
	end	
end	
will = Human.new
george = Human.new
 
will.attack george

george.show




