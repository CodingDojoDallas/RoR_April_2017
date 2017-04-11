class Mammal
	def initialize
		puts "I am alive"
		self
	end
	def breath
		puts "inhale and exhale"
		self
	end
	def who_am_i
		puts self
		self
	end
end	

Dolphin = Mammal.new.who_am_i.breath

Dolphin.who_am_i
Dolphin.breath

		