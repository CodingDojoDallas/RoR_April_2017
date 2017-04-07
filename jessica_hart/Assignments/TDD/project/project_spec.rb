require_relative 'project'
RSpec.describe Project do
  before(:each) do
    @project1 = Project.new('Project 1', 'description 1', 'Jane Doe')
    @project2 = Project.new('Project 2', 'description 2', 'James Deer')
  end
  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
    expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end
  it 'has a getter and setter for owner attribute' do
    @project1.owner = "Changed Name"
    expect(@project1.owner).to eq("Changed Name")
  end
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end
  describe "project tasks" do
    before(:each) do
      @tasks = ['Task 1', 'Task 2']
      @tasks.each { |i| @project1.add_tasks(i) }
    end
    it 'has a method tasks to retrieve all tasks' do
      expect(@project1.tasks).to eq(@tasks)
    end
    it 'has a method print_tasks that prints every task' do
      tasks = @tasks.join("\n") + "\n" # puts has an extra new line
      expect{ @project1.print_tasks }.to output(tasks).to_stdout
    end
  end
end
