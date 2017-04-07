require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do  
	before(:each) do 
		@project1 = Project.new('Project 1', 'description 1') # create a new project and make sure we can set the name attribute
	end
	it 'has a getter and setter for name attribute' do
		@project1.name = "Changed Name" # this line would fail if our class did not have a setter method
		expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
	end 
end