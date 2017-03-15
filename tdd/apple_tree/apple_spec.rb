require_relative "apple"
RSpec.describe Tree do
  before(:each) do
      @tree = Tree.new 4
    end
  it 'has an age attribute with getter and setter methods' do
    @tree.age = 6
    expect(@tree.age).to be == 6
  end
  it "has a height attribute with a getter method" do
    expect(@tree.height).to be == 10
  end
  it "raises an error if someone attempts to set the height" do
    expect{@tree.height = 25}.to raise_error(NoMethodError)
  end
  it "has a count attribute with a getter method" do
    expect(@tree.count).to be == 0
  end
  it "raises an error if someone attempts to set the count" do
    expect{@tree.count = 25}.to raise_error(NoMethodError)
  end
  it "has a year_gone_by method that adds one year to age" do
    @tree.year_gone_by.year_gone_by
    expect(@tree.age).to be == 6
  end
  it "has a year_gone_by method that increases the height by 10%" do
    @tree.year_gone_by.year_gone_by
    expect(@tree.height).to be == 12.1
  end
  it "has a year_gone_by method that raises it's apple count by two" do
    @tree.year_gone_by.year_gone_by
    expect(@tree.count).to be == 4
  end
  context "has a year_gone_by method that raises it's apple count by two" do
    it "shouldn't grow apples for the first three years of it's life" do
      @tree.age = 0
      @tree.year_gone_by.year_gone_by.year_gone_by
      expect(@tree.count).to be == 0
    end
    it "shouldn't grow apples if it's older than 10" do
      @tree.age = 10
      @tree.year_gone_by.year_gone_by.year_gone_by
      expect(@tree.count).to be == 0
    end
    it "has a method called pick_apples that takes all of the apples off the tree" do
      @tree.year_gone_by.pick_apples
      expect(@tree.count).to be == 0
    end
  end

end
