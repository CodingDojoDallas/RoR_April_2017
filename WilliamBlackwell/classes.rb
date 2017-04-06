class User
	attr_accessor :first,:last
	def initialize(f,l)
		@first = f
		@last = l
end
Will = User.new("William","Blackwell")	
puts Will.first
puts Will.last
puts Will.inspect
end