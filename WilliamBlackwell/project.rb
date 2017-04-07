class Project
  # your code here
  attr_reader :project_name,:Project_description

  def initialize(name,description)
  	@project_name = name
  	@Project_description = description
  end
  def elevator_pitch
  	puts "#{@project_name}, #{@Project_description}"	
  end	
end


project1 = Project.new("Project 1", "Description 1")
project2 = Project.new("Science", "algorithms in nature")
puts project1.project_name
project1.elevator_pitch 
puts project2.project_name
project2.elevator_pitch 
		