class Project
  # your code here
  attr_accessor :name, :description, :owner, :tasks

  def initialize(name, description, owner)
    @name = name
    @description = description
    @owner = owner
    @tasks = []
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end

  # def tasks
  #   @tasks
  # end

  def add_tasks(new_task)
    @tasks.push(new_task)
  end

  def print_tasks
    @tasks.each { |i| puts i }
  end
end
# project1 = Project.new("Project 1", "Description 1")
# puts project1.name # => "Project 1"
# project1.elevator_pitch  # => "Project 1, Description 1"



####################################################################################
# PLATFORM SOLUTION for TDD ########################################################
####################################################################################
# class Project
#   attr_accessor :name, :description, :owner
#   attr_reader :tasks
#   def initialize name, description, owner
#     @name = name
#     @description = description
#     @owner = owner
#     @tasks = []
#   end
#
#   def elevator_pitch
#     "#{@name}, #{@description}"
#   end
#
#   def print_tasks
#     @tasks.each { |elem| puts elem }
#   end
#
#   def add_tasks task
#     @tasks << task
#   end
# end
####################################################################################
####################################################################################
####################################################################################



####################################################################################
# PLATFORM SOLUTION ################################################################
####################################################################################
# class Project
#   attr_reader :name, :description
#
#   def initialize(name, description)
#     @name = name
#     @description = description
#   end
#
#   def elevator_pitch
#     "#{@name}, #{@description}"
#   end
# end
#
# project1 = Project.new("Project 1", "Description 1")
# puts project1.name
# puts project1.elevator_pitch
####################################################################################
####################################################################################
####################################################################################
