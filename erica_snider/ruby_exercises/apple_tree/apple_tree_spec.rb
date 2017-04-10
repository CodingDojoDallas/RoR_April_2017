require_relative 'apple_tree'

RSpec.describe AppleTree do

  before(:each) do
    @tree = AppleTree.new
  end

  it 'has an age attribute with getter and setter methods' do
    @tree.age = 7
    expect(@tree.age).to eq(7)
  end

  it 'has a height attribute with only a getter method' do
    expect(@tree.height).to eq(5)
    expect{@tree.height = -1}.to raise_error(NoMethodError)
  end

  it 'has an apple count attribute with only a getter method' do
    expect(@tree.count).to eq(0)
    expect{@tree.count = -1}.to raise_error(NoMethodError)
  end

  describe 'year_gone_by functionality' do

    it 'has method year_gone_by to add one year to age attribute' do
      @tree.year_gone_by
      expect(@tree.age).to eq(1)
    end

    it 'has method year_gone_by to increase the height by 10% of the current height' do
      @tree.year_gone_by
      expect(@tree.height).to eq(5.5)
    end

    it "has method year_gone_by to not raise count for the first three years of it's life" do
      @tree.age = 2
      @tree.year_gone_by
      expect(@tree.count).to eq(0)
    end

    it "has method year_gone_by to raise it's apple count by two after three years old and before ten years old" do
      @tree.age = 5
      @tree.year_gone_by
      expect(@tree.count).to eq(2)
    end

    it "has method year_gone_by to not raise count if it's older than ten" do
      @tree.age = 11
      @tree.year_gone_by
      expect(@tree.count).to eq(0)
    end

  end

end

####################################################################################
# PLATFORM SOLUTION ################################################################
####################################################################################
require_relative "apple_tree"

RSpec.describe AppleTree do
  before(:each) do
    @tree = AppleTree.new
  end

  it "should have an age attribute with getter and setter methods" do
    @tree.age = 100
    expect(@tree.age).to eq(100)
  end

  it "should have a getter for the height attribute" do
    expect(@tree.height).to eq(10)
  end

  it "should raise a NeMethodError when setting the height attribute" do
    expect{ @tree.height = 1 }.to raise_error(NoMethodError)
  end

  it "should have a getter for the apple_count attribute" do
    expect(@tree.apple_count).to eq(0)
  end

  it "should raise a NeMethodError when setting the apple_count attribute" do
    expect{ @tree.apple_count = 1 }.to raise_error(NoMethodError)
  end

  context "should have a method year_gone_by" do
    before(:each) do
      @tree.year_gone_by
    end

    it "adds one year to the age attribute" do
      expect(@tree.age).to eq(1)
    end

    it "increases the height by 10% of it's current height" do
      expect(@tree.height).to eq(11)
    end

    context "increases the apple count by 2 within a range" do
      it "should not increase if the age is less than or equal to 3" do
        # current age is 3 since the before(:each) in the parent context
        2.times { @tree.year_gone_by }
        expect(@tree.apple_count).to eq(0)
      end

      it "should increase if the age is between 4 and 10" do
        # current age is 5 since the before(:each) in the parent context
        4.times { @tree.year_gone_by }
        expect(@tree.apple_count).to eq(4)
      end

      it "shound not increase if the age is greater than 10" do
        # current age is 11 since the before(:each) in the parent context
        10.times { @tree.year_gone_by }
        expect(@tree.apple_count).to eq(14)
      end
    end

    it "should have a method called pick_apples that takes all apples of the tree" do
      @tree.pick_apples
      expect(@tree.apple_count).to eq(0)
    end
  end
end
####################################################################################
####################################################################################
####################################################################################
