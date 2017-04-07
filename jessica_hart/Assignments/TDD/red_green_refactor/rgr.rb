class Project
  attr_accessor :name, :description
  def elevator_pitch
    "#{@name}, #{@description}"
  end
end

=begin ## BEFORE REFACTORING ##
class Project
  attr_accessor :name, :description

  def initialize name, desc
    @name = name
    @description = desc
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end
end
=end
