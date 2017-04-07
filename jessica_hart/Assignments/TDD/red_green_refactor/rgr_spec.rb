require_relative 'rgr'
RSpec.describe Project do
  before(:each) do
    @project = Project.new
  end
  it "has a getter and setter for name attribute" do
    @project.name = "New Name"
    expect(@project.name).to eq("New Name")
  end
  it "has a getter and setter for the description attribute" do
    @project.description = "New Description"
    expect(@project.description).to eq("New Description")
  end
  it 'has a method elevator_pitch to explain name and description' do
    @project.name = "Name"
    @project.description = "Description"
    expect(@project.elevator_pitch).to eq("Name, Description")
  end
end
