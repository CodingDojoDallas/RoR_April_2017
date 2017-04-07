class Project
	attr_reader :name, :description

	def initialize (name, description)
		@project_name = name
		@project_description = description
	end

	def elevator_pitch
		"#{@project_name}, #{@project_description}"
	end
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name # => "Project 1"
puts project1.elevator_pitch  # => "Project 1, Description 1"