require_relative 'apple_tree'
RSpec.describe AppleTree do
  before(:each) do
    @tree = AppleTree.new
  end
  it 'should have an age attribute with getter and setter methods' do
    @tree.age = 25
    expect(@tree.age).to eq(25)
  end
  it 'should have a height attribute with only a getter method' do
    height = @tree.height
    expect{@tree.height = height}.to raise_error(NoMethodError)
  end
  it 'should have an apple count attribute with only a getter method' do
    apple_count = @tree.apple_count
    expect{@tree.apple_count = apple_count}.to raise_error(NoMethodError)
  end
  it 'should have a method called pick_apples that takes all of the apples off the tree' do
    @tree.age = 5
    @tree.year_gone_bye
    @tree.pick_apples
    expect(@tree.apple_count).to eq(0)
  end
  context 'method called year_gone_bye' do
    before(:each) do
      @tree = AppleTree.new
    end
    it 'should add one year to the age attribute' do
      age = 5
      @tree.age = age
      @tree.year_gone_bye
      expect(@tree.age).to eq(age + 1)
    end
    it 'should increase height by 10% of current height' do
      height = @tree.height
      @tree.year_gone_bye
      expect(@tree.height).to eq(height + height * 0.1)
    end
    it 'should raise apple count by two' do
      @tree.age = 5
      apple_count = @tree.apple_count
      @tree.year_gone_bye
      expect(@tree.apple_count).to eq(apple_count + 2)
    end
    it 'should not grow apples for the first three years' do
      @tree.age = 1
      apple_count = @tree.apple_count
      @tree.year_gone_bye
      expect(@tree.apple_count).to eq(apple_count)
    end
    it 'should not grow apples if older than ten' do
      @tree.age = 10
      apple_count = @tree.apple_count
      @tree.year_gone_bye
      expect(@tree.apple_count).to eq(apple_count)
    end
  end
end
