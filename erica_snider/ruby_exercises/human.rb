class Human
  attr_accessor :strength, :intelligence, :health, :stealth
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack(obj)
    # check if the attacked object's class is Human or inherits from the Human class
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      # remember that we don't need to write "return" in ruby
      # stating true below will automatically return the boolean true
      true
    else
      false
    end
  end

  def show_info
    "strength: #{strength}; intelligence: #{intelligence}; stealth: #{stealth}; health: #{health}"
  end
end

class Wizard < Human
  def initialize
    super
    @intelligence = 25
    @health = 50
  end

  def heal
    @health += 10
  end

  def fireball(attacked)
    attacked.health -= 20
  end
end

class Ninja < Human
  def initialize
    super
    @stealth = 175
  end

  def steal(obj)
    attack(obj)
    @health += 10
  end

  def get_away
    @health -= 15
  end
end

class Samurai < Human
  @@number_of_samurais = 0
  def initialize
    super
    @health = 200
    @@number_of_samurais += 1
  end

  def death_blow(obj)
    obj.health = 0

  end

  def meditate
    @health = 200
  end

  def self.how_many
    @@number_of_samurais
  end
end


wizard = Wizard.new
ninja = Ninja.new
samurai = Samurai.new

puts
puts 'wizard:  ' + wizard.show_info
puts 'ninja:   ' + ninja.show_info
puts 'samurai: ' + samurai.show_info
# puts 'number of samurai: ' + samurai.number_of_samurais     #############

samurai.death_blow(wizard)

puts
puts 'wizard:  ' + wizard.show_info
puts 'ninja:   ' + ninja.show_info
puts 'samurai: ' + samurai.show_info
puts



####################################################################################
# PLATFORM SOLUTION ################################################################
####################################################################################
class Human
  attr_accessor :strength, :intelligence, :stealth, :health
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      true
    else
      false
    end
  end
end

# require_relative "human"
class Wizard < Human
  def initialize
    super
    @health = 50
    @intelligence = 25
  end

  def heal
    @health += 10
  end

  def fireball(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      true
    else
      false
    end
  end
end

# require_relative "human"
class Ninja < Human
  def initialize
    super
    @stealh = 175
  end

  def steal(victim)
    attack(victim)
    @health += 10
  end

  def get_away
    @health -= 15
  end
end

# require_relative "human"
class Samurai < Human
  @@count = 0

  def initialize
    super
    @health = 200
    @@count += 1
  end

  def death_blow                                           # why does this return true or false?
    if obj.class.ancestors.include?(Human)
      obj.health = 0
      true
    else
      false
    end
  end

  def meditate
    @health = 200
  end

  def self.count
    @@count
  end
end
####################################################################################
####################################################################################
####################################################################################
