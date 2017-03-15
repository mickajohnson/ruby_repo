require_relative 'project'
RSpec.describe Project do
  before(:each) do
    @project1 = Project.new('Project 1', 'description 1', 'John Does')
    @project2 = Project.new('Project 2', 'description 2', 'Jane Doe')
  end
  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name"
    expect(@project1.name).to eq("Changed Name")
  end
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end
  it 'has a getter and setter for owner attribute' do
    @project1.owner = "Changed Owner"
    expect(@project1.owner).to eq("Changed Owner")
  end
  it 'has a task getter and add_tasks method' do
    @project1.add_tasks("Clean House")
    expect(@project1.tasks).to include("Clean House")
  end
  it 'has a method print_taks that prints every task in the project' do
      1.upto(2) { |n| @project1.add_tasks("Task # #{n}") }
      expect{ @project1.print_tasks }.to output("Task # 1\nTask # 2\n").to_stdout
    end
end
