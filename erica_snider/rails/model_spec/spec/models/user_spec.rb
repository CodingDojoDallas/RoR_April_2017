require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# endded

RSpec.describe User do

  context "With valid attibutes" do
    it "should save" do
      user = User.new(
        first_name: 'senor',
        last_name: 'chang',
        email: 'schang@codingdojo.com'
      )
      expect(user).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if the first_name field is blank" do
      user = User.new(
        first_name: '',
        last_name: 'chang',
        email: 'schang@codingdojo.com'
      )
      expect(user).to be_invalid
    end

    it "should not save if last_name field is blank" do
      user = User.new(
        first_name: 'senor',
        last_name: '',
        email: 'schang@codingdojo.com'
      )
      expect(user).to be_invalid
    end

    it "should not save if email already exists" do
      User.create(
        first_name: 'another',
        last_name: 'chang',
        email: 'schang@codingdojo.com'
      )
      user = User.new(
        first_name: 'senor',
        last_name: 'chang',
        email: 'schang@codingdojo.com'
      )
      expect(user).to be_invalid
    end

    it "should not save if invalid email format" do
      user = User.new(
        first_name: '',
        last_name: 'chang',
        email: 'SenorChang'
      )
      expect(user).to be_invalid
    end
  end

end
