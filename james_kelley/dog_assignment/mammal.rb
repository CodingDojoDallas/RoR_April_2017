class Mammal
	
	def initialize
		@health = 150
	end
	
	def display_health
		"Health: #{@health}"
	end
end

m = Mammal.new
puts m.display_health
