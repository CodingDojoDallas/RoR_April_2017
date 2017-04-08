class Human
	attr_reader :health

	def initialize strength = 3, intelligence = 3, stealth = 3, health = 100
		@strength = strength
		@intelligence = intelligence
		@stealth = stealth
		@health = health
		puts "New"
	end

	def attack object, damage = 10
		object.damage damage if object.class.ancestors.include?(Human)
	end

	def damage damage
		@health -= damage
		die if @health <= 0
	end

	def die
		@health = 0
		puts "#{self.class} dies"
	end

	def show
		puts "#{self.class} - #{get_info}"
	end

	protected
		def get_info
			"Health: #{@health}, Strength: #{@strength}, Intelligence: #{@intelligence}, Stealth: #{@stealth}"
		end
end

bob = Human.new
puts "Bob's health: #{bob.health}"
pete = Human.new
puts "Pete's health: #{pete.health}"
pete.attack bob
puts "Bob's health: #{bob.health}"
puts "Pete's health: #{pete.health}"
puts