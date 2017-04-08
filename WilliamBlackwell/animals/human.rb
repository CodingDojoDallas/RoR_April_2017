require_relative 'mammal'


class Human < Mammal
	def hello
		puts "hello Mammal"
	end	
end
human1 = Human.new	

human1.hello
