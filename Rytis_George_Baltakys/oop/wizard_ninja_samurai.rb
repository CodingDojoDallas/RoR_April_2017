require_relative 'human'

class Wizard < Human
	def initialize
		super
		@health = 50
		@intelligence = 25
		show
	end

	def heal
		puts "#{self.class} healed herself by 10"
		@health += 10
		show
	end

	def fireball object
		puts "#{self.class} threw a fireball at #{object.class}"
		attack object, 20
		object.show
	end
end

class Ninja < Human
	def initialize
		super
		@stealth = 175
		show
	end

	def steal object
		puts "#{self.class} stole health from #{object.class}"
		attack object, 10
		@health += 10
		object.show
		show
	end

	def get_away
		@health -= 15
	end
end

class Samurai < Human
	def initialize
		super
		@health = 200
		show
	end

	def death_blow object
		puts "#{self.class} dealt a death blow to #{object.class}"
		object.die if object.class.ancestors.include?(Human)
		object.show
	end

	def meditate
		puts "#{self.class} meditates and heals himself fully"
		@health = 200
		show
	end
end

puts
w = Wizard.new
n = Ninja.new
w.fireball n
n.steal(w)
w.heal
s = Samurai.new
w.fireball s
n.steal s
s.death_blow w
s.death_blow n
s.meditate