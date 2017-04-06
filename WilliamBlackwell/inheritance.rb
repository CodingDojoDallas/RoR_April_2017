class Mammal
  def breath  
    puts "Inhale and exhale"
  end

  def calling_eat
  	eat
  end	

  private
  def eat
    puts "Yum yum yum"
  end
end




class Human < Mammal # Human inherits from Mammal
  def subclass_method
    breath
  end
  def another_method
    eat
  end
  def another_eat
  	self.eat
  end	
end
person = Human.new
dolphin = Mammal.new

person.subclass_method
person.calling_eat
dolphin.calling_eat
dolphin.another_method
dolphin.another_eat
		